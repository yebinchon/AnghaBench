; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_export.c_determine_compression_from_filename.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_export.c_determine_compression_from_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_compress = common dso_local global i64 0, align 8
@IMPORT_COMPRESS_UNKNOWN = common dso_local global i64 0, align 8
@IMPORT_COMPRESS_UNCOMPRESSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c".xz\00", align 1
@IMPORT_COMPRESS_XZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@IMPORT_COMPRESS_GZIP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@IMPORT_COMPRESS_BZIP2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @determine_compression_from_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_compression_from_filename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @arg_compress, align 8
  %4 = load i64, i64* @IMPORT_COMPRESS_UNKNOWN, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %34

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* @IMPORT_COMPRESS_UNCOMPRESSED, align 8
  store i64 %11, i64* @arg_compress, align 8
  br label %34

12:                                               ; preds = %7
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @endswith(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* @IMPORT_COMPRESS_XZ, align 8
  store i64 %17, i64* @arg_compress, align 8
  br label %34

18:                                               ; preds = %12
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @endswith(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @IMPORT_COMPRESS_GZIP, align 8
  store i64 %23, i64* @arg_compress, align 8
  br label %33

24:                                               ; preds = %18
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @endswith(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @IMPORT_COMPRESS_BZIP2, align 8
  store i64 %29, i64* @arg_compress, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i64, i64* @IMPORT_COMPRESS_UNCOMPRESSED, align 8
  store i64 %31, i64* @arg_compress, align 8
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %22
  br label %34

34:                                               ; preds = %6, %10, %33, %16
  ret void
}

declare dso_local i64 @endswith(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
