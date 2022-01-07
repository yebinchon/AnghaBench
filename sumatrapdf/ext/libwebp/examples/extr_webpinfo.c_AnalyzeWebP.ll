; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_AnalyzeWebP.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_AnalyzeWebP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }

@WEBP_INFO_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"No error detected.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Errors detected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32*)* @AnalyzeWebP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AnalyzeWebP(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i64, i64* @WEBP_INFO_OK, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @InitMemBuffer(i32* %6, i32* %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call i64 @ParseRIFFHeader(%struct.TYPE_8__* %11, i32* %6)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @WEBP_INFO_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %53

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @WEBP_INFO_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call i64 @MemDataSize(i32* %6)
  %24 = icmp sgt i64 %23, 0
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ]
  br i1 %26, label %27, label %37

27:                                               ; preds = %25
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = call i64 @ParseChunk(%struct.TYPE_8__* %28, i32* %6, i32* %5)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @WEBP_INFO_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %53

34:                                               ; preds = %27
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = call i64 @ProcessChunk(i32* %5, %struct.TYPE_8__* %35)
  store i64 %36, i64* %7, align 8
  br label %18

37:                                               ; preds = %25
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @WEBP_INFO_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %53

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = call i32 @ShowSummary(%struct.TYPE_8__* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = call i64 @Validate(%struct.TYPE_8__* %51)
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %50, %41, %33, %16
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @WEBP_INFO_OK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %66

64:                                               ; preds = %58
  %65 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %53
  %68 = load i64, i64* %7, align 8
  ret i64 %68
}

declare dso_local i32 @InitMemBuffer(i32*, i32*) #1

declare dso_local i64 @ParseRIFFHeader(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @MemDataSize(i32*) #1

declare dso_local i64 @ParseChunk(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i64 @ProcessChunk(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ShowSummary(%struct.TYPE_8__*) #1

declare dso_local i64 @Validate(%struct.TYPE_8__*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
