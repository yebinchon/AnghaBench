; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_ConvertRubyNodeToSegment.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_ConvertRubyNodeToSegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64 }

@NODE_TEXT = common dso_local global i64 0, align 8
@NODE_TAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*)* @ConvertRubyNodeToSegment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ConvertRubyNodeToSegment(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__** %3, %struct.TYPE_13__*** %4, align 8
  store i8* null, i8** %5, align 8
  br label %9

9:                                                ; preds = %73, %1
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  br i1 %11, label %12, label %77

12:                                               ; preds = %9
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NODE_TEXT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = bitcast %struct.TYPE_12__* %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %6, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  br label %72

24:                                               ; preds = %12
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NODE_TAG, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = bitcast %struct.TYPE_12__* %31 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %7, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @strcmp(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %70, label %38

38:                                               ; preds = %30
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %70

43:                                               ; preds = %38
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @NODE_TEXT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %43
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = bitcast %struct.TYPE_9__* %54 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %8, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call %struct.TYPE_13__* @text_segment_ruby_New(i8* %56, i8* %59)
  %61 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %61, align 8
  %62 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = icmp ne %struct.TYPE_13__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %51
  %66 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store %struct.TYPE_13__** %68, %struct.TYPE_13__*** %4, align 8
  br label %69

69:                                               ; preds = %65, %51
  br label %70

70:                                               ; preds = %69, %43, %38, %30
  store i8* null, i8** %5, align 8
  br label %71

71:                                               ; preds = %70, %24
  br label %72

72:                                               ; preds = %71, %18
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %2, align 8
  br label %9

77:                                               ; preds = %9
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = icmp ne %struct.TYPE_13__* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = call i32* @text_segment_FromRuby(%struct.TYPE_13__* %81)
  br label %84

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %80
  %85 = phi i32* [ %82, %80 ], [ null, %83 ]
  ret i32* %85
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @text_segment_ruby_New(i8*, i8*) #1

declare dso_local i32* @text_segment_FromRuby(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
