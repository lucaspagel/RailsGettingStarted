class ArticlesController < ApplicationController
    def new
    end

    def create
        # Article se refere a classe vinda do model
        # :article se refere ao scope do form em view/articles/new.html.erb
        @articleObj = Article.new(article_params)
 
        # salva este model(objeto) na database (tabela articles)
        @articleObj.save

        # 
        redirect_to @articleObj
    end

    private def article_params
        params.require(:article).permit(:title, :text)
    end
end
