__attribute__((used)) static int FUNC0(const char *s, unsigned *ret) {
        const char *p;
        int r;

        FUNC0(s);
        FUNC0(ret);

        /* Returns 1 if plus, 0 if no plus, negative on error */

        p = FUNC0(s, "+");
        if (p)
                s = FUNC0(s, p - s);

        r = FUNC0(s, ret);
        if (r < 0)
                return r;

        return !!p;
}