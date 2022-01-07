; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv_test.c_test.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libwin-iconv/extr_win_iconv_test.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s -> %s: NG: INVALID ENCODING NAME: line=%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s(%s) -> \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s(%s%s%s): \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"RESULT(%s:%s): \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"NG: line=%d\0A\00", align 1
@_MAX_PATH = common dso_local global i32 0, align 4
@use_dll = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %27 = load i32, i32* @BUFSIZ, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %19, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %20, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @iconv_open(i8* %31, i8* %32)
  store i64 %33, i64* %25, align 8
  %34 = load i64, i64* %25, align 8
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %9
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i32, i32* %18, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %38, i32 %39)
  %41 = call i32 @exit(i32 1) #4
  unreachable

42:                                               ; preds = %9
  store i32 0, i32* @errno, align 4
  %43 = load i8*, i8** %11, align 8
  store i8* %43, i8** %21, align 8
  store i8* %30, i8** %22, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %23, align 8
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %24, align 8
  %48 = load i64, i64* %25, align 8
  %49 = call i64 @iconv(i64 %48, i8** %21, i64* %23, i8** %22, i64* %24)
  store i64 %49, i64* %26, align 8
  %50 = load i64, i64* %26, align 8
  %51 = icmp ne i64 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i64, i64* %25, align 8
  %54 = call i64 @iconv(i64 %53, i8** null, i64* null, i8** %22, i64* %24)
  store i64 %54, i64* %26, align 8
  br label %55

55:                                               ; preds = %52, %42
  %56 = load i8*, i8** %22, align 8
  store i8 0, i8* %56, align 1
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i8* @tohex(i8* %58, i32 %59)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %60)
  %62 = load i8*, i8** %13, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i8* @tohex(i8* %63, i32 %64)
  %66 = load i32, i32* %16, align 4
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %70 = load i32, i32* %16, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  br label %76

73:                                               ; preds = %55
  %74 = load i32, i32* %16, align 4
  %75 = call i8* @errstr(i32 %74)
  br label %76

76:                                               ; preds = %73, %72
  %77 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %72 ], [ %75, %73 ]
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %62, i8* %65, i8* %69, i8* %77)
  %79 = load i8*, i8** %14, align 8
  %80 = call i64 @strcmp(i8* %30, i8* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32, i32* @errno, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %99

88:                                               ; preds = %82, %76
  %89 = load i64, i64* %24, align 8
  %90 = sub i64 %28, %89
  %91 = trunc i64 %90 to i32
  %92 = call i8* @tohex(i8* %30, i32 %91)
  %93 = load i32, i32* @errno, align 4
  %94 = call i8* @errstr(i32 %93)
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %92, i8* %94)
  %96 = load i32, i32* %18, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  %98 = call i32 @exit(i32 1) #4
  unreachable

99:                                               ; preds = %86
  %100 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %100)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @iconv_open(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @iconv(i64, i8**, i64*, i8**, i64*) #2

declare dso_local i8* @tohex(i8*, i32) #2

declare dso_local i8* @errstr(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
