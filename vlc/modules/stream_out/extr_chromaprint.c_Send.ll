; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_chromaprint.c_Send.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_chromaprint.c_Send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_14__*, i64 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@BYTESPERSAMPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"feed error\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Fingerprint collection finished\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, %struct.TYPE_14__*)* @Send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Send(%struct.TYPE_11__* %0, i8* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %9, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %21 = icmp ne %struct.TYPE_13__* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = call i32 @block_ChainRelease(%struct.TYPE_14__* %23)
  %25 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %25, i32* %4, align 4
  br label %107

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %98, %26
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = icmp ne %struct.TYPE_14__* %28, null
  br i1 %29, label %30, label %105

30:                                               ; preds = %27
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @BYTESPERSAMPLE, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = sdiv i32 %33, %38
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %98, label %49

49:                                               ; preds = %30
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %49
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %98

59:                                               ; preds = %54
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @BYTESPERSAMPLE, align 4
  %71 = sdiv i32 %69, %70
  %72 = call i32 @chromaprint_feed(i32 %62, i32* %66, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %59
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = call i32 @msg_Warn(%struct.TYPE_11__* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %59
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %87, label %97

87:                                               ; preds = %77
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = call i32 @msg_Dbg(%struct.TYPE_11__* %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %87, %77
  br label %98

98:                                               ; preds = %97, %54, %49, %30
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %10, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %103 = call i32 @block_Release(%struct.TYPE_14__* %102)
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %104, %struct.TYPE_14__** %7, align 8
  br label %27

105:                                              ; preds = %27
  %106 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %22
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @block_ChainRelease(%struct.TYPE_14__*) #1

declare dso_local i32 @chromaprint_feed(i32, i32*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @block_Release(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
