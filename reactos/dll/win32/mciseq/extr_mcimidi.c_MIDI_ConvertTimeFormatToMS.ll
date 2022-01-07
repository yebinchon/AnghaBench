; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciseq/extr_mcimidi.c_MIDI_ConvertTimeFormatToMS.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciseq/extr_mcimidi.c_MIDI_ConvertTimeFormatToMS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TIME_MS_IN_ONE_SECOND = common dso_local global i32 0, align 4
@TIME_MS_IN_ONE_MINUTE = common dso_local global i32 0, align 4
@TIME_MS_IN_ONE_HOUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Bad time format %u!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @MIDI_ConvertTimeFormatToMS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MIDI_ConvertTimeFormatToMS(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %82 [
    i32 131, label %9
    i32 130, label %11
    i32 129, label %35
    i32 128, label %58
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %5, align 4
  br label %87

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @HIWORD(i32 %12)
  %14 = call i32 @HIBYTE(i32 %13)
  %15 = mul nsw i32 %14, 125
  %16 = sdiv i32 %15, 3
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @HIWORD(i32 %17)
  %19 = call i32 @LOBYTE(i32 %18)
  %20 = load i32, i32* @TIME_MS_IN_ONE_SECOND, align 4
  %21 = mul nsw i32 %19, %20
  %22 = add nsw i32 %16, %21
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @LOWORD(i32 %23)
  %25 = call i32 @HIBYTE(i32 %24)
  %26 = load i32, i32* @TIME_MS_IN_ONE_MINUTE, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 %22, %27
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @LOWORD(i32 %29)
  %31 = call i32 @LOBYTE(i32 %30)
  %32 = load i32, i32* @TIME_MS_IN_ONE_HOUR, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %28, %33
  store i32 %34, i32* %5, align 4
  br label %87

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @HIWORD(i32 %36)
  %38 = call i32 @HIBYTE(i32 %37)
  %39 = mul nsw i32 %38, 40
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @HIWORD(i32 %40)
  %42 = call i32 @LOBYTE(i32 %41)
  %43 = load i32, i32* @TIME_MS_IN_ONE_SECOND, align 4
  %44 = mul nsw i32 %42, %43
  %45 = add nsw i32 %39, %44
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @LOWORD(i32 %46)
  %48 = call i32 @HIBYTE(i32 %47)
  %49 = load i32, i32* @TIME_MS_IN_ONE_MINUTE, align 4
  %50 = mul nsw i32 %48, %49
  %51 = add nsw i32 %45, %50
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @LOWORD(i32 %52)
  %54 = call i32 @LOBYTE(i32 %53)
  %55 = load i32, i32* @TIME_MS_IN_ONE_HOUR, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 %51, %56
  store i32 %57, i32* %5, align 4
  br label %87

58:                                               ; preds = %2
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @HIWORD(i32 %59)
  %61 = call i32 @HIBYTE(i32 %60)
  %62 = mul nsw i32 %61, 100
  %63 = sdiv i32 %62, 3
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @HIWORD(i32 %64)
  %66 = call i32 @LOBYTE(i32 %65)
  %67 = load i32, i32* @TIME_MS_IN_ONE_SECOND, align 4
  %68 = mul nsw i32 %66, %67
  %69 = add nsw i32 %63, %68
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @LOWORD(i32 %70)
  %72 = call i32 @HIBYTE(i32 %71)
  %73 = load i32, i32* @TIME_MS_IN_ONE_MINUTE, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %69, %74
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @LOWORD(i32 %76)
  %78 = call i32 @LOBYTE(i32 %77)
  %79 = load i32, i32* @TIME_MS_IN_ONE_HOUR, align 4
  %80 = mul nsw i32 %78, %79
  %81 = add nsw i32 %75, %80
  store i32 %81, i32* %5, align 4
  br label %87

82:                                               ; preds = %2
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %82, %58, %35, %11, %9
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @HIBYTE(i32) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
