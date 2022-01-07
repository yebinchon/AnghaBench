
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;



__attribute__((used)) static ptrdiff_t posrelat(ptrdiff_t pos,size_t len){
if(pos<0)pos+=(ptrdiff_t)len+1;
return(pos>=0)?pos:0;
}
