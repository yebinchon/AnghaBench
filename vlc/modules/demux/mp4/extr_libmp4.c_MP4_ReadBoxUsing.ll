; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBoxUsing.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBoxUsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, %struct.TYPE_9__*, i32 (i32*, %struct.TYPE_9__*)*)* @MP4_ReadBoxUsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @MP4_ReadBoxUsing(i32* %0, %struct.TYPE_9__* %1, i32 (i32*, %struct.TYPE_9__*)* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32 (i32*, %struct.TYPE_9__*)*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 (i32*, %struct.TYPE_9__*)* %2, i32 (i32*, %struct.TYPE_9__*)** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = call %struct.TYPE_9__* @MP4_ReadBoxAllocateCheck(i32* %10, %struct.TYPE_9__* %11)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %8, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %37

16:                                               ; preds = %3
  %17 = load i32 (i32*, %struct.TYPE_9__*)*, i32 (i32*, %struct.TYPE_9__*)** %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = call i32 %17(i32* %18, %struct.TYPE_9__* %19)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  store i64 %29, i64* %9, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = call i32 @MP4_BoxFree(%struct.TYPE_9__* %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @MP4_Seek(i32* %32, i64 %33)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %37

35:                                               ; preds = %16
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %4, align 8
  br label %37

37:                                               ; preds = %35, %22, %15
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %38
}

declare dso_local %struct.TYPE_9__* @MP4_ReadBoxAllocateCheck(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @MP4_BoxFree(%struct.TYPE_9__*) #1

declare dso_local i32 @MP4_Seek(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
