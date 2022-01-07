
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_resource_t ;


 int input_resource_RequestSout (int *,int *,int *) ;

void input_resource_TerminateSout( input_resource_t *p_resource )
{
    input_resource_RequestSout( p_resource, ((void*)0), ((void*)0) );
}
