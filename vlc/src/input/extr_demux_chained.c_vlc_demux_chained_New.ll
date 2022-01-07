; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_demux_chained.c_vlc_demux_chained_New.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_demux_chained.c_vlc_demux_chained_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, i32, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64 }

@vlc_demux_chained_Thread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @vlc_demux_chained_New(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = add i64 64, %10
  %12 = add i64 %11, 1
  %13 = call %struct.TYPE_8__* @malloc(i64 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %78

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = call i32* @vlc_stream_fifo_New(i32* %21, i32* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = call i32 @free(%struct.TYPE_8__* %32)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %78

34:                                               ; preds = %20
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strcpy(i32 %49, i8* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = call i32 @vlc_mutex_init(i32* %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i32, i32* @vlc_demux_chained_Thread, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = load i32, i32* @VLC_THREAD_PRIORITY_INPUT, align 4
  %60 = call i64 @vlc_clone(i32* %56, i32 %57, %struct.TYPE_8__* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %34
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @vlc_stream_Delete(i32 %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @vlc_stream_fifo_Close(i32* %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = call i32 @vlc_mutex_destroy(i32* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = call i32 @free(%struct.TYPE_8__* %74)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %76

76:                                               ; preds = %62, %34
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %4, align 8
  br label %78

78:                                               ; preds = %76, %31, %19
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %79
}

declare dso_local %struct.TYPE_8__* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @vlc_stream_fifo_New(i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @vlc_stream_Delete(i32) #1

declare dso_local i32 @vlc_stream_fifo_Close(i32*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
