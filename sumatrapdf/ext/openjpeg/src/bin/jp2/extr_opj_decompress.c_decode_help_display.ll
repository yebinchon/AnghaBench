; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_decompress.c_decode_help_display.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_decompress.c_decode_help_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [179 x i8] c"\0AThis is the opj_decompress utility from the OpenJPEG project.\0AIt decompresses JPEG 2000 codestreams to various image formats.\0AIt has been compiled against openjp2 library v%s.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [215 x i8] c"Parameters:\0A-----------\0A\0A  -ImgDir <directory> \0A\09Image file Directory path \0A  -OutFor <PBM|PGM|PPM|PNM|PAM|PGX|PNG|BMP|TIF|RAW|RAWL|TGA>\0A    REQUIRED only if -ImgDir is used\0A\09Output format for decompressed images.\0A\00", align 1
@.str.2 = private unnamed_addr constant [198 x i8] c"  -i <compressed file>\0A    REQUIRED only if an Input image directory is not specified\0A    Currently accepts J2K-files, JP2-files and JPT-files. The file type\0A    is identified based on its suffix.\0A\00", align 1
@.str.3 = private unnamed_addr constant [490 x i8] c"  -o <decompressed file>\0A    REQUIRED\0A    Currently accepts formats specified above (see OutFor option)\0A    Binary data is written to the file (not ascii). If a PGX\0A    filename is given, there will be as many output files as there are\0A    components: an indice starting from 0 will then be appended to the\0A    output filename, just before the \22pgx\22 extension. If a PGM filename\0A    is given and there are more than one component, only the first component\0A    will be written to the file.\0A\00", align 1
@.str.4 = private unnamed_addr constant [493 x i8] c"  -r <reduce factor>\0A    Set the number of highest resolution levels to be discarded. The\0A    image resolution is effectively divided by 2 to the power of the\0A    number of discarded levels. The reduce factor is limited by the\0A    smallest total number of decomposition levels among tiles.\0A  -l <number of quality layers to decode>\0A    Set the maximum number of quality layers to decode. If there are\0A    less quality layers than the specified number, all the quality layers\0A    are decoded.\0A\00", align 1
@.str.5 = private unnamed_addr constant [323 x i8] c"  -x  \0A    Create an index file *.Idx (-x index_name.Idx) \0A  -d <x0,y0,x1,y1>\0A    OPTIONAL\0A    Decoding area\0A    By default all the image is decoded.\0A  -t <tile_number>\0A    OPTIONAL\0A    Set the tile number of the decoded tile. Follow the JPEG2000 convention from left-up to bottom-up\0A    By default all tiles are decoded.\0A\00", align 1
@.str.6 = private unnamed_addr constant [126 x i8] c"  -p <comp 0 precision>[C|S][,<comp 1 precision>[C|S][,...]]\0A    OPTIONAL\0A    Force the precision (bit depth) of components.\0A\00", align 1
@.str.7 = private unnamed_addr constant [392 x i8] c"    There shall be at least 1 value. Theres no limit on the number of values (comma separated, last values ignored if too much values).\0A    If there are less values than components, the last value is used for remaining components.\0A    If 'C' is specified (default), values are clipped.\0A    If 'S' is specified, values are scaled.\0A    A 0 value can be specified (meaning original bit depth).\0A\00", align 1
@.str.8 = private unnamed_addr constant [162 x i8] c"  -c first_comp_index[,second_comp_index][,...]\0A    OPTIONAL\0A    To limit the number of components to decoded.\0A    Component indices are numbered starting at 0.\0A\00", align 1
@.str.9 = private unnamed_addr constant [206 x i8] c"  -force-rgb\0A    Force output image colorspace to RGB\0A  -upsample\0A    Downsampled components will be upsampled to image size\0A  -split-pnm\0A    Split output components to different files when writing to PNM\0A\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"  -threads <num_threads>\0A    Number of threads to use for decoding.\0A\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"  -quiet\0A    Disable output from the library and other output.\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JPWL_EXPECTED_COMPONENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @decode_help_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_help_display() #0 {
  %1 = load i32, i32* @stdout, align 4
  %2 = call i8* (...) @opj_version()
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = load i32, i32* @stdout, align 4
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([215 x i8], [215 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([490 x i8], [490 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([493 x i8], [493 x i8]* @.str.4, i64 0, i64 0))
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([323 x i8], [323 x i8]* @.str.5, i64 0, i64 0))
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.6, i64 0, i64 0))
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([392 x i8], [392 x i8]* @.str.7, i64 0, i64 0))
  %18 = load i32, i32* @stdout, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.8, i64 0, i64 0))
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.9, i64 0, i64 0))
  %22 = call i64 (...) @opj_has_thread_support()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %0
  %25 = load i32, i32* @stdout, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %0
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0))
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @opj_version(...) #1

declare dso_local i64 @opj_has_thread_support(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
