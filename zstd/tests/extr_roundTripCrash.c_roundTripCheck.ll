; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_roundTripCrash.c_roundTripCheck.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_roundTripCrash.c_roundTripCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"not enough memory ! \0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"roundTripTest error : %s \0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Incorrect regenerated size : %u != %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Silent decoding corruption !!!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @roundTripCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roundTripCheck(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @ZSTD_compressBound(i64 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i8* @malloc(i64 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i8* @malloc(i64 %15)
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @cctxParamRoundTripTest(i8* %30, i64 %31, i8* %32, i64 %33, i8* %34, i64 %35)
  br label %45

37:                                               ; preds = %26
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @roundTripTest(i8* %38, i64 %39, i8* %40, i64 %41, i8* %42, i64 %43)
  br label %45

45:                                               ; preds = %37, %29
  %46 = phi i64 [ %36, %29 ], [ %44, %37 ]
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @ZSTD_isError(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @stderr, align 4
  %52 = load i64, i64* %10, align 8
  %53 = call i8* @ZSTD_getErrorName(i64 %52)
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = call i32 @crash(i32 1)
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i32, i32* @stderr, align 4
  %62 = load i64, i64* %10, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i64, i64* %5, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %65)
  %67 = call i32 @crash(i32 1)
  br label %68

68:                                               ; preds = %60, %56
  %69 = load i8*, i8** %4, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @checkBuffers(i8* %69, i8* %70, i64 %71)
  %73 = load i64, i64* %5, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 @crash(i32 1)
  br label %79

79:                                               ; preds = %75, %68
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @free(i8* %82)
  ret void
}

declare dso_local i64 @ZSTD_compressBound(i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @cctxParamRoundTripTest(i8*, i64, i8*, i64, i8*, i64) #1

declare dso_local i64 @roundTripTest(i8*, i64, i8*, i64, i8*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i8* @ZSTD_getErrorName(i64) #1

declare dso_local i32 @crash(i32) #1

declare dso_local i64 @checkBuffers(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
