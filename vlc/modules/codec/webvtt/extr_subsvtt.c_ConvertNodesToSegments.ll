; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_ConvertNodesToSegments.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_ConvertNodesToSegments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_14__* }
%struct.render_variables_s = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32 }

@NODE_TEXT = common dso_local global i64 0, align 8
@NODE_TAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ruby\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32*, %struct.render_variables_s*, i32*, %struct.TYPE_13__*)* @ConvertNodesToSegments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @ConvertNodesToSegments(i32* %0, %struct.render_variables_s* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.render_variables_s*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__**, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.render_variables_s* %1, %struct.render_variables_s** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__** %9, %struct.TYPE_14__*** %10, align 8
  br label %13

13:                                               ; preds = %100, %4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %104

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %21, %16
  %18 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = icmp ne %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  store %struct.TYPE_14__** %24, %struct.TYPE_14__*** %10, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NODE_TEXT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %68

31:                                               ; preds = %25
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = bitcast %struct.TYPE_13__* %32 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %11, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %100

39:                                               ; preds = %31
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call %struct.TYPE_14__* @text_segment_New(i32* %42)
  %44 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %44, align 8
  %45 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = icmp ne %struct.TYPE_14__* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %39
  %49 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @vlc_xml_decode(i64 %58)
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %63 = call i32 @ComputeStyle(i32* %61, %struct.TYPE_13__* %62)
  %64 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  br label %67

67:                                               ; preds = %60, %39
  br label %99

68:                                               ; preds = %25
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NODE_TAG, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %68
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = bitcast %struct.TYPE_13__* %75 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %12, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @strcmp(i32 %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %74
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.render_variables_s*, %struct.render_variables_s** %6, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = call %struct.TYPE_14__* @ConvertNodesToSegments(i32* %83, %struct.render_variables_s* %84, i32* %85, %struct.TYPE_13__* %88)
  %90 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %90, align 8
  br label %97

91:                                               ; preds = %74
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = call %struct.TYPE_14__* @ConvertRubyNodeToSegment(%struct.TYPE_13__* %94)
  %96 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %96, align 8
  br label %97

97:                                               ; preds = %91, %82
  br label %98

98:                                               ; preds = %97, %68
  br label %99

99:                                               ; preds = %98, %67
  br label %100

100:                                              ; preds = %99, %38
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  store %struct.TYPE_13__* %103, %struct.TYPE_13__** %8, align 8
  br label %13

104:                                              ; preds = %13
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  ret %struct.TYPE_14__* %105
}

declare dso_local %struct.TYPE_14__* @text_segment_New(i32*) #1

declare dso_local i32 @vlc_xml_decode(i64) #1

declare dso_local i32 @ComputeStyle(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_14__* @ConvertRubyNodeToSegment(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
