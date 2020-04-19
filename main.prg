Set Asserts On

Assert Ganhador('pedra', 'pedra')   == 'empate' Message "Erro: Pedra deve empatar com Pedra"
Assert Ganhador('pedra', 'papel')   == 'papel'  Message "Erro: Papel deve ganhar de Pedra"
Assert Ganhador('pedra', 'tesoura') == 'pedra'  Message "Erro: Pedra deve ganhar de Tesoura"

Assert Ganhador('papel', 'papel')   == 'empate'  Message "Erro: Papel deve empatar com Papel"
Assert Ganhador('papel', 'pedra')   == 'papel'   Message "Erro: Papel deve ganhar de Pedra"
Assert Ganhador('papel', 'tesoura') == 'tesoura' Message "Erro: Tesoura deve ganhar de Papel"

Assert Ganhador('tesoura', 'tesoura') == 'empate'  Message "Erro: Tesoura deve empatar com Tesoura"
Assert Ganhador('tesoura', 'pedra')   == 'pedra'   Message "Erro: Pedra deve ganhar de Tesoura"
Assert Ganhador('tesoura', 'papel')   == 'tesoura' Message "Erro: Tesoura deve ganhar de Papel"
Messagebox('Fim', 64, 'Dojo')

Function Ganhador
	Lparameters m.lnJogador1, m.lnJogador2

	* empate
	If m.lnJogador1 == m.lnJogador2
		Return 'empate'
	Endif

	* Pedra
	If (m.lnJogador1 == 'pedra' And m.lnJogador2 == 'papel')
		Return 'papel'
	Endif
	If (m.lnJogador1 == 'pedra' And m.lnJogador2 == 'tesoura')
		Return 'pedra'
	Endif

	* Papel
	If (m.lnJogador1 == 'papel' And m.lnJogador2 == 'pedra')
		Return 'papel'
	Endif
	If (m.lnJogador1 == 'papel' And m.lnJogador2 == 'tesoura')
		Return 'tesoura'
	Endif

	* tesoura
	If (m.lnJogador1 == 'tesoura' And m.lnJogador2 == 'pedra')
		Return 'pedra'
	Endif
	If (m.lnJogador1 == 'tesoura' And m.lnJogador2 == 'papel')
		Return 'tesoura'
	Endif

Endfunc

