
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary {int num_entries; } ;
typedef int UINT ;



UINT dictionary_num_entries(struct dictionary *d)
{
    return d ? d->num_entries : 0;
}
