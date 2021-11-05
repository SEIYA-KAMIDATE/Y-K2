class User < ApplicationRecord
    
   #パスワードをハッシュ化しています
    has_secure_password

   #バリデーションをつけておきます
    validates :name, {presence:true}
    validates :email, {presence:true,uniqueness:true}
    validates :password, {presence:true}

   #マイページに投稿内容を全て返します
    def posts
        return Post.where(user_id: self.id)
    end

end
