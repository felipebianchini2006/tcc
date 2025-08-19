<?php 

include_once("cabecalho.php");
include_once("conexao.php");

//VERIFICAR SE EXISTE UM USUÁRIO ADMINISTRADOR, CASO NÃO EXISTA, CRIAR.
$senha = '123';
$res_usuarios = $pdo->query("SELECT * from usuarios where nivel = 'Admin'");
$dados_usuarios = $res_usuarios->fetchAll(PDO::FETCH_ASSOC);
$total_usuarios = count($dados_usuarios);

if($total_usuarios == 0){
  $res_insert = $pdo->query("INSERT into usuarios (nome, cpf, telefone, usuario, senha, nivel) values ('Administrador', '000.000.000-00', '3333-3333', '$email_adm', '$senha', 'Admin')");
}


?>

<!-- Swiper-->
<section class="section swiper-container swiper-slider swiper-slider-modern" data-loop="true" data-autoplay="5000" data-simulate-touch="true" data-nav="true" data-slide-effect="fade">
  <div class="swiper-wrapper text-left">
    <div class="swiper-slide context-dark" data-slide-bg="images/banner/01.jpg">
      <div class="swiper-slide-caption">
        <div class="container">
          <div class="row justify-content-center justify-content-xxl-start">
            <div class="col-md-10 col-xxl-6">
              <div class="slider-modern-box">
                <h1 class="slider-modern-title"><span data-caption-animate="slideInDown" data-caption-delay="0">Sanduíches</span></h1>
                <p data-caption-animate="fadeInRight" data-caption-delay="400">Venha conhecer nossos Hamburgues artesanais, os melhores da região!</p>
                <div class="oh button-wrap"><a class="button button-primary button-ujarak" href="sobre.php" data-caption-animate="slideInLeft" data-caption-delay="400">Veja Mais</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="swiper-slide context-dark" data-slide-bg="images/banner/02.jpg">
      <div class="swiper-slide-caption">
        <div class="container">
          <div class="row justify-content-center justify-content-xxl-start">
            <div class="col-md-10 col-xxl-6">
              <div class="slider-modern-box">
                <h1 class="slider-modern-title"><span data-caption-animate="slideInLeft" data-caption-delay="0"></span></h1>
                <p data-caption-animate="fadeInRight" data-caption-delay="400"></p>
                <div class="oh button-wrap"><a class="button button-primary button-ujarak" href="sobre.php" data-caption-animate="slideInLeft" data-caption-delay="400">Veja Mais</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
  <!-- Swiper Navigation-->
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>
  <!-- Swiper Pagination-->
  <div class="swiper-pagination swiper-pagination-style-2"></div>
</section>
 </section>

<!-- Section CTA 2-->
<section class="section text-center">
  <div class="parallax-container" data-parallax-img="images/banner/promocao.jpg">
    <div class="parallax-content section-xl section-inset-custom-1 context-dark bg-overlay-40">
      <div class="container">
        <h2 class="oh font-weight-normal"><span class="d-inline-block wow slideInDown" data-wow-delay="0s">Promoções</span></h2>
        <p class="oh big text-width-large"><span class="d-inline-block wow slideInUp" data-wow-delay=".2s">Veja as nossas outras promoções clicando no botão abaixo, temos várias promoções com diversos produtos!!</span></p><a class="button button-primary button-icon button-icon-left button-ujarak wow fadeInUp" href="combos"><span class="icon mdi mdi-play"></span>Todas as Promoções</a>
      </div>
    </div>
  </div>
</section>


<?php include_once("rodape.php") ?>
</div>
<!-- Global Mailform Output-->
<div class="snackbars" id="form-output-global"></div>
<!-- Javascript-->
<script src="js/core.min.js"></script>
<script src="js/script.js"></script>
</body>
</html>




 <!--MODAL PARA MOSTRAR A DESCRIÇÃO DO PRODUTO -->

            <div class="modal fade" id="modal-desc" tabindex="-1" role="dialog">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 id="texto-descricao" class="modal-title"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                 
                    <span id="texto-descricao-longa"></span>

                  </div>
                  
               </div>
             </div>
           </div>


<script>
function setaDadosModal(descricao, descricaoLonga) {
    $("#texto-descricao").text(descricao);
    $("#texto-descricao-longa").text(descricaoLonga);
}
</script>



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>

<script src="js/mascaras.js"></script>



<?php include_once("modal-carrinho.php") ?>


