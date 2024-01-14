-- Month Over Month
/*"Month over Month" (MoM) é uma métrica usada para analisar o desempenho de uma métrica específica de um mês em relação ao mês anterior. Essa comparação ajuda a identificar tendências e variações ao longo do tempo, especialmente em contextos financeiros, de negócios ou econômicos.

A fórmula básica para calcular a variação MoM é a seguinte:

variação MoM = (valor_atual - valor_anterior) / valor_anterior

Aqui estão alguns pontos-chave sobre a análise MoM:

Identificação de Tendências: A análise MoM é frequentemente usada para identificar tendências de crescimento ou declínio em métricas específicas ao longo do tempo. Se a variação MoM for positiva, isso sugere um aumento em relação ao mês anterior. Se for negativa, indica uma diminuição.

Padrão Sazonal: Ao observar a variação MoM, é possível identificar padrões sazonais, como picos ou quedas recorrentes em certos meses. Isso é particularmente útil em setores que são influenciados por fatores sazonais, como varejo, turismo ou agricultura.

Avaliação de Desempenho: Empresas frequentemente usam análises MoM para avaliar o desempenho mensal de suas métricas-chave. Isso pode incluir receitas, vendas, lucros, entre outros.

Comparação Rápida: A variação MoM oferece uma maneira rápida de comparar o desempenho entre meses consecutivos. Essa abordagem é útil para destacar mudanças significativas em curtos períodos.

Condições Econômicas: Em contextos econômicos mais amplos, a análise MoM pode ser aplicada a indicadores econômicos, como produção industrial, emprego ou consumo, para avaliar a saúde geral de uma economia.

Utilização em Diversos Setores: A análise MoM é aplicável a uma variedade de setores, incluindo finanças, marketing, produção e muito mais. Qualquer métrica que varie mensalmente pode ser avaliada usando essa abordagem.

Lembre-se de que, ao analisar variações MoM, é crucial considerar o contexto específico do setor ou métrica em questão, pois diferentes setores podem ter padrões sazonais distintos.*/
-- Funções de Janela
-- FUNÇÕES DE OFFSET (Deslocamento): LAG e LEAD
-- Cálculo MoM
-- calculo de varição


SELECT
	Data_Fechamento AS 'Data do Fechamento',
	Faturamento_MM AS 'Faturamento Total (em milhões)',
	FORMAT((Faturamento_MM/NULLIF(LAG(Faturamento_MM, 1, 0) OVER(ORDER BY Data_Fechamento), 0)) - 1, '0.00%') AS 'Crescimento MoM'
FROM Resultado
ORDER BY [Data do Fechamento]
