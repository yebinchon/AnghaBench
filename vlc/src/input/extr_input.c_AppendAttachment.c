
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const input_attachment_t ;
typedef int demux_t ;


 int free (int const**) ;
 scalar_t__ likely (int const**) ;
 int ** realloc (int const**,int) ;
 int vlc_input_attachment_Delete (int const*) ;

__attribute__((used)) static void AppendAttachment( int *pi_attachment, input_attachment_t ***ppp_attachment,
                              const demux_t ***ppp_attachment_demux,
                              int i_new, input_attachment_t **pp_new, const demux_t *p_demux )
{
    int i_attachment = *pi_attachment;
    int i;

    input_attachment_t **pp_att = realloc( *ppp_attachment,
                    sizeof(*pp_att) * ( i_attachment + i_new ) );
    if( likely(pp_att) )
    {
        *ppp_attachment = pp_att;
        const demux_t **pp_attdmx = realloc( *ppp_attachment_demux,
                        sizeof(*pp_attdmx) * ( i_attachment + i_new ) );
        if( likely(pp_attdmx) )
        {
            *ppp_attachment_demux = pp_attdmx;

            for( i = 0; i < i_new; i++ )
            {
                pp_att[i_attachment] = pp_new[i];
                pp_attdmx[i_attachment++] = p_demux;
            }

            *pi_attachment = i_attachment;
            free( pp_new );
            return;
        }
    }


    for( i = 0; i < i_new; i++ )
        vlc_input_attachment_Delete( pp_new[i] );
    free( pp_new );
}
