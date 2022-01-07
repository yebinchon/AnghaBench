
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_cursor_t ;
typedef int uint64_t ;
typedef int objset_t ;


 int B_TRUE ;
 int zap_cursor_init_impl (int *,int *,int ,int ,int ) ;

void
zap_cursor_init_serialized(zap_cursor_t *zc, objset_t *os, uint64_t zapobj,
    uint64_t serialized)
{
 zap_cursor_init_impl(zc, os, zapobj, serialized, B_TRUE);
}
