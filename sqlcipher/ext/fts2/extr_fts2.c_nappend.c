
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nData; } ;
struct TYPE_4__ {TYPE_3__ b; } ;
typedef TYPE_1__ StringBuffer ;


 int assert (int) ;
 int dataBufferAppend2 (TYPE_3__*,char const*,int,char*,int) ;

__attribute__((used)) static void nappend(StringBuffer *sb, const char *zFrom, int nFrom){
  assert( sb->b.nData>0 );
  if( nFrom>0 ){
    sb->b.nData--;
    dataBufferAppend2(&sb->b, zFrom, nFrom, "", 1);
  }
}
