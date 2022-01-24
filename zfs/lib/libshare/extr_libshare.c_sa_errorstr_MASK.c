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
typedef  int /*<<< orphan*/  errstr ;

/* Variables and functions */
#define  SA_BAD_PATH 161 
#define  SA_BAD_VALUE 160 
#define  SA_BUSY 159 
#define  SA_CONFIG_ERR 158 
#define  SA_DUPLICATE_NAME 157 
#define  SA_INVALID_NAME 156 
#define  SA_INVALID_PATH 155 
#define  SA_INVALID_PROTOCOL 154 
#define  SA_INVALID_SECURITY 153 
#define  SA_MULTIPLE_ERROR 152 
#define  SA_NOT_ALLOWED 151 
#define  SA_NOT_IMPLEMENTED 150 
#define  SA_NOT_SHARED 149 
#define  SA_NOT_SUPPORTED 148 
#define  SA_NO_MEMORY 147 
#define  SA_NO_PERMISSION 146 
#define  SA_NO_PROPERTIES 145 
#define  SA_NO_SECTION 144 
#define  SA_NO_SUCH_GROUP 143 
#define  SA_NO_SUCH_PATH 142 
#define  SA_NO_SUCH_PROP 141 
#define  SA_NO_SUCH_RESOURCE 140 
#define  SA_NO_SUCH_SECTION 139 
#define  SA_NO_SUCH_SECURITY 138 
#define  SA_OK 137 
#define  SA_PASSWORD_ENC 136 
#define  SA_PATH_IS_PARENTDIR 135 
#define  SA_PATH_IS_SUBDIR 134 
#define  SA_PROP_SHARE_ONLY 133 
#define  SA_RESOURCE_REQUIRED 132 
#define  SA_SHARE_EXISTS 131 
#define  SA_SYNTAX_ERR 130 
#define  SA_SYSTEM_ERR 129 
#define  SA_VALUE_CONFLICT 128 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

char *
FUNC2(int err)
{
	static char errstr[32];
	char *ret = NULL;

	switch (err) {
	case SA_OK:
		ret = FUNC0(TEXT_DOMAIN, "ok");
		break;
	case SA_NO_SUCH_PATH:
		ret = FUNC0(TEXT_DOMAIN, "path doesn't exist");
		break;
	case SA_NO_MEMORY:
		ret = FUNC0(TEXT_DOMAIN, "no memory");
		break;
	case SA_DUPLICATE_NAME:
		ret = FUNC0(TEXT_DOMAIN, "name in use");
		break;
	case SA_BAD_PATH:
		ret = FUNC0(TEXT_DOMAIN, "bad path");
		break;
	case SA_NO_SUCH_GROUP:
		ret = FUNC0(TEXT_DOMAIN, "no such group");
		break;
	case SA_CONFIG_ERR:
		ret = FUNC0(TEXT_DOMAIN, "configuration error");
		break;
	case SA_SYSTEM_ERR:
		ret = FUNC0(TEXT_DOMAIN, "system error");
		break;
	case SA_SYNTAX_ERR:
		ret = FUNC0(TEXT_DOMAIN, "syntax error");
		break;
	case SA_NO_PERMISSION:
		ret = FUNC0(TEXT_DOMAIN, "no permission");
		break;
	case SA_BUSY:
		ret = FUNC0(TEXT_DOMAIN, "busy");
		break;
	case SA_NO_SUCH_PROP:
		ret = FUNC0(TEXT_DOMAIN, "no such property");
		break;
	case SA_INVALID_NAME:
		ret = FUNC0(TEXT_DOMAIN, "invalid name");
		break;
	case SA_INVALID_PROTOCOL:
		ret = FUNC0(TEXT_DOMAIN, "invalid protocol");
		break;
	case SA_NOT_ALLOWED:
		ret = FUNC0(TEXT_DOMAIN, "operation not allowed");
		break;
	case SA_BAD_VALUE:
		ret = FUNC0(TEXT_DOMAIN, "bad property value");
		break;
	case SA_INVALID_SECURITY:
		ret = FUNC0(TEXT_DOMAIN, "invalid security type");
		break;
	case SA_NO_SUCH_SECURITY:
		ret = FUNC0(TEXT_DOMAIN, "security type not found");
		break;
	case SA_VALUE_CONFLICT:
		ret = FUNC0(TEXT_DOMAIN, "property value conflict");
		break;
	case SA_NOT_IMPLEMENTED:
		ret = FUNC0(TEXT_DOMAIN, "not implemented");
		break;
	case SA_INVALID_PATH:
		ret = FUNC0(TEXT_DOMAIN, "invalid path");
		break;
	case SA_NOT_SUPPORTED:
		ret = FUNC0(TEXT_DOMAIN, "operation not supported");
		break;
	case SA_PROP_SHARE_ONLY:
		ret = FUNC0(TEXT_DOMAIN, "property not valid for group");
		break;
	case SA_NOT_SHARED:
		ret = FUNC0(TEXT_DOMAIN, "not shared");
		break;
	case SA_NO_SUCH_RESOURCE:
		ret = FUNC0(TEXT_DOMAIN, "no such resource");
		break;
	case SA_RESOURCE_REQUIRED:
		ret = FUNC0(TEXT_DOMAIN, "resource name required");
		break;
	case SA_MULTIPLE_ERROR:
		ret = FUNC0(TEXT_DOMAIN, "errors from multiple protocols");
		break;
	case SA_PATH_IS_SUBDIR:
		ret = FUNC0(TEXT_DOMAIN, "path is a subpath of share");
		break;
	case SA_PATH_IS_PARENTDIR:
		ret = FUNC0(TEXT_DOMAIN, "path is parent of a share");
		break;
	case SA_NO_SECTION:
		ret = FUNC0(TEXT_DOMAIN, "protocol requires a section");
		break;
	case SA_NO_PROPERTIES:
		ret = FUNC0(TEXT_DOMAIN, "properties not found");
		break;
	case SA_NO_SUCH_SECTION:
		ret = FUNC0(TEXT_DOMAIN, "section not found");
		break;
	case SA_PASSWORD_ENC:
		ret = FUNC0(TEXT_DOMAIN, "passwords must be encrypted");
		break;
	case SA_SHARE_EXISTS:
		ret = FUNC0(TEXT_DOMAIN, "path or file is already shared");
		break;
	default:
		(void) FUNC1(errstr, sizeof (errstr),
		    FUNC0(TEXT_DOMAIN, "unknown %d"), err);
		ret = errstr;
	}
	return (ret);
}