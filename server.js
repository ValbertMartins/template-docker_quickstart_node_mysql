const dayjs = require('dayjs')
const express = require('express')
const app = express()
const port = 3000

app.get('/', async (req, res) => {

  
  const month = dayjs('2019-01-25').daysInMonth()
  console.log(month)
 res.status(200).json({
  test: "teste"
 })
})

app.listen(port, () => {
  console.log(`em portugues ${port}`)
})