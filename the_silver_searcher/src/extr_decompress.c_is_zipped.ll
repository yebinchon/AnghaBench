; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_decompress.c_is_zipped.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_decompress.c_is_zipped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AG_NO_COMPRESSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Found compress-based stream\00", align 1
@AG_COMPRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Found zip-based stream\00", align 1
@AG_ZIP = common dso_local global i32 0, align 4
@AG_GZIP = common dso_local global i32 0, align 4
@AG_XZ = common dso_local global i32 0, align 4
@LZMA_HEADER_SOMETIMES = common dso_local global i32 0, align 4
@XZ_HEADER_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_zipped(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @AG_NO_COMPRESSION, align 4
  store i32 %11, i32* %3, align 4
  br label %73

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 2
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 31
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 139
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %38

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 155
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = call i32 @log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @AG_COMPRESS, align 4
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %27
  br label %39

39:                                               ; preds = %38, %15
  br label %40

40:                                               ; preds = %39, %12
  %41 = load i32, i32* %5, align 4
  %42 = icmp sge i32 %41, 4
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 80
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 75
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = call i32 @log_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @AG_ZIP, align 4
  store i32 %69, i32* %3, align 4
  br label %73

70:                                               ; preds = %61, %55, %49, %43
  br label %71

71:                                               ; preds = %70, %40
  %72 = load i32, i32* @AG_NO_COMPRESSION, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %67, %34, %10
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @log_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
