
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef size_t ssize_t ;



__attribute__((used)) static ssize_t Read (stream_t *access, void *buf, size_t len)
{
    char *in = access->p_sys, *out = buf;
    size_t i;

    for (i = 0; i < len && *in != '\0'; i++)
        *(out++) = *(in++);

    access->p_sys = in;
    return i;
}
