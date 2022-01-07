; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_picture_pool.c_picture_pool_Wait.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_picture_pool.c_picture_pool_Wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i64, i64, i64 (%struct.TYPE_8__*)*, i32, i32, %struct.TYPE_8__**, i64 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@memory_order_relaxed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @picture_pool_Wait(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %9 = call i32 @vlc_mutex_lock(i32* %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  br label %16

16:                                               ; preds = %30, %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  %29 = call i32 @vlc_mutex_unlock(i32* %28)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %107

30:                                               ; preds = %21
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = call i32 @vlc_cond_wait(i32* %32, i32* %34)
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ctz(i64 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = xor i64 %43, -1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = and i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = call i32 @vlc_mutex_unlock(i32* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 %56
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %5, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** %60, align 8
  %62 = icmp ne i64 (%struct.TYPE_8__*)* %61, null
  br i1 %62, label %63, label %88

63:                                               ; preds = %36
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i64 (%struct.TYPE_8__*)*, i64 (%struct.TYPE_8__*)** %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = call i64 %66(%struct.TYPE_8__* %67)
  %69 = load i64, i64* @VLC_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %63
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = call i32 @vlc_mutex_lock(i32* %73)
  %75 = load i32, i32* %4, align 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 1, %76
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = or i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  %84 = call i32 @vlc_cond_signal(i32* %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = call i32 @vlc_mutex_unlock(i32* %86)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %107

88:                                               ; preds = %63, %36
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call %struct.TYPE_8__* @picture_pool_ClonePicture(%struct.TYPE_9__* %89, i32 %90)
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %6, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = icmp ne %struct.TYPE_8__* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* @memory_order_relaxed, align 4
  %104 = call i32 @atomic_fetch_add_explicit(i64* %102, i32 1, i32 %103)
  br label %105

105:                                              ; preds = %94, %88
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %106, %struct.TYPE_8__** %2, align 8
  br label %107

107:                                              ; preds = %105, %71, %26
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %108
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @ctz(i64) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local %struct.TYPE_8__* @picture_pool_ClonePicture(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @atomic_fetch_add_explicit(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
