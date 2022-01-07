; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_dump.c_infile_format.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_opj_dump.c_infile_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@JPT_CFMT = common dso_local global i32 0, align 4
@JP2_RFC3745_MAGIC = common dso_local global i32 0, align 4
@JP2_MAGIC = common dso_local global i32 0, align 4
@JP2_CFMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".jp2\00", align 1
@J2K_CODESTREAM_MAGIC = common dso_local global i32 0, align 4
@J2K_CFMT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c".j2k or .jpc or .j2c\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\0A===========================================\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"The extension of this file is incorrect.\0AFOUND %s. SHOULD BE %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"===========================================\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @infile_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @infile_format(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [12 x i8], align 1
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32* @fopen(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %18 = call i32 @memset(i8* %17, i32 0, i32 12)
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @fread(i8* %19, i32 1, i32 12, i32* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @fclose(i32* %22)
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 12
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %78

27:                                               ; preds = %16
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @get_file_format(i8* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @JPT_CFMT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @JPT_CFMT, align 4
  store i32 %34, i32* %2, align 4
  br label %78

35:                                               ; preds = %27
  %36 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %37 = load i32, i32* @JP2_RFC3745_MAGIC, align 4
  %38 = call i64 @memcmp(i8* %36, i32 %37, i32 12)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %42 = load i32, i32* @JP2_MAGIC, align 4
  %43 = call i64 @memcmp(i8* %41, i32 %42, i32 4)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40, %35
  %46 = load i32, i32* @JP2_CFMT, align 4
  store i32 %46, i32* %8, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %56

47:                                               ; preds = %40
  %48 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %49 = load i32, i32* @J2K_CODESTREAM_MAGIC, align 4
  %50 = call i64 @memcmp(i8* %48, i32 %49, i32 4)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @J2K_CFMT, align 4
  store i32 %53, i32* %8, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %55

54:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  br label %78

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55, %45
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %78

62:                                               ; preds = %56
  %63 = load i8*, i8** %3, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = getelementptr inbounds i8, i8* %67, i64 -4
  store i8* %68, i8** %5, align 8
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 @fputs(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @stderr, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i8* %72, i8* %73)
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 @fputs(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %62, %60, %54, %33, %26, %15
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @get_file_format(i8*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
