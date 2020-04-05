module Intrigue
module Ident
module Check
class Wix < Intrigue::Ident::Check::Base

    def generate_checks(url)
    [
        {
            :type => "fingerprint",
            :category => "service",
            :tags => ["SaaS","Hosting"],
            :vendor => "Wix.com Ltd.",
            :product => "Wix",
            :website => "https://www.wix.com/",
            :match_details => "Wix hosting request id header",
            :version => nil,
            :match_type => :content_headers,
            :match_content =>  /^x-wix-request-id:/i,
            :paths => ["#{url}"],
            :inference => false
        }
    ]
    end

end
end
end
end
