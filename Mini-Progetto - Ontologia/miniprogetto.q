[QueryItem="a"]
PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX ont: <http://www.semanticweb.org/lucad/ontologies/2023/9/animali#>

SELECT ?mammifero
WHERE {
  ?mammifero rdf:type ont:Mammiferi .
  ?continente rdf:type ont:Continente ;
              ont:popolatoDa ?mammifero .
  FILTER (?continente = ont:oceania) # Sostituisci 'Africa' con il nome del continente desiderato
}