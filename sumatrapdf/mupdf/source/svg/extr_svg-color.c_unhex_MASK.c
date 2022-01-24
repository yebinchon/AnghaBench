__attribute__((used)) static int FUNC0(int chr)
{
	const char *hextable = "0123456789abcdef";
	return strchr(hextable, (chr|32)) - hextable;
}