
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsIDOMKeyEvent ;
typedef int nsIDOMEvent ;
typedef int UINT32 ;
typedef int HTMLDocument ;
 int IID_nsIDOMKeyEvent ;
 int TRACE (char*) ;
 int handle_arrow_key (int *,int *,char const* const*) ;
 int nsIDOMEvent_QueryInterface (int *,int *,void**) ;
 int nsIDOMKeyEvent_GetKeyCode (int *,int*) ;
 int nsIDOMKeyEvent_Release (int *) ;

void handle_edit_event(HTMLDocument *This, nsIDOMEvent *event)
{
    nsIDOMKeyEvent *key_event;
    UINT32 code;

    nsIDOMEvent_QueryInterface(event, &IID_nsIDOMKeyEvent, (void**)&key_event);

    nsIDOMKeyEvent_GetKeyCode(key_event, &code);

    switch(code) {
    case 156: {
        static const char * const cmds[] = {
            151,
            128,
            138,
            130
        };

        TRACE("left\n");
        handle_arrow_key(This, key_event, cmds);
        break;
    }
    case 155: {
        static const char * const cmds[] = {
            152,
            129,
            139,
            131
        };

        TRACE("right\n");
        handle_arrow_key(This, key_event, cmds);
        break;
    }
    case 154: {
        static const char * const cmds[] = {
            146,
            143,
            135,
            133
        };

        TRACE("up\n");
        handle_arrow_key(This, key_event, cmds);
        break;
    }
    case 159: {
        static const char * const cmds[] = {
            147,
            144,
            136,
            134
        };

        TRACE("down\n");
        handle_arrow_key(This, key_event, cmds);
        break;
    }
    case 160: {
        static const char * const cmds[] = {
            150,
            149,
            ((void*)0), ((void*)0)
        };

        TRACE("delete\n");
        handle_arrow_key(This, key_event, cmds);
        break;
    }
    case 157: {
        static const char * const cmds[] = {
            153,
            142,
            141,
            132
        };

        TRACE("home\n");
        handle_arrow_key(This, key_event, cmds);
        break;
    }
    case 158: {
        static const char * const cmds[] = {
            148,
            145,
            137,
            140
        };

        TRACE("end\n");
        handle_arrow_key(This, key_event, cmds);
        break;
    }
    }

    nsIDOMKeyEvent_Release(key_event);
}
