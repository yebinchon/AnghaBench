; ModuleID = '/home/carl/AnghaBench/reactos/drivers/multimedia/audio/sb16_nt4.old/extr_control.c_StartSoundOutput.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/multimedia/audio/sb16_nt4.old/extr_control.c_StartSoundOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Initializing output with %d channels at %d bits/sample\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Finished programming the DSP\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@first_byte = common dso_local global i32 0, align 4
@second_byte = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StartSoundOutput(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  store i32 198, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %5, align 4
  br label %61

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 8
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 16
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %5, align 4
  br label %61

30:                                               ; preds = %25, %22
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %34 [
    i32 8, label %32
    i32 16, label %33
  ]

32:                                               ; preds = %30
  store i32 198, i32* %10, align 4
  br label %34

33:                                               ; preds = %30
  store i32 182, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %33, %32
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %38 [
    i32 1, label %36
    i32 2, label %37
  ]

36:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %38

37:                                               ; preds = %34
  store i32 32, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %37, %36
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 1024
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %38
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @SbWriteData(%struct.TYPE_4__* %45, i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @SbWriteData(%struct.TYPE_4__* %48, i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = srem i32 %52, 256
  %54 = call i32 @SbWriteData(%struct.TYPE_4__* %51, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sdiv i32 %56, 256
  %58 = call i32 @SbWriteData(%struct.TYPE_4__* %55, i32 %57)
  %59 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %44, %28, %20
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @SbWriteData(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
