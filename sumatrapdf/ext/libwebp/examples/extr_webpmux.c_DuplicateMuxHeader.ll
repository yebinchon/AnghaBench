; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_DuplicateMuxHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_DuplicateMuxHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@WEBP_MUX_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Error (%s) handling animation params.\0A\00", align 1
@End = common dso_local global i32 0, align 4
@kFourccList = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Error transferring metadata in DuplicateMux().\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @DuplicateMuxHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @DuplicateMuxHeader(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %3, align 8
  %10 = call i32* (...) @WebPMuxNew()
  store i32* %10, i32** %4, align 8
  store i32 1, i32* %8, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %80

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @WebPMuxGetAnimationParams(i32* %15, i32* %5)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @WEBP_MUX_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @WebPMuxSetAnimationParams(i32* %21, i32* %5)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @WEBP_MUX_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @ErrorString(i64 %27)
  %29 = load i32, i32* @End, align 4
  %30 = call i32 @ERROR_GOTO2(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %20
  br label %33

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32, %31
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %68, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %35, 3
  br i1 %36, label %37, label %71

37:                                               ; preds = %34
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** @kFourccList, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @WebPMuxGetChunk(i32* %38, i32 %43, %struct.TYPE_4__* %9)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @WEBP_MUX_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** @kFourccList, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @WebPMuxSetChunk(i32* %53, i32 %58, %struct.TYPE_4__* %9, i32 1)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @WEBP_MUX_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load i32, i32* @End, align 4
  %65 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %52
  br label %67

67:                                               ; preds = %66, %48, %37
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %34

71:                                               ; preds = %34
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @WebPMuxDelete(i32* %76)
  store i32* null, i32** %4, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32*, i32** %4, align 8
  store i32* %79, i32** %2, align 8
  br label %80

80:                                               ; preds = %78, %13
  %81 = load i32*, i32** %2, align 8
  ret i32* %81
}

declare dso_local i32* @WebPMuxNew(...) #1

declare dso_local i64 @WebPMuxGetAnimationParams(i32*, i32*) #1

declare dso_local i64 @WebPMuxSetAnimationParams(i32*, i32*) #1

declare dso_local i32 @ERROR_GOTO2(i8*, i32, i32) #1

declare dso_local i32 @ErrorString(i64) #1

declare dso_local i64 @WebPMuxGetChunk(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @WebPMuxSetChunk(i32*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ERROR_GOTO1(i8*, i32) #1

declare dso_local i32 @WebPMuxDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
