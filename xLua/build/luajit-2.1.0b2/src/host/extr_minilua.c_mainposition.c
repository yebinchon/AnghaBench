
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Table ;
typedef int TValue ;
typedef int Node ;


 int bvalue (int const*) ;
 int gcvalue (int const*) ;
 int * hashboolean (int const*,int ) ;
 int * hashnum (int const*,int ) ;
 int * hashpointer (int const*,int ) ;
 int * hashstr (int const*,int ) ;
 int nvalue (int const*) ;
 int pvalue (int const*) ;
 int rawtsvalue (int const*) ;
 int ttype (int const*) ;

__attribute__((used)) static Node*mainposition(const Table*t,const TValue*key){
switch(ttype(key)){
case 3:
return hashnum(t,nvalue(key));
case 4:
return hashstr(t,rawtsvalue(key));
case 1:
return hashboolean(t,bvalue(key));
case 2:
return hashpointer(t,pvalue(key));
default:
return hashpointer(t,gcvalue(key));
}
}
