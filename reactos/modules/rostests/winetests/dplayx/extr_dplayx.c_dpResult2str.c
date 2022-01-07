
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPSTR ;
typedef char* LPCSTR ;
typedef int HRESULT ;
 int HRESULT_CODE (int) ;
 char* get_temp_buffer () ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static LPCSTR dpResult2str(HRESULT hr)
{
    switch (hr)
    {
    case 128: return "DP_OK";
    case 189: return "DPERR_ALREADYINITIALIZED";
    case 191: return "DPERR_ACCESSDENIED";
    case 190: return "DPERR_ACTIVEPLAYERS";
    case 184: return "DPERR_BUFFERTOOSMALL";
    case 179: return "DPERR_CANTADDPLAYER";
    case 178: return "DPERR_CANTCREATEGROUP";
    case 177: return "DPERR_CANTCREATEPLAYER";
    case 175: return "DPERR_CANTCREATESESSION";
    case 171: return "DPERR_CAPSNOTAVAILABLEYET";
    case 166: return "DPERR_EXCEPTION";
    case 165: return "DPERR_GENERIC";
    case 164: return "DPERR_INVALIDFLAGS";
    case 161: return "DPERR_INVALIDOBJECT";
    case 160: return "DPERR_INVALIDPARAMS";

    case 158: return "DPERR_INVALIDPLAYER";
    case 163: return "DPERR_INVALIDGROUP";
    case 155: return "DPERR_NOCAPS";
    case 154: return "DPERR_NOCONNECTION";
    case 152: return "DPERR_NOMEMORY";

    case 151: return "DPERR_NOMESSAGES";
    case 150: return "DPERR_NONAMESERVERFOUND";
    case 148: return "DPERR_NOPLAYERS";
    case 146: return "DPERR_NOSESSIONS";
    case 141: return "DPERR_PENDING";
    case 139: return "DPERR_SENDTOOBIG";
    case 135: return "DPERR_TIMEOUT";
    case 134: return "DPERR_UNAVAILABLE";
    case 130: return "DPERR_UNSUPPORTED";
    case 183: return "DPERR_BUSY";
    case 129: return "DPERR_USERCANCEL";
    case 153: return "DPERR_NOINTERFACE";
    case 180: return "DPERR_CANNOTCREATESERVER";
    case 140: return "DPERR_PLAYERLOST";
    case 137: return "DPERR_SESSIONLOST";
    case 133: return "DPERR_UNINITIALIZED";
    case 149: return "DPERR_NONEWPLAYERS";
    case 159: return "DPERR_INVALIDPASSWORD";
    case 170: return "DPERR_CONNECTING";
    case 169: return "DPERR_CONNECTIONLOST";
    case 131: return "DPERR_UNKNOWNMESSAGE";
    case 182: return "DPERR_CANCELFAILED";
    case 157: return "DPERR_INVALIDPRIORITY";
    case 145: return "DPERR_NOTHANDLED";
    case 181: return "DPERR_CANCELLED";
    case 192: return "DPERR_ABORTED";
    case 185: return "DPERR_BUFFERTOOLARGE";
    case 176: return "DPERR_CANTCREATEPROCESS";
    case 187: return "DPERR_APPNOTSTARTED";
    case 162: return "DPERR_INVALIDINTERFACE";
    case 147: return "DPERR_NOSERVICEPROVIDER";
    case 132: return "DPERR_UNKNOWNAPPLICATION";
    case 144: return "DPERR_NOTLOBBIED";
    case 138: return "DPERR_SERVICEPROVIDERLOADED";
    case 188: return "DPERR_ALREADYREGISTERED";
    case 142: return "DPERR_NOTREGISTERED";
    case 186: return "DPERR_AUTHENTICATIONFAILED";
    case 172: return "DPERR_CANTLOADSSPI";
    case 168: return "DPERR_ENCRYPTIONFAILED";
    case 136: return "DPERR_SIGNFAILED";
    case 173: return "DPERR_CANTLOADSECURITYPACKAGE";
    case 167: return "DPERR_ENCRYPTIONNOTSUPPORTED";
    case 174: return "DPERR_CANTLOADCAPI";
    case 143: return "DPERR_NOTLOGGEDIN";
    case 156: return "DPERR_LOGONDENIED";
    case 193: return "CLASS_E_NOAGGREGATION";

    default:
    {
        LPSTR buffer = get_temp_buffer();
        sprintf( buffer, "%d", HRESULT_CODE(hr) );
        return buffer;
    }
    }
}
