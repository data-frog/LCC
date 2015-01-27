#include <stdio.h>
#include "my_log.h"
#include "common.h"

int y(int x)
{
	return x;
}
int main(int argc, char *argv)
{
	//printf("\033[47;31mhello world\033[5m");
	//printf("\033[;31mhello world\033[0m\n");
#if 0
	LOG_ERRO("xxxx");
	LOG_WARN("xxxx");
	LOG_INFO("xxxx");
	LOG_DEBU("xxxx");
	Perror("xxx");
#endif
	Assert(y(1) == 0);
	return 0;
}
