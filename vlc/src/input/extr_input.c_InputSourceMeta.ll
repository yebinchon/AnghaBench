; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_input.c_InputSourceMeta.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_input.c_InputSourceMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i64, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__*, i32, i32, i32 }

@DEMUX_GET_META = common dso_local global i32 0, align 4
@DEMUX_HAS_UNSUPPORTED_META = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"demux meta\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"meta reader\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*, i32*)* @InputSourceMeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InputSourceMeta(i32* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @DEMUX_GET_META, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @demux_Control(i32* %15, i32 %16, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* @DEMUX_HAS_UNSUPPORTED_META, align 4
  %24 = call i64 @demux_Control(i32* %22, i32 %23, i32* %9)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %111

34:                                               ; preds = %30, %27
  %35 = load i32*, i32** %4, align 8
  %36 = call %struct.TYPE_11__* @vlc_custom_create(i32* %35, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %10, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = icmp eq %struct.TYPE_11__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %111

43:                                               ; preds = %34
  %44 = load i32*, i32** %4, align 8
  %45 = call %struct.TYPE_12__* @input_priv(i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = call i32* @module_need(%struct.TYPE_11__* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0)
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %108

54:                                               ; preds = %43
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @vlc_meta_Merge(i32* %60, i64 %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @vlc_meta_Delete(i64 %67)
  br label %69

69:                                               ; preds = %59, %54
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %69
  %75 = load i32*, i32** %4, align 8
  %76 = call %struct.TYPE_12__* @input_priv(i32* %75)
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = call i32 @vlc_mutex_lock(i32* %79)
  %81 = load i32*, i32** %4, align 8
  %82 = call %struct.TYPE_12__* @input_priv(i32* %81)
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load i32*, i32** %4, align 8
  %85 = call %struct.TYPE_12__* @input_priv(i32* %84)
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i32*, i32** %4, align 8
  %88 = call %struct.TYPE_12__* @input_priv(i32* %87)
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @AppendAttachment(i32* %83, i32* %86, i32* %89, i64 %92, i32 %95, i32* %96)
  %98 = load i32*, i32** %4, align 8
  %99 = call %struct.TYPE_12__* @input_priv(i32* %98)
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = call i32 @vlc_mutex_unlock(i32* %102)
  br label %104

104:                                              ; preds = %74, %69
  %105 = load i32*, i32** %7, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @module_unneed(i32* %105, i32* %106)
  br label %108

108:                                              ; preds = %104, %43
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %110 = call i32 @vlc_object_delete(%struct.TYPE_11__* %109)
  br label %111

111:                                              ; preds = %108, %42, %33
  ret void
}

declare dso_local i64 @demux_Control(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_11__* @vlc_custom_create(i32*, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_12__* @input_priv(i32*) #1

declare dso_local i32* @module_need(%struct.TYPE_11__*, i8*, i32*, i32) #1

declare dso_local i32 @vlc_meta_Merge(i32*, i64) #1

declare dso_local i32 @vlc_meta_Delete(i64) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @AppendAttachment(i32*, i32*, i32*, i64, i32, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @module_unneed(i32*, i32*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
