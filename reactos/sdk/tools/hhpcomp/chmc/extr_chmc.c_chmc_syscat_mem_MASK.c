__attribute__((used)) static inline void *FUNC0(void *d, void *s, unsigned long len)
{
	memcpy(d, s, len);

	return (char *)d + len;
}