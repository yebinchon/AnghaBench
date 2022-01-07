
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int fe_hierarchy_t ;


 int HIERARCHY_1 ;
 int HIERARCHY_2 ;
 int HIERARCHY_4 ;
 int HIERARCHY_AUTO ;
 int HIERARCHY_NONE ;
 int msg_Dbg (int *,char*,...) ;
 int var_GetInteger (int *,char*) ;

__attribute__((used)) static fe_hierarchy_t DecodeHierarchy( vlc_object_t *p_access )
{
    fe_hierarchy_t fe_hierarchy = 0;
    int i_hierarchy = var_GetInteger( p_access, "dvb-hierarchy" );

    msg_Dbg( p_access, "using hierarchy=%d", i_hierarchy );

    switch( i_hierarchy )
    {
        case -1: fe_hierarchy = HIERARCHY_NONE; break;
        case 0: fe_hierarchy = HIERARCHY_AUTO; break;
        case 1: fe_hierarchy = HIERARCHY_1; break;
        case 2: fe_hierarchy = HIERARCHY_2; break;
        case 4: fe_hierarchy = HIERARCHY_4; break;
        default:
            msg_Dbg( p_access, "terrestrial dvb has hierarchy not set, using auto");
            fe_hierarchy = HIERARCHY_AUTO;
            break;
    }
    return fe_hierarchy;
}
