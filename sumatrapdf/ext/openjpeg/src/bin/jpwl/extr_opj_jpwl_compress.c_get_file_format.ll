; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_opj_jpwl_compress.c_get_file_format.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_opj_jpwl_compress.c_get_file_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_file_format.extension = internal global [15 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"pgx\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pnm\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pgm\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pbm\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pam\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bmp\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"tif\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"tga\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"j2k\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"jp2\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"j2c\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"jpc\00", align 1
@get_file_format.format = internal constant [15 x i32] [i32 133, i32 131, i32 131, i32 131, i32 131, i32 131, i32 136, i32 128, i32 130, i32 129, i32 132, i32 135, i32 134, i32 135, i32 135], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_file_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_file_format(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @strrchr(i8* %6, i8 signext 46)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %32, %11
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %16, 15
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [15 x i8*], [15 x i8*]* @get_file_format.extension, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcasecmp(i8* %19, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [15 x i32], [15 x i32]* @get_file_format.format, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %14

35:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %26, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
