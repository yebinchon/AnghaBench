; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_picture_pool.c_picture_pool_Get.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_picture_pool.c_picture_pool_Get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i64, i64, i64 (%struct.TYPE_8__*)*, i32, %struct.TYPE_8__**, i32 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@memory_order_relaxed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @picture_pool_Get(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = call i32 @vlc_mutex_lock(i32* %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %69, %1
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %99

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @ctz(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %99

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = shl i64 1, %34
  %36 = xor i64 %35, -1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = call i32 @vlc_mutex_unlock(i32* %42)
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 1, %45
  %47 = xor i64 %46, -1
  %48 = load i64, i64* %4, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %4, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %52, i64 %54
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %6, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** %58, align 8
  %60 = icmp ne i64 (%struct.TYPE_8__*)* %59, null
  br i1 %60, label %61, label %80

61:                                               ; preds = %32
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = call i64 %64(%struct.TYPE_8__* %65)
  %67 = load i64, i64* @VLC_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = call i32 @vlc_mutex_lock(i32* %71)
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = shl i64 1, %74
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = or i64 %78, %75
  store i64 %79, i64* %77, align 8
  br label %20

80:                                               ; preds = %61, %32
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call %struct.TYPE_8__* @picture_pool_ClonePicture(%struct.TYPE_9__* %81, i32 %82)
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %7, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = icmp ne %struct.TYPE_8__* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* @memory_order_relaxed, align 4
  %96 = call i32 @atomic_fetch_add_explicit(i64* %94, i32 1, i32 %95)
  br label %97

97:                                               ; preds = %86, %80
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %2, align 8
  br label %103

99:                                               ; preds = %31, %20
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = call i32 @vlc_mutex_unlock(i32* %101)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %103

103:                                              ; preds = %99, %97
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %104
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ctz(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_8__* @picture_pool_ClonePicture(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @atomic_fetch_add_explicit(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
