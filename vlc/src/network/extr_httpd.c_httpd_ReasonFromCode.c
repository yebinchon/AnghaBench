__attribute__((used)) static const char *httpd_ReasonFromCode(unsigned i_code)
{
    typedef struct
    {
        unsigned i_code;
        const char psz_reason[36];
    } http_status_info;

    static const http_status_info http_reason[] =
    {


        { 200, "OK" },
        { 301, "Moved permanently" },






        { 401, "Unauthorized" },

        { 403, "Forbidden" },
        { 404, "Not found" },
        { 405, "Method not allowed" },
        { 454, "Session not found" },
        { 455, "Method not valid in this State" },
        { 456, "Header field not valid for resource" },
        { 457, "Invalid range" },

        { 459, "Aggregate operation not allowed" },
        { 460, "Non-aggregate operation not allowed" },
        { 461, "Unsupported transport" },

        { 500, "Internal server error" },
        { 501, "Not implemented" },

        { 503, "Service unavailable" },

        { 505, "Protocol version not supported" },
        { 551, "Option not supported" },
        { 999, "" }
    };

    static const char psz_fallback_reason[5][16] = {
        "Continue", "OK", "Found", "Client error", "Server error"
    };

    assert((i_code >= 100) && (i_code <= 599));

    const http_status_info *p = http_reason;
    while (i_code < p->i_code)
        p++;

    if (p->i_code == i_code)
        return p->psz_reason;

    return psz_fallback_reason[(i_code / 100) - 1];
}
