
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vout_thread_t ;
struct TYPE_3__ {scalar_t__ i_vout; int lock_hold; int ** pp_vout; int p_parent; int * p_vout_free; } ;
typedef TYPE_1__ input_resource_t ;


 int TAB_FIND (scalar_t__,int **,int *,int) ;
 int TAB_REMOVE (scalar_t__,int **,int *) ;
 int assert (int) ;
 int msg_Dbg (int ,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vout_Close (int *) ;

__attribute__((used)) static void input_resource_PutVoutLocked(input_resource_t *p_resource,
                                         vout_thread_t *vout)
{
    assert(vout != ((void*)0));
    vlc_mutex_lock(&p_resource->lock_hold);
    assert( p_resource->i_vout > 0 );

    if (p_resource->pp_vout[0] == vout)
    {
        vlc_mutex_unlock(&p_resource->lock_hold);

        assert(p_resource->p_vout_free == ((void*)0) || p_resource->p_vout_free == vout);
        msg_Dbg(p_resource->p_parent, "saving a free vout");
        p_resource->p_vout_free = vout;
    }
    else
    {
        msg_Dbg(p_resource->p_parent, "destroying vout (already one saved or active)");

        {
            int index;
            TAB_FIND(p_resource->i_vout, p_resource->pp_vout, vout, index);
            assert(index >= 0);
        }


        TAB_REMOVE(p_resource->i_vout, p_resource->pp_vout, vout);
        vlc_mutex_unlock(&p_resource->lock_hold);
        vout_Close(vout);
    }
}
