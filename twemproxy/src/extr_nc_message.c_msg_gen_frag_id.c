
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int frag_id ;

inline uint64_t
msg_gen_frag_id(void)
{
    return ++frag_id;
}
