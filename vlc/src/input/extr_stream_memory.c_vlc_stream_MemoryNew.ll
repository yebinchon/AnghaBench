; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_memory.c_vlc_stream_MemoryNew.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_memory.c_vlc_stream_MemoryNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.vlc_stream_memory_private = type { i64, i32*, i64 }

@stream_MemoryPreserveDelete = common dso_local global i32 0, align 4
@stream_MemoryDelete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@Read = common dso_local global i32 0, align 4
@Seek = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @vlc_stream_MemoryNew(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vlc_stream_memory_private*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @stream_MemoryPreserveDelete, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @stream_MemoryDelete, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = call %struct.TYPE_5__* @vlc_stream_CustomNew(i32* %12, i32 %20, i32 24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %11, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  br label %49

28:                                               ; preds = %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = call %struct.vlc_stream_memory_private* @vlc_stream_Private(%struct.TYPE_5__* %29)
  store %struct.vlc_stream_memory_private* %30, %struct.vlc_stream_memory_private** %10, align 8
  %31 = load %struct.vlc_stream_memory_private*, %struct.vlc_stream_memory_private** %10, align 8
  %32 = getelementptr inbounds %struct.vlc_stream_memory_private, %struct.vlc_stream_memory_private* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.vlc_stream_memory_private*, %struct.vlc_stream_memory_private** %10, align 8
  %35 = getelementptr inbounds %struct.vlc_stream_memory_private, %struct.vlc_stream_memory_private* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.vlc_stream_memory_private*, %struct.vlc_stream_memory_private** %10, align 8
  %38 = getelementptr inbounds %struct.vlc_stream_memory_private, %struct.vlc_stream_memory_private* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load i32, i32* @Read, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @Seek, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @Control, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %5, align 8
  br label %49

49:                                               ; preds = %28, %27
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %50
}

declare dso_local %struct.TYPE_5__* @vlc_stream_CustomNew(i32*, i32, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.vlc_stream_memory_private* @vlc_stream_Private(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
