#!/usr/bin/ruby
require 'rational'
gets.to_i.times{
M=gets.to_i
h=Hash.new{|h,k|h[k]=0}
2.step(Math.sqrt(M/2).to_i){|m|
	1.step(m-1){|n|
		if (n+m)%2==1 && n.gcd(m)==1
			a=m*m+n*n;b=m*m-n*n;c=2*m*n
			(a+b+c).step(M,a+b+c){|i|h[i]+=1}
		end
	}
}
#p h
p h.count{|k,v|v==1}
}
__END__
1
1500000