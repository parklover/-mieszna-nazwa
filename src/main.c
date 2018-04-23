#include "stm32f4xx.h"
#include "system_stm32f4xx.h"
#include "delay.h"
#include "ff.h"

FATFS fatfs;
FIL file;
FRESULT fr = 0;
DIR Direction;
FILINFO fileInfo;
UINT read_bytes;

int main( void )
{

	unsigned int br;
	FRESULT res;

	SystemInit();
	delay_init(80);
	SPI_SD_Init();
	disk_initialize(0);

	char* file_read_buffer = "";

	int FILE_READ_BUFFER_SIZE;

	fr = f_mount(&fatfs,"",1);

	if(fr == FR_OK)
	{
		if((res = f_open(&file, "peja_997.mp3", FA_OPEN_ALWAYS | FA_READ | FA_WRITE)) == 0){

		f_read(&file, file_read_buffer, FILE_READ_BUFFER_SIZE, &br);

		}
	}

	for(;;){

	}
	return 0;
}
