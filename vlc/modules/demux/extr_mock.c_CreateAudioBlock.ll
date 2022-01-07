; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_mock.c_CreateAudioBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_mock.c_CreateAudioBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.mock_track = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, %struct.mock_track*, i32)* @CreateAudioBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @CreateAudioBlock(i32* %0, %struct.mock_track* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mock_track*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.mock_track* %1, %struct.mock_track** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.mock_track*, %struct.mock_track** %6, align 8
  %13 = getelementptr inbounds %struct.mock_track, %struct.mock_track* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @samples_from_vlc_tick(i32 %11, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.mock_track*, %struct.mock_track** %6, align 8
  %20 = getelementptr inbounds %struct.mock_track, %struct.mock_track* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %18, %23
  %25 = load %struct.mock_track*, %struct.mock_track** %6, align 8
  %26 = getelementptr inbounds %struct.mock_track, %struct.mock_track* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %24, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.TYPE_8__* @block_Alloc(i32 %31)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %10, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %45

36:                                               ; preds = %3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memset(i32 %39, i32 0, i32 %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %4, align 8
  br label %45

45:                                               ; preds = %36, %35
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %46
}

declare dso_local i32 @samples_from_vlc_tick(i32, i32) #1

declare dso_local %struct.TYPE_8__* @block_Alloc(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
