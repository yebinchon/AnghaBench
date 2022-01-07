
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 int EACCES ;
 int EADDRINUSE ;
 int EADDRNOTAVAIL ;
 int EAGAIN ;
 int ECONNABORTED ;
 int ECONNREFUSED ;
 int ECONNRESET ;
 int EFAULT ;
 int EHOSTUNREACH ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 int EMSGSIZE ;
 int ENETDOWN ;
 int ENETUNREACH ;
 int ENOBUFS ;
 int ENOMEM ;
 int ENOTCONN ;
 int EOPNOTSUPP ;
 int ESHUTDOWN ;
 int ETIMEDOUT ;
 int ETOOSMALL ;
 scalar_t__ NT_SUCCESS (int) ;
int Ext2LinuxError (NTSTATUS Status)
{
    switch (Status) {
    case 179:
        return (-EACCES);

    case 178:
        return (-EFAULT);

    case 174:
        return (-ETOOSMALL);

    case 157:
        return (-EINVAL);

    case 150:
    case 149:
        return (-EOPNOTSUPP);

    case 162:
    case 161:
        return (-EADDRNOTAVAIL);

    case 147:
    case 146:
    case 145:
    case 144:
    case 152:
    case 158:
    case 129:
        return (-ENETDOWN);

    case 176:
    case 151:
    case 139:
        return (-ENETUNREACH);

    case 153:
    case 130:
    case 169:
        return (-ECONNABORTED);

    case 137:
    case 155:
    case 168:
    case 166:
    case 140:
        return (-ECONNRESET);

    case 163:
        return (-ENOMEM);

    case 143:
    case 148:
    case 170:
    case 138:
    case 131:
    case 128:
    case 171:
    case 132:
    case 135:
        return (-ENOBUFS);

    case 159:
        return (-ENOTCONN);

    case 141:
        return (-ESHUTDOWN);

    case 133:
    case 156:
    case 154:
        return (-ETIMEDOUT);

    case 136:
    case 167:
        return (-ECONNREFUSED);

    case 164:
        return (-EHOSTUNREACH);

    case 172:
    case 142:
        return (-EAGAIN);

    case 165:
        return (-EIO);

    case 173:
    case 134:
        return (-EINTR);

    case 175:
    case 160:
        return (-EMSGSIZE);

    case 177:
        return (-EADDRINUSE);
    }

    if (NT_SUCCESS (Status))
        return 0;

    return (-EINVAL);
}
