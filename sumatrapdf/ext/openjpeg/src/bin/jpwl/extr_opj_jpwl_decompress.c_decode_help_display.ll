; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_opj_jpwl_decompress.c_decode_help_display.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_opj_jpwl_decompress.c_decode_help_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"HELP for j2k_to_image\0A----\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"- the -h option displays this help information on screen\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"List of parameters for the JPEG 2000 decoder:\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"  -ImgDir \0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\09Image file Directory path \0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"  -OutFor \0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"    REQUIRED only if -ImgDir is used\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"\09  Need to specify only format without filename <BMP>  \0A\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"    Currently accepts PGM, PPM, PNM, PGX, PNG, BMP, TIF, RAW and TGA formats\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"  -i <compressed file>\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"    REQUIRED only if an Input image directory not specified\0A\00", align 1
@.str.12 = private unnamed_addr constant [73 x i8] c"    Currently accepts J2K-files, JP2-files and JPT-files. The file type\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"    is identified based on its suffix.\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"  -o <decompressed file>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"    REQUIRED\0A\00", align 1
@.str.16 = private unnamed_addr constant [76 x i8] c"    Currently accepts PGM, PPM, PNM, PGX, PNG, BMP, TIF, RAW and TGA files\0A\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"    Binary data is written to the file (not ascii). If a PGX\0A\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"    filename is given, there will be as many output files as there are\0A\00", align 1
@.str.19 = private unnamed_addr constant [72 x i8] c"    components: an indice starting from 0 will then be appended to the\0A\00", align 1
@.str.20 = private unnamed_addr constant [73 x i8] c"    output filename, just before the \22pgx\22 extension. If a PGM filename\0A\00", align 1
@.str.21 = private unnamed_addr constant [78 x i8] c"    is given and there are more than one component, only the first component\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"    will be written to the file.\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"  -r <reduce factor>\0A\00", align 1
@.str.24 = private unnamed_addr constant [70 x i8] c"    Set the number of highest resolution levels to be discarded. The\0A\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"    image resolution is effectively divided by 2 to the power of the\0A\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"    number of discarded levels. The reduce factor is limited by the\0A\00", align 1
@.str.27 = private unnamed_addr constant [64 x i8] c"    smallest total number of decomposition levels among tiles.\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"  -l <number of quality layers to decode>\0A\00", align 1
@.str.29 = private unnamed_addr constant [70 x i8] c"    Set the maximum number of quality layers to decode. If there are\0A\00", align 1
@.str.30 = private unnamed_addr constant [75 x i8] c"    less quality layers than the specified number, all the quality layers\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"    are decoded.\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"  -x  \0A\00", align 1
@.str.33 = private unnamed_addr constant [53 x i8] c"    Create an index file *.Idx (-x index_name.Idx) \0A\00", align 1
@JPWL_EXPECTED_COMPONENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_help_display() #0 {
  %1 = load i32, i32* @stdout, align 4
  %2 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stdout, align 4
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @stdout, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %11 = load i32, i32* @stdout, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %13 = load i32, i32* @stdout, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.9, i64 0, i64 0))
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %25 = load i32, i32* @stdout, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0))
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.12, i64 0, i64 0))
  %29 = load i32, i32* @stdout, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %35 = load i32, i32* @stdout, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.16, i64 0, i64 0))
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0))
  %39 = load i32, i32* @stdout, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.18, i64 0, i64 0))
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.19, i64 0, i64 0))
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.20, i64 0, i64 0))
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.21, i64 0, i64 0))
  %47 = load i32, i32* @stdout, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  %51 = load i32, i32* @stdout, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.24, i64 0, i64 0))
  %53 = load i32, i32* @stdout, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.25, i64 0, i64 0))
  %55 = load i32, i32* @stdout, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0))
  %57 = load i32, i32* @stdout, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.27, i64 0, i64 0))
  %59 = load i32, i32* @stdout, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0))
  %61 = load i32, i32* @stdout, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.29, i64 0, i64 0))
  %63 = load i32, i32* @stdout, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.30, i64 0, i64 0))
  %65 = load i32, i32* @stdout, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0))
  %67 = load i32, i32* @stdout, align 4
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0))
  %69 = load i32, i32* @stdout, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.33, i64 0, i64 0))
  %71 = load i32, i32* @stdout, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
