log      = console.log.bind console
consonants = <[ ny dy ty zy sy gy jy xy iy ry my by py vy fy ky cy yhy uy ly denpabu ]>
vowels = <[ abu ebu ibu obu ubu ybu aibu eibu oibu aubu ]>

for c in consonants
  for v in vowels
    log "/dreluhu_" + c + "_" + v + " ["
    log " /" + c
    log " /" + c + ".ccv.1"
    log " /" + c + ".cvc.1"
    log " /" + v + ".vc"
    log " /" + v + ".ccv"
    log " /" + v + ".cvc"
    log " /" + c + "_" + v
    for d in consonants
      log " /" + c + ".ccv.2"
      log " /" + c + ".cvc.3"
      log " /" + c + "_" + d + "_" + v
      log " /" + c + "_" + v + "_" + d 
    log "] def"
