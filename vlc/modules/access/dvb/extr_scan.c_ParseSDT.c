
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int scan_t ;
struct TYPE_19__ {int type; void* psz_provider; void* psz_name; int b_crypted; } ;
typedef TYPE_1__ scan_service_t ;
struct TYPE_20__ {scalar_t__ i_sdt_version; } ;
typedef TYPE_2__ scan_multiplex_t ;
struct TYPE_21__ {int i_service_type; int i_service_provider_name_length; int i_service_provider_name; int i_service_name_length; int i_service_name; } ;
typedef TYPE_3__ dvbpsi_service_dr_t ;
struct TYPE_22__ {scalar_t__ i_version; TYPE_5__* p_first_service; int i_extension; } ;
typedef TYPE_4__ dvbpsi_sdt_t ;
struct TYPE_23__ {TYPE_6__* p_first_descriptor; int b_free_ca; int i_service_id; struct TYPE_23__* p_next; } ;
typedef TYPE_5__ dvbpsi_sdt_service_t ;
struct TYPE_24__ {int i_tag; struct TYPE_24__* p_next; } ;
typedef TYPE_6__ dvbpsi_descriptor_t ;


 scalar_t__ UINT8_MAX ;
 int VLC_UNUSED (int *) ;
 TYPE_3__* dvbpsi_DecodeServiceDr (TYPE_6__*) ;
 int free (void*) ;
 TYPE_2__* scan_FindMultiplex (int *,int ) ;
 int scan_NotifyService (int *,TYPE_1__*,int) ;
 int scan_SetMultiplexScanStatus (int *,TYPE_2__*,int) ;
 int scan_multiplex_AddService (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* scan_multiplex_FindService (TYPE_2__*,int ) ;
 int scan_service_Delete (TYPE_1__*) ;
 TYPE_1__* scan_service_New (int ) ;
 scalar_t__ unlikely (int ) ;
 void* vlc_from_EIT (int ,int ) ;

__attribute__((used)) static void ParseSDT( vlc_object_t *p_obj, scan_t *p_scan, const dvbpsi_sdt_t *p_sdt )
{
    VLC_UNUSED(p_obj);



    scan_multiplex_t *p_mplex = scan_FindMultiplex( p_scan, p_sdt->i_extension );
    if( unlikely(p_mplex == ((void*)0)) )
        return ;

    scan_SetMultiplexScanStatus( p_scan, p_mplex, 1 );

    if( p_mplex->i_sdt_version == UINT8_MAX )
        p_mplex->i_sdt_version = p_sdt->i_version;

    for( const dvbpsi_sdt_service_t *p_srv = p_sdt->p_first_service;
                                     p_srv; p_srv = p_srv->p_next )
    {
        bool b_newservice = 0;
        scan_service_t *s = scan_multiplex_FindService( p_mplex, p_srv->i_service_id );
        if( s == ((void*)0) )
        {
            b_newservice = 1;
            s = scan_service_New( p_srv->i_service_id );
            if( unlikely(s == ((void*)0)) )
                continue;
            if( !scan_multiplex_AddService( p_mplex, s ) )
            {
                scan_service_Delete( s );
                continue;
            }
        }

        s->b_crypted = p_srv->b_free_ca;

        for( dvbpsi_descriptor_t *p_dr = p_srv->p_first_descriptor;
                                  p_dr; p_dr = p_dr->p_next )
        {
            if( p_dr->i_tag != 0x48 )
                continue;

            dvbpsi_service_dr_t *pD = dvbpsi_DecodeServiceDr( p_dr );
            if( pD )
            {
                if( !s->psz_name )
                    s->psz_name = vlc_from_EIT( pD->i_service_name,
                                                pD->i_service_name_length );
                free( s->psz_provider );
                s->psz_provider = vlc_from_EIT( pD->i_service_provider_name,
                                                pD->i_service_provider_name_length );

                s->type = pD->i_service_type;
            }
        }

        scan_NotifyService( p_scan, s, !b_newservice );
    }
}
