-- Databricks notebook source
-- Lista de pedidos que foram entregues com 2 dias de antecedĂȘncia

SELECT *
FROM silver_olist.pedido

WHERE DATE(dtEntregue) == (DATE(dtEstimativaEntrega) - INTERVAL '2' DAYS)
