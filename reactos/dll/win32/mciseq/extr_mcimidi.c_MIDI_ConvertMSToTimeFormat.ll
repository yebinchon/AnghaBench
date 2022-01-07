; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciseq/extr_mcimidi.c_MIDI_ConvertMSToTimeFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciseq/extr_mcimidi.c_MIDI_ConvertMSToTimeFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TIME_MS_IN_ONE_HOUR = common dso_local global i32 0, align 4
@TIME_MS_IN_ONE_MINUTE = common dso_local global i32 0, align 4
@TIME_MS_IN_ONE_SECOND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"There must be some bad bad programmer\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Bad time format %u!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @MIDI_ConvertMSToTimeFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MIDI_ConvertMSToTimeFormat(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %77 [
    i32 131, label %15
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %5, align 4
  br label %82

17:                                               ; preds = %2, %2, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @TIME_MS_IN_ONE_HOUR, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @TIME_MS_IN_ONE_HOUR, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @TIME_MS_IN_ONE_MINUTE, align 4
  %27 = sdiv i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @TIME_MS_IN_ONE_MINUTE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* @TIME_MS_IN_ONE_SECOND, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %63 [
    i32 130, label %38
    i32 129, label %47
    i32 128, label %54
  ]

38:                                               ; preds = %17
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 %39, 3
  %41 = sdiv i32 %40, 125
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 %42, 125
  %44 = sdiv i32 %43, 3
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %65

47:                                               ; preds = %17
  %48 = load i32, i32* %6, align 4
  %49 = sdiv i32 %48, 40
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %50, 40
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %65

54:                                               ; preds = %17
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %55, 3
  %57 = sdiv i32 %56, 100
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = mul nsw i32 %58, 100
  %60 = sdiv i32 %59, 3
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %65

63:                                               ; preds = %17
  %64 = call i32 @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %54, %47, %38
  %66 = load i32, i32* %10, align 4
  %67 = shl i32 %66, 24
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %68, 16
  %70 = or i32 %67, %69
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %70, %72
  %74 = load i32, i32* %7, align 4
  %75 = shl i32 %74, 0
  %76 = or i32 %73, %75
  store i32 %76, i32* %5, align 4
  br label %82

77:                                               ; preds = %2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %65, %15
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
