; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_AllocateInputSample.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_mft.c_AllocateInputSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (i32, i32**)*, i32 (i32**)* }
%struct.TYPE_10__ = type { i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error in AllocateInputSample()\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32**, i32)* @AllocateInputSample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocateInputSample(%struct.TYPE_8__* %0, i32 %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_10__, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %10, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %11, align 8
  %22 = load i32**, i32*** %8, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %13, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @IMFTransform_GetInputStreamInfo(i32 %25, i32 %26, %struct.TYPE_10__* %14)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %69

32:                                               ; preds = %4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32 (i32**)*, i32 (i32**)** %34, align 8
  %36 = call i32 %35(i32** %13)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %69

41:                                               ; preds = %32
  store i32* null, i32** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @__MAX(i32 %43, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32 (i32, i32**)*, i32 (i32, i32**)** %47, align 8
  %49 = load i32, i32* %16, align 4
  %50 = call i32 %48(i32 %49, i32** %15)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i64 @FAILED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %69

55:                                               ; preds = %41
  %56 = load i32*, i32** %13, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @IMFSample_AddBuffer(i32* %56, i32* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = call i32 @IMFMediaBuffer_Release(i32* %59)
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @FAILED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %69

65:                                               ; preds = %55
  %66 = load i32*, i32** %13, align 8
  %67 = load i32**, i32*** %8, align 8
  store i32* %66, i32** %67, align 8
  %68 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %68, i32* %5, align 4
  br label %85

69:                                               ; preds = %64, %54, %40, %31
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = call i32 @msg_Err(%struct.TYPE_8__* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %72 = load i32*, i32** %13, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @IMFSample_Release(i32* %75)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32*, i32** %15, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @IMFMediaBuffer_Release(i32* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %65
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @IMFTransform_GetInputStreamInfo(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @IMFSample_AddBuffer(i32*, i32*) #1

declare dso_local i32 @IMFMediaBuffer_Release(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @IMFSample_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
