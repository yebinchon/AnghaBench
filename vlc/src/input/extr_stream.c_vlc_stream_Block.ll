; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream.c_vlc_stream_Block.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream.c_vlc_stream_Block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@SSIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @vlc_stream_Block(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @SSIZE_MAX, align 8
  %10 = icmp ugt i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %41

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.TYPE_5__* @block_Alloc(i64 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %41

24:                                               ; preds = %15
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @vlc_stream_Read(i32* %25, i32 %28, i64 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = call i32 @block_Release(%struct.TYPE_5__* %34)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %41

36:                                               ; preds = %24
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %3, align 8
  br label %41

41:                                               ; preds = %36, %33, %23, %14
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %42
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_5__* @block_Alloc(i64) #1

declare dso_local i64 @vlc_stream_Read(i32*, i32, i64) #1

declare dso_local i32 @block_Release(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
