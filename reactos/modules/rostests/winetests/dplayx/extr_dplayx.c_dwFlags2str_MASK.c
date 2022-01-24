#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char* LPSTR ;
typedef  char* LPCSTR ;
typedef  int DWORD ;

/* Variables and functions */
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
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static LPCSTR FUNC4(DWORD dwFlags, DWORD flagType)
{

#define FLAGS_DPCONNECTION     (1<<0)
#define FLAGS_DPENUMPLAYERS    (1<<1)
#define FLAGS_DPENUMGROUPS     (1<<2)
#define FLAGS_DPPLAYER         (1<<3)
#define FLAGS_DPGROUP          (1<<4)
#define FLAGS_DPENUMSESSIONS   (1<<5)
#define FLAGS_DPGETCAPS        (1<<6)
#define FLAGS_DPGET            (1<<7)
#define FLAGS_DPRECEIVE        (1<<8)
#define FLAGS_DPSEND           (1<<9)
#define FLAGS_DPSET            (1<<10)
#define FLAGS_DPMESSAGEQUEUE   (1<<11)
#define FLAGS_DPCONNECT        (1<<12)
#define FLAGS_DPOPEN           (1<<13)
#define FLAGS_DPSESSION        (1<<14)
#define FLAGS_DPLCONNECTION    (1<<15)
#define FLAGS_DPESC            (1<<16)
#define FLAGS_DPCAPS           (1<<17)

    LPSTR flags = FUNC0();

    /* EnumConnections */

    if (flagType & FLAGS_DPCONNECTION)
    {
        if (dwFlags & DPCONNECTION_DIRECTPLAY)
            FUNC1(flags, "DPCONNECTION_DIRECTPLAY,");
        if (dwFlags & DPCONNECTION_DIRECTPLAYLOBBY)
            FUNC1(flags, "DPCONNECTION_DIRECTPLAYLOBBY,");
    }

    /* EnumPlayers,
       EnumGroups */

    if (flagType & FLAGS_DPENUMPLAYERS)
    {
        if (dwFlags == DPENUMPLAYERS_ALL)
            FUNC1(flags, "DPENUMPLAYERS_ALL,");
        if (dwFlags & DPENUMPLAYERS_LOCAL)
            FUNC1(flags, "DPENUMPLAYERS_LOCAL,");
        if (dwFlags & DPENUMPLAYERS_REMOTE)
            FUNC1(flags, "DPENUMPLAYERS_REMOTE,");
        if (dwFlags & DPENUMPLAYERS_GROUP)
            FUNC1(flags, "DPENUMPLAYERS_GROUP,");
        if (dwFlags & DPENUMPLAYERS_SESSION)
            FUNC1(flags, "DPENUMPLAYERS_SESSION,");
        if (dwFlags & DPENUMPLAYERS_SERVERPLAYER)
            FUNC1(flags, "DPENUMPLAYERS_SERVERPLAYER,");
        if (dwFlags & DPENUMPLAYERS_SPECTATOR)
            FUNC1(flags, "DPENUMPLAYERS_SPECTATOR,");
        if (dwFlags & DPENUMPLAYERS_OWNER)
            FUNC1(flags, "DPENUMPLAYERS_OWNER,");
    }
    if (flagType & FLAGS_DPENUMGROUPS)
    {
        if (dwFlags == DPENUMGROUPS_ALL)
            FUNC1(flags, "DPENUMGROUPS_ALL,");
        if (dwFlags & DPENUMPLAYERS_LOCAL)
            FUNC1(flags, "DPENUMGROUPS_LOCAL,");
        if (dwFlags & DPENUMPLAYERS_REMOTE)
            FUNC1(flags, "DPENUMGROUPS_REMOTE,");
        if (dwFlags & DPENUMPLAYERS_GROUP)
            FUNC1(flags, "DPENUMGROUPS_GROUP,");
        if (dwFlags & DPENUMPLAYERS_SESSION)
            FUNC1(flags, "DPENUMGROUPS_SESSION,");
        if (dwFlags & DPENUMGROUPS_SHORTCUT)
            FUNC1(flags, "DPENUMGROUPS_SHORTCUT,");
        if (dwFlags & DPENUMGROUPS_STAGINGAREA)
            FUNC1(flags, "DPENUMGROUPS_STAGINGAREA,");
        if (dwFlags & DPENUMGROUPS_HIDDEN)
            FUNC1(flags, "DPENUMGROUPS_HIDDEN,");
    }

    /* CreatePlayer */

    if (flagType & FLAGS_DPPLAYER)
    {
        if (dwFlags & DPPLAYER_SERVERPLAYER)
            FUNC1(flags, "DPPLAYER_SERVERPLAYER,");
        if (dwFlags & DPPLAYER_SPECTATOR)
            FUNC1(flags, "DPPLAYER_SPECTATOR,");
        if (dwFlags & DPPLAYER_LOCAL)
            FUNC1(flags, "DPPLAYER_LOCAL,");
        if (dwFlags & DPPLAYER_OWNER)
            FUNC1(flags, "DPPLAYER_OWNER,");
    }

    /* CreateGroup */

    if (flagType & FLAGS_DPGROUP)
    {
        if (dwFlags & DPGROUP_STAGINGAREA)
            FUNC1(flags, "DPGROUP_STAGINGAREA,");
        if (dwFlags & DPGROUP_LOCAL)
            FUNC1(flags, "DPGROUP_LOCAL,");
        if (dwFlags & DPGROUP_HIDDEN)
            FUNC1(flags, "DPGROUP_HIDDEN,");
    }

    /* EnumSessions */

    if (flagType & FLAGS_DPENUMSESSIONS)
    {
        if (dwFlags & DPENUMSESSIONS_AVAILABLE)
            FUNC1(flags, "DPENUMSESSIONS_AVAILABLE,");
        if (dwFlags &  DPENUMSESSIONS_ALL)
            FUNC1(flags, "DPENUMSESSIONS_ALL,");
        if (dwFlags & DPENUMSESSIONS_ASYNC)
            FUNC1(flags, "DPENUMSESSIONS_ASYNC,");
        if (dwFlags & DPENUMSESSIONS_STOPASYNC)
            FUNC1(flags, "DPENUMSESSIONS_STOPASYNC,");
        if (dwFlags & DPENUMSESSIONS_PASSWORDREQUIRED)
            FUNC1(flags, "DPENUMSESSIONS_PASSWORDREQUIRED,");
        if (dwFlags & DPENUMSESSIONS_RETURNSTATUS)
            FUNC1(flags, "DPENUMSESSIONS_RETURNSTATUS,");
    }

    /* GetCaps,
       GetPlayerCaps */

    if (flagType & FLAGS_DPGETCAPS)
    {
        if (dwFlags & DPGETCAPS_GUARANTEED)
            FUNC1(flags, "DPGETCAPS_GUARANTEED,");
    }

    /* GetGroupData,
       GetPlayerData */

    if (flagType & FLAGS_DPGET)
    {
        if (dwFlags == DPGET_REMOTE)
            FUNC1(flags, "DPGET_REMOTE,");
        if (dwFlags & DPGET_LOCAL)
            FUNC1(flags, "DPGET_LOCAL,");
    }

    /* Receive */

    if (flagType & FLAGS_DPRECEIVE)
    {
        if (dwFlags & DPRECEIVE_ALL)
            FUNC1(flags, "DPRECEIVE_ALL,");
        if (dwFlags & DPRECEIVE_TOPLAYER)
            FUNC1(flags, "DPRECEIVE_TOPLAYER,");
        if (dwFlags & DPRECEIVE_FROMPLAYER)
            FUNC1(flags, "DPRECEIVE_FROMPLAYER,");
        if (dwFlags & DPRECEIVE_PEEK)
            FUNC1(flags, "DPRECEIVE_PEEK,");
    }

    /* Send */

    if (flagType & FLAGS_DPSEND)
    {
        /*if (dwFlags == DPSEND_NONGUARANTEED)
          strcat(flags, "DPSEND_NONGUARANTEED,");*/
        if (dwFlags == DPSEND_MAX_PRIORITY) /* = DPSEND_MAX_PRI */
        {
            FUNC1(flags, "DPSEND_MAX_PRIORITY,");
        }
        else
        {
            if (dwFlags & DPSEND_GUARANTEED)
                FUNC1(flags, "DPSEND_GUARANTEED,");
            if (dwFlags & DPSEND_HIGHPRIORITY)
                FUNC1(flags, "DPSEND_HIGHPRIORITY,");
            if (dwFlags & DPSEND_OPENSTREAM)
                FUNC1(flags, "DPSEND_OPENSTREAM,");
            if (dwFlags & DPSEND_CLOSESTREAM)
                FUNC1(flags, "DPSEND_CLOSESTREAM,");
            if (dwFlags & DPSEND_SIGNED)
                FUNC1(flags, "DPSEND_SIGNED,");
            if (dwFlags & DPSEND_ENCRYPTED)
                FUNC1(flags, "DPSEND_ENCRYPTED,");
            if (dwFlags & DPSEND_LOBBYSYSTEMMESSAGE)
                FUNC1(flags, "DPSEND_LOBBYSYSTEMMESSAGE,");
            if (dwFlags & DPSEND_ASYNC)
                FUNC1(flags, "DPSEND_ASYNC,");
            if (dwFlags & DPSEND_NOSENDCOMPLETEMSG)
                FUNC1(flags, "DPSEND_NOSENDCOMPLETEMSG,");
        }
    }

    /* SetGroupData,
       SetGroupName,
       SetPlayerData,
       SetPlayerName,
       SetSessionDesc */

    if (flagType & FLAGS_DPSET)
    {
        if (dwFlags == DPSET_REMOTE)
            FUNC1(flags, "DPSET_REMOTE,");
        if (dwFlags & DPSET_LOCAL)
            FUNC1(flags, "DPSET_LOCAL,");
        if (dwFlags & DPSET_GUARANTEED)
            FUNC1(flags, "DPSET_GUARANTEED,");
    }

    /* GetMessageQueue */

    if (flagType & FLAGS_DPMESSAGEQUEUE)
    {
        if (dwFlags & DPMESSAGEQUEUE_SEND)
            FUNC1(flags, "DPMESSAGEQUEUE_SEND,");
        if (dwFlags & DPMESSAGEQUEUE_RECEIVE)
            FUNC1(flags, "DPMESSAGEQUEUE_RECEIVE,");
    }

    /* Connect */

    if (flagType & FLAGS_DPCONNECT)
    {
        if (dwFlags & DPCONNECT_RETURNSTATUS)
            FUNC1(flags, "DPCONNECT_RETURNSTATUS,");
    }

    /* Open */

    if (flagType & FLAGS_DPOPEN)
    {
        if (dwFlags & DPOPEN_JOIN)
            FUNC1(flags, "DPOPEN_JOIN,");
        if (dwFlags & DPOPEN_CREATE)
            FUNC1(flags, "DPOPEN_CREATE,");
        if (dwFlags & DPOPEN_RETURNSTATUS)
            FUNC1(flags, "DPOPEN_RETURNSTATUS,");
    }

    /* DPSESSIONDESC2 */

    if (flagType & FLAGS_DPSESSION)
    {
        if (dwFlags & DPSESSION_NEWPLAYERSDISABLED)
            FUNC1(flags, "DPSESSION_NEWPLAYERSDISABLED,");
        if (dwFlags & DPSESSION_MIGRATEHOST)
            FUNC1(flags, "DPSESSION_MIGRATEHOST,");
        if (dwFlags & DPSESSION_NOMESSAGEID)
            FUNC1(flags, "DPSESSION_NOMESSAGEID,");
        if (dwFlags & DPSESSION_JOINDISABLED)
            FUNC1(flags, "DPSESSION_JOINDISABLED,");
        if (dwFlags & DPSESSION_KEEPALIVE)
            FUNC1(flags, "DPSESSION_KEEPALIVE,");
        if (dwFlags & DPSESSION_NODATAMESSAGES)
            FUNC1(flags, "DPSESSION_NODATAMESSAGES,");
        if (dwFlags & DPSESSION_SECURESERVER)
            FUNC1(flags, "DPSESSION_SECURESERVER,");
        if (dwFlags & DPSESSION_PRIVATE)
            FUNC1(flags, "DPSESSION_PRIVATE,");
        if (dwFlags & DPSESSION_PASSWORDREQUIRED)
            FUNC1(flags, "DPSESSION_PASSWORDREQUIRED,");
        if (dwFlags & DPSESSION_MULTICASTSERVER)
            FUNC1(flags, "DPSESSION_MULTICASTSERVER,");
        if (dwFlags & DPSESSION_CLIENTSERVER)
            FUNC1(flags, "DPSESSION_CLIENTSERVER,");

        if (dwFlags & DPSESSION_DIRECTPLAYPROTOCOL)
            FUNC1(flags, "DPSESSION_DIRECTPLAYPROTOCOL,");
        if (dwFlags & DPSESSION_NOPRESERVEORDER)
            FUNC1(flags, "DPSESSION_NOPRESERVEORDER,");
        if (dwFlags & DPSESSION_OPTIMIZELATENCY)
            FUNC1(flags, "DPSESSION_OPTIMIZELATENCY,");

    }

    /* DPLCONNECTION */

    if (flagType & FLAGS_DPLCONNECTION)
    {
        if (dwFlags & DPLCONNECTION_CREATESESSION)
            FUNC1(flags, "DPLCONNECTION_CREATESESSION,");
        if (dwFlags & DPLCONNECTION_JOINSESSION)
            FUNC1(flags, "DPLCONNECTION_JOINSESSION,");
    }

    /* EnumSessionsCallback2 */

    if (flagType & FLAGS_DPESC)
    {
        if (dwFlags & DPESC_TIMEDOUT)
            FUNC1(flags, "DPESC_TIMEDOUT,");
    }

    /* GetCaps,
       GetPlayerCaps */

    if (flagType & FLAGS_DPCAPS)
    {
        if (dwFlags & DPCAPS_ISHOST)
            FUNC1(flags, "DPCAPS_ISHOST,");
        if (dwFlags & DPCAPS_GROUPOPTIMIZED)
            FUNC1(flags, "DPCAPS_GROUPOPTIMIZED,");
        if (dwFlags & DPCAPS_KEEPALIVEOPTIMIZED)
            FUNC1(flags, "DPCAPS_KEEPALIVEOPTIMIZED,");
        if (dwFlags & DPCAPS_GUARANTEEDOPTIMIZED)
            FUNC1(flags, "DPCAPS_GUARANTEEDOPTIMIZED,");
        if (dwFlags & DPCAPS_GUARANTEEDSUPPORTED)
            FUNC1(flags, "DPCAPS_GUARANTEEDSUPPORTED,");
        if (dwFlags & DPCAPS_SIGNINGSUPPORTED)
            FUNC1(flags, "DPCAPS_SIGNINGSUPPORTED,");
        if (dwFlags & DPCAPS_ENCRYPTIONSUPPORTED)
            FUNC1(flags, "DPCAPS_ENCRYPTIONSUPPORTED,");
        if (dwFlags & DPCAPS_ASYNCCANCELSUPPORTED)
            FUNC1(flags, "DPCAPS_ASYNCCANCELSUPPORTED,");
        if (dwFlags & DPCAPS_ASYNCCANCELALLSUPPORTED)
            FUNC1(flags, "DPCAPS_ASYNCCANCELALLSUPPORTED,");
        if (dwFlags & DPCAPS_SENDTIMEOUTSUPPORTED)
            FUNC1(flags, "DPCAPS_SENDTIMEOUTSUPPORTED,");
        if (dwFlags & DPCAPS_SENDPRIORITYSUPPORTED)
            FUNC1(flags, "DPCAPS_SENDPRIORITYSUPPORTED,");
        if (dwFlags & DPCAPS_ASYNCSUPPORTED)
            FUNC1(flags, "DPCAPS_ASYNCSUPPORTED,");

        if (dwFlags & DPPLAYERCAPS_LOCAL)
            FUNC1(flags, "DPPLAYERCAPS_LOCAL,");
    }

    if ((FUNC3(flags) == 0) && (dwFlags != 0))
        FUNC2(flags, "UNKNOWN");
    else
        flags[FUNC3(flags)-1] = '\0';

    return flags;
}