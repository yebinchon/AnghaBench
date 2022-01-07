; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_dec.c_aout_DecSynchronize.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_dec.c_aout_DecSynchronize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 (%struct.TYPE_12__*, i64*)* }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i64, i64)* @aout_DecSynchronize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aout_DecSynchronize(%struct.TYPE_12__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = call %struct.TYPE_13__* @aout_owner(%struct.TYPE_12__* %11)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64 (%struct.TYPE_12__*, i64*)*, i64 (%struct.TYPE_12__*, i64*)** %14, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = call i64 %15(%struct.TYPE_12__* %16, i64* %8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %68

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @vlc_clock_ConvertToSystem(i32 %30, i64 %33, i64 %34, i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %5, align 8
  %42 = sub nsw i64 %40, %41
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %26
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub nsw i64 %48, %49
  %51 = call i32 @aout_DecSilence(%struct.TYPE_12__* %46, i64 %47, i64 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64 (%struct.TYPE_12__*, i64*)*, i64 (%struct.TYPE_12__*, i64*)** %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = call i64 %54(%struct.TYPE_12__* %55, i64* %8)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %68

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %26
  br label %61

61:                                               ; preds = %60, %20
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @aout_RequestRetiming(%struct.TYPE_12__* %62, i64 %65, i64 %66)
  br label %68

68:                                               ; preds = %61, %58, %19
  ret void
}

declare dso_local %struct.TYPE_13__* @aout_owner(%struct.TYPE_12__*) #1

declare dso_local i64 @vlc_clock_ConvertToSystem(i32, i64, i64, i32) #1

declare dso_local i32 @aout_DecSilence(%struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @aout_RequestRetiming(%struct.TYPE_12__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
