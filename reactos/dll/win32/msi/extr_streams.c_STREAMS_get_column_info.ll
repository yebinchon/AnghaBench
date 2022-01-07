; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_STREAMS_get_column_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_streams.c_STREAMS_get_column_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"(%p, %d, %p, %p, %p, %p)\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@szName = common dso_local global i32 0, align 4
@MSITYPE_STRING = common dso_local global i64 0, align 8
@MSITYPE_VALID = common dso_local global i64 0, align 8
@MAX_STREAM_NAME_LEN = common dso_local global i64 0, align 8
@szData = common dso_local global i32 0, align 4
@MSITYPE_NULLABLE = common dso_local global i64 0, align 8
@szStreams = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i64, i32*, i64*, i32*, i32*)* @STREAMS_get_column_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @STREAMS_get_column_info(%struct.tagMSIVIEW* %0, i64 %1, i32* %2, i64* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.tagMSIVIEW*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %8, align 8
  %16 = bitcast %struct.tagMSIVIEW* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %14, align 8
  %17 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.tagMSIVIEW* %17, i64 %18, i32* %19, i64* %20, i32* %21, i32* %22)
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %6
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %6
  %33 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %33, i64* %7, align 8
  br label %84

34:                                               ; preds = %26
  %35 = load i64, i64* %9, align 8
  switch i64 %35, label %70 [
    i64 1, label %36
    i64 2, label %53
  ]

36:                                               ; preds = %34
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @szName, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i64*, i64** %11, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i64, i64* @MSITYPE_STRING, align 8
  %47 = load i64, i64* @MSITYPE_VALID, align 8
  %48 = or i64 %46, %47
  %49 = load i64, i64* @MAX_STREAM_NAME_LEN, align 8
  %50 = or i64 %48, %49
  %51 = load i64*, i64** %11, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %45, %42
  br label %70

53:                                               ; preds = %34
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @szData, align 4
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i64*, i64** %11, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i64, i64* @MSITYPE_STRING, align 8
  %64 = load i64, i64* @MSITYPE_VALID, align 8
  %65 = or i64 %63, %64
  %66 = load i64, i64* @MSITYPE_NULLABLE, align 8
  %67 = or i64 %65, %66
  %68 = load i64*, i64** %11, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %62, %59
  br label %70

70:                                               ; preds = %34, %69, %52
  %71 = load i32*, i32** %13, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @szStreams, align 4
  %75 = load i32*, i32** %13, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32*, i32** %12, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @FALSE, align 4
  %81 = load i32*, i32** %12, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %82, %32
  %85 = load i64, i64* %7, align 8
  ret i64 %85
}

declare dso_local i32 @TRACE(i8*, %struct.tagMSIVIEW*, i64, i32*, i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
