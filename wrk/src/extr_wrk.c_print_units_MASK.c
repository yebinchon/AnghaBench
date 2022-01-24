__attribute__((used)) static void FUNC0(long double n, char *(*fmt)(long double), int width) {
    char *msg = fmt(n);
    int len = strlen(msg), pad = 2;

    if (isalpha(msg[len-1])) pad--;
    if (FUNC0(msg[len-2])) pad--;
    width -= pad;

    printf("%*.*s%.*s", width, width, msg, pad, "  ");

    FUNC0(msg);
}