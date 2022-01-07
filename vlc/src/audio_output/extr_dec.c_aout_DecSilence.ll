; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_dec.c_aout_DecSilence.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_dec.c_aout_DecSilence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i8*)* }
%struct.TYPE_14__ = type { i64, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"inserting %zu zeroes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i8*, i8*)* @aout_DecSilence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aout_DecSilence(%struct.TYPE_16__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = call %struct.TYPE_17__* @aout_owner(%struct.TYPE_16__* %13)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %7, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @samples_from_vlc_tick(i8* %17, i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = mul i64 %22, %25
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = udiv i64 %26, %29
  %31 = call %struct.TYPE_14__* @block_Alloc(i64 %30)
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %10, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %33 = icmp eq %struct.TYPE_14__* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %80

38:                                               ; preds = %3
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @msg_Dbg(%struct.TYPE_16__* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memset(i32 %44, i32 0, i32 %47)
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = call i8* (...) @vlc_tick_now()
  store i8* %61, i8** %11, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @vlc_clock_ConvertToSystem(i32 %65, i8* %66, i8* %67, i32 %71)
  store i8* %72, i8** %12, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i8*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i8*)** %74, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 %75(%struct.TYPE_16__* %76, %struct.TYPE_14__* %77, i8* %78)
  br label %80

80:                                               ; preds = %38, %37
  ret void
}

declare dso_local %struct.TYPE_17__* @aout_owner(%struct.TYPE_16__*) #1

declare dso_local i64 @samples_from_vlc_tick(i8*, i32) #1

declare dso_local %struct.TYPE_14__* @block_Alloc(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_16__*, i8*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @vlc_tick_now(...) #1

declare dso_local i8* @vlc_clock_ConvertToSystem(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
