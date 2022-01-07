; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_Play.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_pulse.c_Play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32* }
%struct.TYPE_10__ = type { i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"cannot begin write\00", align 1
@PA_SEEK_RELATIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"cannot write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @Play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Play(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pa_threaded_mainloop_lock(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i64 @pa_stream_is_corked(i32* %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @stream_start(i32* %28, %struct.TYPE_11__* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %3
  br label %33

33:                                               ; preds = %80, %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @pa_stream_begin_write(i32* %42, i8** %9, i64* %10)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @vlc_pa_error(%struct.TYPE_11__* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %38
  %52 = load i8*, i8** %9, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @memcpy(i8* %52, i64 %55, i64 %56)
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i32, i32* @PA_SEEK_RELATIVE, align 4
  %72 = call i64 @pa_stream_write(i32* %68, i8* %69, i64 %70, i32* null, i32 0, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %51
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @vlc_pa_error(%struct.TYPE_11__* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74, %51
  br label %33

81:                                               ; preds = %33
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = call i32 @block_Release(%struct.TYPE_10__* %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @pa_threaded_mainloop_unlock(i32 %86)
  ret void
}

declare dso_local i32 @pa_threaded_mainloop_lock(i32) #1

declare dso_local i64 @pa_stream_is_corked(i32*) #1

declare dso_local i32 @stream_start(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @pa_stream_begin_write(i32*, i8**, i64*) #1

declare dso_local i32 @vlc_pa_error(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i64 @pa_stream_write(i32*, i8*, i64, i32*, i32, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_10__*) #1

declare dso_local i32 @pa_threaded_mainloop_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
