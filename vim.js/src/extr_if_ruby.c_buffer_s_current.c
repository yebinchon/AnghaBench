
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VALUE ;


 int buffer_new (int ) ;
 int curbuf ;

__attribute__((used)) static VALUE buffer_s_current()
{
    return buffer_new(curbuf);
}
