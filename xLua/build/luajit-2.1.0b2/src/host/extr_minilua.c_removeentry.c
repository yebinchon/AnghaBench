
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int gkey (int *) ;
 scalar_t__ iscollectable (int ) ;
 int setttype (int ,int) ;

__attribute__((used)) static void removeentry(Node*n){
if(iscollectable(gkey(n)))
setttype(gkey(n),(8+3));
}
