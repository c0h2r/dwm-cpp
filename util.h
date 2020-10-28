/* See LICENSE file for copyright and license details. */

#define MAX(A, B)               ((A) > (B) ? (A) : (B))
#define MIN(A, B)               ((A) < (B) ? (A) : (B))
#define BETWEEN(X, A, B)        ((A) <= (X) && (X) <= (B))

//void die(const char *fmt, ...);
void die(const char *fmt);
void *ecalloc(size_t nmemb, size_t size);
int normalizepath(const char *path, char **normal);
int parentdir(const char *path, char **parent);
int mkdirp(const char *path);
int nullterminate(char **str, size_t *len);
