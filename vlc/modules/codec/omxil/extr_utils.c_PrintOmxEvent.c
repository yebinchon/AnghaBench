
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef scalar_t__ OMX_U32 ;
typedef int OMX_STATETYPE ;
typedef scalar_t__ OMX_PTR ;
typedef int OMX_EVENTTYPE ;
typedef int OMX_ERRORTYPE ;


 unsigned int CommandToString (scalar_t__) ;
 int ErrorToString (int ) ;
 int EventToString (int) ;



 unsigned int StateToString (scalar_t__) ;
 int msg_Dbg (int *,char*,int ,unsigned int,unsigned int,...) ;

void PrintOmxEvent(vlc_object_t *p_this, OMX_EVENTTYPE event, OMX_U32 data_1,
    OMX_U32 data_2, OMX_PTR event_data)
{
    switch (event)
    {
    case 129:
        switch ((OMX_STATETYPE)data_1)
        {
        case 130:
            msg_Dbg( p_this, "OmxEventHandler (%s, %s, %s)", EventToString(event),
                     CommandToString(data_1), StateToString(data_2) );
            break;

        default:
            msg_Dbg( p_this, "OmxEventHandler (%s, %s, %u)", EventToString(event),
                     CommandToString(data_1), (unsigned int)data_2 );
            break;
        }
        break;

    case 128:
        msg_Dbg( p_this, "OmxEventHandler (%s, %s, %u, %s)", EventToString(event),
                 ErrorToString((OMX_ERRORTYPE)data_1), (unsigned int)data_2,
                 (const char *)event_data);
        break;

    default:
        msg_Dbg( p_this, "OmxEventHandler (%s, %u, %u)", EventToString(event),
                 (unsigned int)data_1, (unsigned int)data_2 );
        break;
    }
}
