
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filter_chain_t ;


 int filter_chain_Delete (int *) ;

__attribute__((used)) static inline void transcode_remove_filters( filter_chain_t **pp )
{
    if( *pp )
    {
        filter_chain_Delete( *pp );
        *pp = ((void*)0);
    }
}
