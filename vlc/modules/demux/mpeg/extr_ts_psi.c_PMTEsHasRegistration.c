
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dvbpsi_pmt_es_t ;
struct TYPE_3__ {int i_length; int p_data; } ;
typedef TYPE_1__ dvbpsi_descriptor_t ;
typedef int demux_t ;


 TYPE_1__* PMTEsFindDescriptor (int const*,int) ;
 int assert (int) ;
 int memcmp (int ,char const*,int) ;
 int msg_Warn (int *,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static bool PMTEsHasRegistration( demux_t *p_demux,
                                  const dvbpsi_pmt_es_t *p_es,
                                  const char *psz_tag )
{
    dvbpsi_descriptor_t *p_dr = PMTEsFindDescriptor( p_es, 0x05 );
    if( !p_dr )
        return 0;

    if( p_dr->i_length < 4 )
    {
        msg_Warn( p_demux, "invalid Registration Descriptor" );
        return 0;
    }

    assert( strlen(psz_tag) == 4 );
    return !memcmp( p_dr->p_data, psz_tag, 4 );
}
