#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  subdir ;
typedef  int /*<<< orphan*/  portstr ;
struct TYPE_3__ {char* user; char* pass; char* host; int port; } ;
typedef  int /*<<< orphan*/  LineListPtr ;
typedef  TYPE_1__* FTPCIPtr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char* const,size_t const,char*,size_t) ; 
 int FUNC3 (char*) ; 
 int kMalformedURL ; 
 int kNoErr ; 
 int kTypeAscii ; 
 int kTypeBinary ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 size_t FUNC7 (char* const) ; 
 scalar_t__ FUNC8 (char* const,char*,int) ; 
 scalar_t__ FUNC9 (char* const,char*,int) ; 
 char* FUNC10 (char*,char) ; 
 char* FUNC11 (char*,char*) ; 

int
FUNC12(
	const FTPCIPtr cip,	/* area pointed to may be modified */
	char *const url,	/* always modified */
	LineListPtr cdlist,	/* always modified */
	char *const fn,		/* always modified */
	const size_t fnsize,
	int *const xtype,	/* optional; may be modified */
	int *const wantnlst	/* optional; always modified */
)
{
	char *cp;
	char *hstart, *hend;
	char *h2start;
	char *at1;
	char portstr[32];
	int port;
	int sc;
	char *lastslash;
	char *parsestr;
	char *tok;
	char subdir[128];
	char *semi;

	FUNC1(cdlist);
	*fn = '\0';
	if (wantnlst != NULL)
		*wantnlst = 0;
	if (xtype != NULL)
		*xtype = kTypeBinary;

	cp = NULL;	/* shut up warnings */
#ifdef HAVE_STRCASECMP
	if (strncasecmp(url, "<URL:ftp://", 11) == 0) {
		cp = url + strlen(url) - 1;
		if (*cp != '>')
			return (kMalformedURL);	/* missing closing > */
		*cp = '\0';
		cp = url + 11;
	} else if (strncasecmp(url, "ftp://", 6) == 0) {
		cp = url + 6;
	} else {
		return (-1);		/* not a RFC 1738 URL */
	}
#else	/* HAVE_STRCASECMP */
	if (FUNC9(url, "<URL:ftp://", 11) == 0) {
		cp = url + FUNC7(url) - 1;
		if (*cp != '>')
			return (kMalformedURL);	/* missing closing > */
		*cp = '\0';
		cp = url + 11;
	} else if (FUNC9(url, "ftp://", 6) == 0) {
		cp = url + 6;
	} else {
		return (-1);		/* not a RFC 1738 URL */
	}
#endif	/* HAVE_STRCASECMP */

	/* //<user>:<password>@<host>:<port>/<url-path> */

	at1 = NULL;
	for (hstart = cp; ; cp++) {
		if (*cp == '@') {
			if (at1 == NULL)
				at1 = cp;
			else
				return (kMalformedURL);
		} else if ((*cp == '\0') || (*cp == '/')) {
			hend = cp;
			break;
		}
	}

	sc = *hend;
	*hend = '\0';
	if (at1 == NULL) {
		/* no user or password */
		h2start = hstart;
	} else {
		*at1 = '\0';
		cp = FUNC5(hstart, ':');
		if (cp == NULL) {
			/* whole thing is the user name then */
			FUNC2(cip->user, sizeof(cip->user), hstart, (size_t) (at1 - hstart));
		} else if (FUNC5(cp + 1, ':') != NULL) {
			/* Too many colons */
			return (kMalformedURL);
		} else {
			FUNC2(cip->user, sizeof(cip->user), hstart, (size_t) (cp - hstart));
			FUNC2(cip->pass, sizeof(cip->pass), cp + 1, (size_t) (at1 - (cp + 1)));
		}
		*at1 = '@';
		h2start = at1 + 1;
	}

	cp = FUNC5(h2start, ':');
	if (cp == NULL) {
		/* whole thing is the host then */
		FUNC2(cip->host, sizeof(cip->host), h2start, (size_t) (hend - h2start));
	} else if (FUNC5(cp + 1, ':') != NULL) {
		/* Too many colons */
		return (kMalformedURL);
	} else {
		FUNC2(cip->host, sizeof(cip->host), h2start, (size_t) (cp - h2start));
		FUNC2(portstr, sizeof(portstr), cp + 1, (size_t) (hend - (cp + 1)));
		port = FUNC3(portstr);
		if (port > 0)
			cip->port = port;
	}

	*hend = (char) sc;
	if ((*hend == '\0') || ((*hend == '/') && (hend[1] == '\0'))) {
		/* no path, okay */
		return (0);
	}

	lastslash = FUNC10(hend, '/');
	if (lastslash == NULL) {
		/* no path, okay */
		return (0);
	}
	*lastslash = '\0';

	if ((semi = FUNC5(lastslash + 1, ';')) != NULL) {
		*semi++ = '\0';
#ifdef HAVE_STRCASECMP
		if (strcasecmp(semi, "type=i") == 0) {
			if (xtype != NULL)
				*xtype = kTypeBinary;
		} else if (strcasecmp(semi, "type=a") == 0) {
			if (xtype != NULL)
				*xtype = kTypeAscii;
		} else if (strcasecmp(semi, "type=b") == 0) {
			if (xtype != NULL)
				*xtype = kTypeBinary;
		} else if (strcasecmp(semi, "type=d") == 0) {
			if (wantnlst != NULL) {
				*wantnlst = 1;
				if (xtype != NULL)
					*xtype = kTypeAscii;
			} else {
				/* You didn't want these. */
				return (kMalformedURL);
			}
		}
#else	/* HAVE_STRCASECMP */
		if (FUNC6(semi, "type=i") == 0) {
			if (xtype != NULL)
				*xtype = kTypeBinary;
		} else if (FUNC6(semi, "type=a") == 0) {
			if (xtype != NULL)
				*xtype = kTypeAscii;
		} else if (FUNC6(semi, "type=b") == 0) {
			if (xtype != NULL)
				*xtype = kTypeBinary;
		} else if (FUNC6(semi, "type=d") == 0) {
			if (wantnlst != NULL) {
				*wantnlst = 1;
				if (xtype != NULL)
					*xtype = kTypeAscii;
			} else {
				/* You didn't want these. */
				return (kMalformedURL);
			}
		}
#endif	/* HAVE_STRCASECMP */
	}
	FUNC2(fn, fnsize, lastslash + 1, FUNC7(lastslash + 1));
	for (parsestr = hend; (tok = FUNC11(parsestr, "/")) != NULL; parsestr = NULL) {
		FUNC2(subdir, sizeof(subdir), tok, FUNC7(tok));
		(void) FUNC0(cdlist, subdir);
	}
	*lastslash = '/';
	return (kNoErr);
}