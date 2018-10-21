#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <linux/spi/spidev.h>

MODULE = Linux::Spidev		PACKAGE = Linux::Spidev		


IV
message(PerlIO *fh, HV *transfer)
CODE:
    RETVAL = 1;
OUTPUT:
    RETVAL

IV
rd_mode(PerlIO *fh, U8 mode)
CODE:
    RETVAL = ioctl(PerlIO_fileno(fh), SPI_IOC_RD_MODE, &mode);
OUTPUT:
    RETVAL
    mode

IV
wr_mode(PerlIO *fh, U8 mode)
CODE:
    RETVAL = ioctl(PerlIO_fileno(fh), SPI_IOC_WR_MODE, &mode);
OUTPUT:
    RETVAL

IV
rd_lsb_first(PerlIO *fh, U8 lsbf)
CODE:
    RETVAL = ioctl(PerlIO_fileno(fh), SPI_IOC_RD_LSB_FIRST, &lsbf);
OUTPUT:
    RETVAL

IV
wr_lsb_first(PerlIO *fh, U8 lsbf)
CODE:
    RETVAL = ioctl(PerlIO_fileno(fh), SPI_IOC_WR_LSB_FIRST, &lsbf);
OUTPUT:
    RETVAL

IV
rd_bits_per_word(PerlIO *fh, U8 size)
CODE:
    RETVAL = ioctl(PerlIO_fileno(fh), SPI_IOC_RD_BITS_PER_WORD, &size);
OUTPUT:
    RETVAL

IV
wr_bits_per_word(PerlIO *fh, U8 size)
CODE:
    RETVAL = ioctl(PerlIO_fileno(fh), SPI_IOC_WR_BITS_PER_WORD, &size);
OUTPUT:
    RETVAL

IV
rd_max_speed_hz(PerlIO *fh, U32 speed)
CODE:
    RETVAL = ioctl(PerlIO_fileno(fh), SPI_IOC_RD_MAX_SPEED_HZ, &speed);
OUTPUT:
    RETVAL

IV
wr_max_speed_hz(PerlIO *fh, U32 speed)
CODE:
    RETVAL = ioctl(PerlIO_fileno(fh), SPI_IOC_WR_MAX_SPEED_HZ, &speed);
OUTPUT:
    RETVAL

IV
rd_mode32(PerlIO *fh, U32 mode)
CODE:
    RETVAL = ioctl(PerlIO_fileno(fh), SPI_IOC_RD_MODE32, &mode);
OUTPUT:
    RETVAL

IV
wr_mode32(PerlIO *fh, U32 mode)
CODE:
    RETVAL = ioctl(PerlIO_fileno(fh), SPI_IOC_WR_MODE32, &mode);
OUTPUT:
    RETVAL
