; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_filter.c_vlc_stream_FilterNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_filter.c_vlc_stream_FilterNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_9__*, i32*, i32 }
%struct.vlc_stream_filter_private = type { i32* }

@StreamDelete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"stream filter\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"stream_filter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @vlc_stream_FilterNew(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vlc_stream_filter_private*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = call i32 @vlc_object_parent(%struct.TYPE_9__* %12)
  %14 = load i32, i32* @StreamDelete, align 4
  %15 = call %struct.TYPE_9__* @vlc_stream_CustomNew(i32 %13, i32 %14, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %7, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %84

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = call %struct.vlc_stream_filter_private* @vlc_stream_Private(%struct.TYPE_9__* %20)
  store %struct.vlc_stream_filter_private* %21, %struct.vlc_stream_filter_private** %6, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %61

31:                                               ; preds = %19
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i8* @strdup(i32* %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %77

47:                                               ; preds = %31
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i8* @strdup(i32* %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  br label %60

60:                                               ; preds = %52, %47
  br label %61

61:                                               ; preds = %60, %19
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32* @module_need(%struct.TYPE_9__* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 1)
  %68 = load %struct.vlc_stream_filter_private*, %struct.vlc_stream_filter_private** %6, align 8
  %69 = getelementptr inbounds %struct.vlc_stream_filter_private, %struct.vlc_stream_filter_private* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = load %struct.vlc_stream_filter_private*, %struct.vlc_stream_filter_private** %6, align 8
  %71 = getelementptr inbounds %struct.vlc_stream_filter_private, %struct.vlc_stream_filter_private* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %77

75:                                               ; preds = %61
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %3, align 8
  br label %84

77:                                               ; preds = %74, %46
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @free(i32* %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = call i32 @stream_CommonDelete(%struct.TYPE_9__* %82)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %84

84:                                               ; preds = %77, %75, %18
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %85
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @vlc_stream_CustomNew(i32, i32, i32, i8*) #1

declare dso_local i32 @vlc_object_parent(%struct.TYPE_9__*) #1

declare dso_local %struct.vlc_stream_filter_private* @vlc_stream_Private(%struct.TYPE_9__*) #1

declare dso_local i8* @strdup(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @module_need(%struct.TYPE_9__*, i8*, i8*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @stream_CommonDelete(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
