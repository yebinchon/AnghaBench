
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stbi ;
struct TYPE_3__ {int * s; } ;
typedef TYPE_1__ jpeg ;


 int SCAN_type ;
 int decode_jpeg_header (TYPE_1__*,int ) ;
 int stbi_rewind (int *) ;

__attribute__((used)) static int stbi_jpeg_test(stbi *s)
{
   int r;
   jpeg j;
   j.s = s;
   r = decode_jpeg_header(&j, SCAN_type);
   stbi_rewind(s);
   return r;
}
