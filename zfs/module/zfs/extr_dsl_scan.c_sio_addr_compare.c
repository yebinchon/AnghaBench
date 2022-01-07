
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scan_io_t ;


 int SIO_GET_OFFSET (int const*) ;
 int TREE_CMP (int ,int ) ;

__attribute__((used)) static int
sio_addr_compare(const void *x, const void *y)
{
 const scan_io_t *a = x, *b = y;

 return (TREE_CMP(SIO_GET_OFFSET(a), SIO_GET_OFFSET(b)));
}
