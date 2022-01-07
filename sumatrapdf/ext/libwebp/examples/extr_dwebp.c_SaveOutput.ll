; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_dwebp.c_SaveOutput.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_dwebp.c_SaveOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@verbose = common dso_local global i64 0, align 8
@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Saved to stdout\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Saved file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Time to write output: %.3fs\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Error writing to stdout !!\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Error writing file %s !!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @SaveOutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SaveOutput(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @WSTRCMP(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i1 [ false, %3 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %21 = load i64, i64* @verbose, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @StopwatchReset(i32* %9)
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @WebPSaveImage(i32* %26, i32 %27, i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %25
  %33 = load i32, i32* @quiet, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %46

41:                                               ; preds = %35
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = call i32 @WFPRINTF(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %44)
  br label %46

46:                                               ; preds = %41, %38
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i64, i64* @verbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = call double @StopwatchReadAndReset(i32* %9)
  store double %51, double* %10, align 8
  %52 = load i32, i32* @stderr, align 4
  %53 = load double, double* %10, align 8
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), double %53)
  br label %55

55:                                               ; preds = %50, %47
  br label %68

56:                                               ; preds = %25
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %67

62:                                               ; preds = %56
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = call i32 @WFPRINTF(i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32* %65)
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @WSTRCMP(i8*, i8*) #1

declare dso_local i32 @StopwatchReset(i32*) #1

declare dso_local i32 @WebPSaveImage(i32*, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @WFPRINTF(i32, i8*, i32*) #1

declare dso_local double @StopwatchReadAndReset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
