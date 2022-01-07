; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_output.c_aout_Release.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_output.c_aout_Release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_10__* }

@memory_order_release = common dso_local global i32 0, align 4
@memory_order_acquire = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aout_Release(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.TYPE_9__* @aout_owner(i32* %6)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = load i32, i32* @memory_order_release, align 4
  %11 = call i64 @atomic_fetch_sub_explicit(i32* %9, i32 1, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %51

14:                                               ; preds = %1
  %15 = load i32, i32* @memory_order_acquire, align 4
  %16 = call i32 @atomic_thread_fence(i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = call i32 @vlc_mutex_destroy(i32* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %4, align 8
  br label %25

25:                                               ; preds = %38, %14
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %5, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = call i32 @free(%struct.TYPE_10__* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = call i32 @free(%struct.TYPE_10__* %36)
  br label %38

38:                                               ; preds = %28
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %4, align 8
  br label %25

40:                                               ; preds = %25
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i32 @vlc_mutex_destroy(i32* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = call i32 @vlc_mutex_destroy(i32* %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @VLC_OBJECT(i32* %48)
  %50 = call i32 @vlc_object_delete(i32 %49)
  br label %51

51:                                               ; preds = %40, %13
  ret void
}

declare dso_local %struct.TYPE_9__* @aout_owner(i32*) #1

declare dso_local i64 @atomic_fetch_sub_explicit(i32*, i32, i32) #1

declare dso_local i32 @atomic_thread_fence(i32) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @vlc_object_delete(i32) #1

declare dso_local i32 @VLC_OBJECT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
