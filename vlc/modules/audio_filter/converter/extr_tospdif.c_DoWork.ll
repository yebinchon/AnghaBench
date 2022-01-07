; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_tospdif.c_DoWork.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_tospdif.c_DoWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_25__* (%struct.TYPE_23__*, %struct.TYPE_25__*)* @DoWork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_25__* @DoWork(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__* %10, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %6, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %36 [
    i32 133, label %16
    i32 130, label %20
    i32 129, label %24
    i32 128, label %24
    i32 131, label %28
    i32 132, label %32
  ]

16:                                               ; preds = %2
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %19 = call i32 @write_buffer_ac3(%struct.TYPE_23__* %17, %struct.TYPE_25__* %18)
  store i32 %19, i32* %7, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = call i32 @write_buffer_eac3(%struct.TYPE_23__* %21, %struct.TYPE_25__* %22)
  store i32 %23, i32* %7, align 4
  br label %38

24:                                               ; preds = %2, %2
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %27 = call i32 @write_buffer_truehd(%struct.TYPE_23__* %25, %struct.TYPE_25__* %26)
  store i32 %27, i32* %7, align 4
  br label %38

28:                                               ; preds = %2
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = call i32 @write_buffer_dtshd(%struct.TYPE_23__* %29, %struct.TYPE_25__* %30)
  store i32 %31, i32* %7, align 4
  br label %38

32:                                               ; preds = %2
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %35 = call i32 @write_buffer_dts(%struct.TYPE_23__* %33, %struct.TYPE_25__* %34)
  store i32 %35, i32* %7, align 4
  br label %38

36:                                               ; preds = %2
  %37 = call i32 (...) @vlc_assert_unreachable()
  br label %38

38:                                               ; preds = %36, %32, %28, %24, %20, %16
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %61 [
    i32 134, label %40
    i32 135, label %57
    i32 136, label %58
  ]

40:                                               ; preds = %38
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  store %struct.TYPE_25__* %54, %struct.TYPE_25__** %6, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %56, align 8
  br label %61

57:                                               ; preds = %38
  br label %61

58:                                               ; preds = %38
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %60 = call i32 @Flush(%struct.TYPE_23__* %59)
  br label %61

61:                                               ; preds = %38, %58, %57, %40
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %63 = call i32 @block_Release(%struct.TYPE_25__* %62)
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  ret %struct.TYPE_25__* %64
}

declare dso_local i32 @write_buffer_ac3(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @write_buffer_eac3(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @write_buffer_truehd(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @write_buffer_dtshd(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @write_buffer_dts(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @Flush(%struct.TYPE_23__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
