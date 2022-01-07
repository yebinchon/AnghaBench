; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_dump.c_decode_help_display.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_dump.c_decode_help_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [171 x i8] c"\0AThis is the opj_dump utility from the OpenJPEG project.\0AIt dumps JPEG 2000 codestream info to stdout or a given file.\0AIt has been compiled against openjp2 library v%s.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"-----------\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"  -ImgDir <directory>\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\09Image file Directory path \0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"  -i <compressed file>\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"    REQUIRED only if an Input image directory not specified\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"    Currently accepts J2K-files, JP2-files and JPT-files. The file type\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"    is identified based on its suffix.\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"  -o <output file>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"    OPTIONAL\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"    Output file where file info will be dump.\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"    By default it will be in the stdout.\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"  -v \00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"    Enable informative messages\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"    By default verbose mode is off.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @decode_help_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_help_display() #0 {
  %1 = load i32, i32* @stdout, align 4
  %2 = call i8* (...) @opj_version()
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = load i32, i32* @stdout, align 4
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %16 = load i32, i32* @stdout, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0))
  %18 = load i32, i32* @stdout, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0))
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %26 = load i32, i32* @stdout, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  %28 = load i32, i32* @stdout, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0))
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %34 = load i32, i32* @stdout, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  %38 = load i32, i32* @stdout, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @opj_version(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
