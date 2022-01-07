; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_libmp4.c_MP4_ReadBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }

@VLC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, %struct.TYPE_9__*)* @MP4_ReadBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @MP4_ReadBox(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = call %struct.TYPE_9__* @MP4_ReadBoxAllocateCheck(i32* %8, %struct.TYPE_9__* %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %36

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = call i64 @MP4_Box_Read_Specific(i32* %15, %struct.TYPE_9__* %16, %struct.TYPE_9__* %17)
  %19 = load i64, i64* @VLC_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  store i64 %28, i64* %7, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = call i32 @MP4_BoxFree(%struct.TYPE_9__* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @MP4_Seek(i32* %31, i64 %32)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %36

34:                                               ; preds = %14
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %3, align 8
  br label %36

36:                                               ; preds = %34, %21, %13
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %37
}

declare dso_local %struct.TYPE_9__* @MP4_ReadBoxAllocateCheck(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @MP4_Box_Read_Specific(i32*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @MP4_BoxFree(%struct.TYPE_9__*) #1

declare dso_local i32 @MP4_Seek(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
