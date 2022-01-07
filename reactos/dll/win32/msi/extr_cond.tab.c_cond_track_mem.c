
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int COND_input ;


 void* cond_alloc (int *,unsigned int) ;
 int memcpy (void*,void*,unsigned int) ;
 int msi_free (void*) ;

__attribute__((used)) static void *cond_track_mem( COND_input *cond, void *ptr, unsigned int sz )
{
    void *new_ptr;

    if( !ptr )
        return ptr;

    new_ptr = cond_alloc( cond, sz );
    if( !new_ptr )
    {
        msi_free( ptr );
        return ((void*)0);
    }

    memcpy( new_ptr, ptr, sz );
    msi_free( ptr );
    return new_ptr;
}
