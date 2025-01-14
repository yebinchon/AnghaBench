
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef char* LPCSTR ;
typedef int DWORD ;


 int DPCAPS_ASYNCCANCELALLSUPPORTED ;
 int DPCAPS_ASYNCCANCELSUPPORTED ;
 int DPCAPS_ASYNCSUPPORTED ;
 int DPCAPS_ENCRYPTIONSUPPORTED ;
 int DPCAPS_GROUPOPTIMIZED ;
 int DPCAPS_GUARANTEEDOPTIMIZED ;
 int DPCAPS_GUARANTEEDSUPPORTED ;
 int DPCAPS_ISHOST ;
 int DPCAPS_KEEPALIVEOPTIMIZED ;
 int DPCAPS_SENDPRIORITYSUPPORTED ;
 int DPCAPS_SENDTIMEOUTSUPPORTED ;
 int DPCAPS_SIGNINGSUPPORTED ;
 int DPCONNECTION_DIRECTPLAY ;
 int DPCONNECTION_DIRECTPLAYLOBBY ;
 int DPCONNECT_RETURNSTATUS ;
 int DPENUMGROUPS_ALL ;
 int DPENUMGROUPS_HIDDEN ;
 int DPENUMGROUPS_SHORTCUT ;
 int DPENUMGROUPS_STAGINGAREA ;
 int DPENUMPLAYERS_ALL ;
 int DPENUMPLAYERS_GROUP ;
 int DPENUMPLAYERS_LOCAL ;
 int DPENUMPLAYERS_OWNER ;
 int DPENUMPLAYERS_REMOTE ;
 int DPENUMPLAYERS_SERVERPLAYER ;
 int DPENUMPLAYERS_SESSION ;
 int DPENUMPLAYERS_SPECTATOR ;
 int DPENUMSESSIONS_ALL ;
 int DPENUMSESSIONS_ASYNC ;
 int DPENUMSESSIONS_AVAILABLE ;
 int DPENUMSESSIONS_PASSWORDREQUIRED ;
 int DPENUMSESSIONS_RETURNSTATUS ;
 int DPENUMSESSIONS_STOPASYNC ;
 int DPESC_TIMEDOUT ;
 int DPGETCAPS_GUARANTEED ;
 int DPGET_LOCAL ;
 int DPGET_REMOTE ;
 int DPGROUP_HIDDEN ;
 int DPGROUP_LOCAL ;
 int DPGROUP_STAGINGAREA ;
 int DPLCONNECTION_CREATESESSION ;
 int DPLCONNECTION_JOINSESSION ;
 int DPMESSAGEQUEUE_RECEIVE ;
 int DPMESSAGEQUEUE_SEND ;
 int DPOPEN_CREATE ;
 int DPOPEN_JOIN ;
 int DPOPEN_RETURNSTATUS ;
 int DPPLAYERCAPS_LOCAL ;
 int DPPLAYER_LOCAL ;
 int DPPLAYER_OWNER ;
 int DPPLAYER_SERVERPLAYER ;
 int DPPLAYER_SPECTATOR ;
 int DPRECEIVE_ALL ;
 int DPRECEIVE_FROMPLAYER ;
 int DPRECEIVE_PEEK ;
 int DPRECEIVE_TOPLAYER ;
 int DPSEND_ASYNC ;
 int DPSEND_CLOSESTREAM ;
 int DPSEND_ENCRYPTED ;
 int DPSEND_GUARANTEED ;
 int DPSEND_HIGHPRIORITY ;
 int DPSEND_LOBBYSYSTEMMESSAGE ;
 int DPSEND_MAX_PRIORITY ;
 int DPSEND_NOSENDCOMPLETEMSG ;
 int DPSEND_OPENSTREAM ;
 int DPSEND_SIGNED ;
 int DPSESSION_CLIENTSERVER ;
 int DPSESSION_DIRECTPLAYPROTOCOL ;
 int DPSESSION_JOINDISABLED ;
 int DPSESSION_KEEPALIVE ;
 int DPSESSION_MIGRATEHOST ;
 int DPSESSION_MULTICASTSERVER ;
 int DPSESSION_NEWPLAYERSDISABLED ;
 int DPSESSION_NODATAMESSAGES ;
 int DPSESSION_NOMESSAGEID ;
 int DPSESSION_NOPRESERVEORDER ;
 int DPSESSION_OPTIMIZELATENCY ;
 int DPSESSION_PASSWORDREQUIRED ;
 int DPSESSION_PRIVATE ;
 int DPSESSION_SECURESERVER ;
 int DPSET_GUARANTEED ;
 int DPSET_LOCAL ;
 int DPSET_REMOTE ;
 int FLAGS_DPCAPS ;
 int FLAGS_DPCONNECT ;
 int FLAGS_DPCONNECTION ;
 int FLAGS_DPENUMGROUPS ;
 int FLAGS_DPENUMPLAYERS ;
 int FLAGS_DPENUMSESSIONS ;
 int FLAGS_DPESC ;
 int FLAGS_DPGET ;
 int FLAGS_DPGETCAPS ;
 int FLAGS_DPGROUP ;
 int FLAGS_DPLCONNECTION ;
 int FLAGS_DPMESSAGEQUEUE ;
 int FLAGS_DPOPEN ;
 int FLAGS_DPPLAYER ;
 int FLAGS_DPRECEIVE ;
 int FLAGS_DPSEND ;
 int FLAGS_DPSESSION ;
 int FLAGS_DPSET ;
 char* get_temp_buffer () ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static LPCSTR dwFlags2str(DWORD dwFlags, DWORD flagType)
{
    LPSTR flags = get_temp_buffer();



    if (flagType & (1<<0))
    {
        if (dwFlags & DPCONNECTION_DIRECTPLAY)
            strcat(flags, "DPCONNECTION_DIRECTPLAY,");
        if (dwFlags & DPCONNECTION_DIRECTPLAYLOBBY)
            strcat(flags, "DPCONNECTION_DIRECTPLAYLOBBY,");
    }




    if (flagType & (1<<1))
    {
        if (dwFlags == DPENUMPLAYERS_ALL)
            strcat(flags, "DPENUMPLAYERS_ALL,");
        if (dwFlags & DPENUMPLAYERS_LOCAL)
            strcat(flags, "DPENUMPLAYERS_LOCAL,");
        if (dwFlags & DPENUMPLAYERS_REMOTE)
            strcat(flags, "DPENUMPLAYERS_REMOTE,");
        if (dwFlags & DPENUMPLAYERS_GROUP)
            strcat(flags, "DPENUMPLAYERS_GROUP,");
        if (dwFlags & DPENUMPLAYERS_SESSION)
            strcat(flags, "DPENUMPLAYERS_SESSION,");
        if (dwFlags & DPENUMPLAYERS_SERVERPLAYER)
            strcat(flags, "DPENUMPLAYERS_SERVERPLAYER,");
        if (dwFlags & DPENUMPLAYERS_SPECTATOR)
            strcat(flags, "DPENUMPLAYERS_SPECTATOR,");
        if (dwFlags & DPENUMPLAYERS_OWNER)
            strcat(flags, "DPENUMPLAYERS_OWNER,");
    }
    if (flagType & (1<<2))
    {
        if (dwFlags == DPENUMGROUPS_ALL)
            strcat(flags, "DPENUMGROUPS_ALL,");
        if (dwFlags & DPENUMPLAYERS_LOCAL)
            strcat(flags, "DPENUMGROUPS_LOCAL,");
        if (dwFlags & DPENUMPLAYERS_REMOTE)
            strcat(flags, "DPENUMGROUPS_REMOTE,");
        if (dwFlags & DPENUMPLAYERS_GROUP)
            strcat(flags, "DPENUMGROUPS_GROUP,");
        if (dwFlags & DPENUMPLAYERS_SESSION)
            strcat(flags, "DPENUMGROUPS_SESSION,");
        if (dwFlags & DPENUMGROUPS_SHORTCUT)
            strcat(flags, "DPENUMGROUPS_SHORTCUT,");
        if (dwFlags & DPENUMGROUPS_STAGINGAREA)
            strcat(flags, "DPENUMGROUPS_STAGINGAREA,");
        if (dwFlags & DPENUMGROUPS_HIDDEN)
            strcat(flags, "DPENUMGROUPS_HIDDEN,");
    }



    if (flagType & (1<<3))
    {
        if (dwFlags & DPPLAYER_SERVERPLAYER)
            strcat(flags, "DPPLAYER_SERVERPLAYER,");
        if (dwFlags & DPPLAYER_SPECTATOR)
            strcat(flags, "DPPLAYER_SPECTATOR,");
        if (dwFlags & DPPLAYER_LOCAL)
            strcat(flags, "DPPLAYER_LOCAL,");
        if (dwFlags & DPPLAYER_OWNER)
            strcat(flags, "DPPLAYER_OWNER,");
    }



    if (flagType & (1<<4))
    {
        if (dwFlags & DPGROUP_STAGINGAREA)
            strcat(flags, "DPGROUP_STAGINGAREA,");
        if (dwFlags & DPGROUP_LOCAL)
            strcat(flags, "DPGROUP_LOCAL,");
        if (dwFlags & DPGROUP_HIDDEN)
            strcat(flags, "DPGROUP_HIDDEN,");
    }



    if (flagType & (1<<5))
    {
        if (dwFlags & DPENUMSESSIONS_AVAILABLE)
            strcat(flags, "DPENUMSESSIONS_AVAILABLE,");
        if (dwFlags & DPENUMSESSIONS_ALL)
            strcat(flags, "DPENUMSESSIONS_ALL,");
        if (dwFlags & DPENUMSESSIONS_ASYNC)
            strcat(flags, "DPENUMSESSIONS_ASYNC,");
        if (dwFlags & DPENUMSESSIONS_STOPASYNC)
            strcat(flags, "DPENUMSESSIONS_STOPASYNC,");
        if (dwFlags & DPENUMSESSIONS_PASSWORDREQUIRED)
            strcat(flags, "DPENUMSESSIONS_PASSWORDREQUIRED,");
        if (dwFlags & DPENUMSESSIONS_RETURNSTATUS)
            strcat(flags, "DPENUMSESSIONS_RETURNSTATUS,");
    }




    if (flagType & (1<<6))
    {
        if (dwFlags & DPGETCAPS_GUARANTEED)
            strcat(flags, "DPGETCAPS_GUARANTEED,");
    }




    if (flagType & (1<<7))
    {
        if (dwFlags == DPGET_REMOTE)
            strcat(flags, "DPGET_REMOTE,");
        if (dwFlags & DPGET_LOCAL)
            strcat(flags, "DPGET_LOCAL,");
    }



    if (flagType & (1<<8))
    {
        if (dwFlags & DPRECEIVE_ALL)
            strcat(flags, "DPRECEIVE_ALL,");
        if (dwFlags & DPRECEIVE_TOPLAYER)
            strcat(flags, "DPRECEIVE_TOPLAYER,");
        if (dwFlags & DPRECEIVE_FROMPLAYER)
            strcat(flags, "DPRECEIVE_FROMPLAYER,");
        if (dwFlags & DPRECEIVE_PEEK)
            strcat(flags, "DPRECEIVE_PEEK,");
    }



    if (flagType & (1<<9))
    {


        if (dwFlags == DPSEND_MAX_PRIORITY)
        {
            strcat(flags, "DPSEND_MAX_PRIORITY,");
        }
        else
        {
            if (dwFlags & DPSEND_GUARANTEED)
                strcat(flags, "DPSEND_GUARANTEED,");
            if (dwFlags & DPSEND_HIGHPRIORITY)
                strcat(flags, "DPSEND_HIGHPRIORITY,");
            if (dwFlags & DPSEND_OPENSTREAM)
                strcat(flags, "DPSEND_OPENSTREAM,");
            if (dwFlags & DPSEND_CLOSESTREAM)
                strcat(flags, "DPSEND_CLOSESTREAM,");
            if (dwFlags & DPSEND_SIGNED)
                strcat(flags, "DPSEND_SIGNED,");
            if (dwFlags & DPSEND_ENCRYPTED)
                strcat(flags, "DPSEND_ENCRYPTED,");
            if (dwFlags & DPSEND_LOBBYSYSTEMMESSAGE)
                strcat(flags, "DPSEND_LOBBYSYSTEMMESSAGE,");
            if (dwFlags & DPSEND_ASYNC)
                strcat(flags, "DPSEND_ASYNC,");
            if (dwFlags & DPSEND_NOSENDCOMPLETEMSG)
                strcat(flags, "DPSEND_NOSENDCOMPLETEMSG,");
        }
    }







    if (flagType & (1<<10))
    {
        if (dwFlags == DPSET_REMOTE)
            strcat(flags, "DPSET_REMOTE,");
        if (dwFlags & DPSET_LOCAL)
            strcat(flags, "DPSET_LOCAL,");
        if (dwFlags & DPSET_GUARANTEED)
            strcat(flags, "DPSET_GUARANTEED,");
    }



    if (flagType & (1<<11))
    {
        if (dwFlags & DPMESSAGEQUEUE_SEND)
            strcat(flags, "DPMESSAGEQUEUE_SEND,");
        if (dwFlags & DPMESSAGEQUEUE_RECEIVE)
            strcat(flags, "DPMESSAGEQUEUE_RECEIVE,");
    }



    if (flagType & (1<<12))
    {
        if (dwFlags & DPCONNECT_RETURNSTATUS)
            strcat(flags, "DPCONNECT_RETURNSTATUS,");
    }



    if (flagType & (1<<13))
    {
        if (dwFlags & DPOPEN_JOIN)
            strcat(flags, "DPOPEN_JOIN,");
        if (dwFlags & DPOPEN_CREATE)
            strcat(flags, "DPOPEN_CREATE,");
        if (dwFlags & DPOPEN_RETURNSTATUS)
            strcat(flags, "DPOPEN_RETURNSTATUS,");
    }



    if (flagType & (1<<14))
    {
        if (dwFlags & DPSESSION_NEWPLAYERSDISABLED)
            strcat(flags, "DPSESSION_NEWPLAYERSDISABLED,");
        if (dwFlags & DPSESSION_MIGRATEHOST)
            strcat(flags, "DPSESSION_MIGRATEHOST,");
        if (dwFlags & DPSESSION_NOMESSAGEID)
            strcat(flags, "DPSESSION_NOMESSAGEID,");
        if (dwFlags & DPSESSION_JOINDISABLED)
            strcat(flags, "DPSESSION_JOINDISABLED,");
        if (dwFlags & DPSESSION_KEEPALIVE)
            strcat(flags, "DPSESSION_KEEPALIVE,");
        if (dwFlags & DPSESSION_NODATAMESSAGES)
            strcat(flags, "DPSESSION_NODATAMESSAGES,");
        if (dwFlags & DPSESSION_SECURESERVER)
            strcat(flags, "DPSESSION_SECURESERVER,");
        if (dwFlags & DPSESSION_PRIVATE)
            strcat(flags, "DPSESSION_PRIVATE,");
        if (dwFlags & DPSESSION_PASSWORDREQUIRED)
            strcat(flags, "DPSESSION_PASSWORDREQUIRED,");
        if (dwFlags & DPSESSION_MULTICASTSERVER)
            strcat(flags, "DPSESSION_MULTICASTSERVER,");
        if (dwFlags & DPSESSION_CLIENTSERVER)
            strcat(flags, "DPSESSION_CLIENTSERVER,");

        if (dwFlags & DPSESSION_DIRECTPLAYPROTOCOL)
            strcat(flags, "DPSESSION_DIRECTPLAYPROTOCOL,");
        if (dwFlags & DPSESSION_NOPRESERVEORDER)
            strcat(flags, "DPSESSION_NOPRESERVEORDER,");
        if (dwFlags & DPSESSION_OPTIMIZELATENCY)
            strcat(flags, "DPSESSION_OPTIMIZELATENCY,");

    }



    if (flagType & (1<<15))
    {
        if (dwFlags & DPLCONNECTION_CREATESESSION)
            strcat(flags, "DPLCONNECTION_CREATESESSION,");
        if (dwFlags & DPLCONNECTION_JOINSESSION)
            strcat(flags, "DPLCONNECTION_JOINSESSION,");
    }



    if (flagType & (1<<16))
    {
        if (dwFlags & DPESC_TIMEDOUT)
            strcat(flags, "DPESC_TIMEDOUT,");
    }




    if (flagType & (1<<17))
    {
        if (dwFlags & DPCAPS_ISHOST)
            strcat(flags, "DPCAPS_ISHOST,");
        if (dwFlags & DPCAPS_GROUPOPTIMIZED)
            strcat(flags, "DPCAPS_GROUPOPTIMIZED,");
        if (dwFlags & DPCAPS_KEEPALIVEOPTIMIZED)
            strcat(flags, "DPCAPS_KEEPALIVEOPTIMIZED,");
        if (dwFlags & DPCAPS_GUARANTEEDOPTIMIZED)
            strcat(flags, "DPCAPS_GUARANTEEDOPTIMIZED,");
        if (dwFlags & DPCAPS_GUARANTEEDSUPPORTED)
            strcat(flags, "DPCAPS_GUARANTEEDSUPPORTED,");
        if (dwFlags & DPCAPS_SIGNINGSUPPORTED)
            strcat(flags, "DPCAPS_SIGNINGSUPPORTED,");
        if (dwFlags & DPCAPS_ENCRYPTIONSUPPORTED)
            strcat(flags, "DPCAPS_ENCRYPTIONSUPPORTED,");
        if (dwFlags & DPCAPS_ASYNCCANCELSUPPORTED)
            strcat(flags, "DPCAPS_ASYNCCANCELSUPPORTED,");
        if (dwFlags & DPCAPS_ASYNCCANCELALLSUPPORTED)
            strcat(flags, "DPCAPS_ASYNCCANCELALLSUPPORTED,");
        if (dwFlags & DPCAPS_SENDTIMEOUTSUPPORTED)
            strcat(flags, "DPCAPS_SENDTIMEOUTSUPPORTED,");
        if (dwFlags & DPCAPS_SENDPRIORITYSUPPORTED)
            strcat(flags, "DPCAPS_SENDPRIORITYSUPPORTED,");
        if (dwFlags & DPCAPS_ASYNCSUPPORTED)
            strcat(flags, "DPCAPS_ASYNCSUPPORTED,");

        if (dwFlags & DPPLAYERCAPS_LOCAL)
            strcat(flags, "DPPLAYERCAPS_LOCAL,");
    }

    if ((strlen(flags) == 0) && (dwFlags != 0))
        strcpy(flags, "UNKNOWN");
    else
        flags[strlen(flags)-1] = '\0';

    return flags;
}
