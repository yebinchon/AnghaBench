; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_pcmconverter.c_PCM_FormatTagDetails.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_pcmconverter.c_PCM_FormatTagDetails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64*, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"(%p, %08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"not possible\0A\00", align 1
@ACMERR_NOTPOSSIBLE = common dso_local global i32 0, align 4
@WAVE_FORMAT_PCM = common dso_local global i32 0, align 4
@WAVE_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Unsupported query %08x\0A\00", align 1
@MMSYSERR_NOTSUPPORTED = common dso_local global i32 0, align 4
@ACMDRIVERDETAILS_SUPPORTF_CONVERTER = common dso_local global i32 0, align 4
@PCM_Formats = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @PCM_FormatTagDetails to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PCM_FormatTagDetails(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %6, i32 %7)
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %45 [
    i32 129, label %10
    i32 130, label %19
    i32 128, label %29
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @ACMERR_NOTPOSSIBLE, align 4
  store i32 %17, i32* %3, align 4
  br label %69

18:                                               ; preds = %10
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ACMERR_NOTPOSSIBLE, align 4
  store i32 %27, i32* %3, align 4
  br label %69

28:                                               ; preds = %19
  br label %49

29:                                               ; preds = %2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @WAVE_FORMAT_UNKNOWN, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ACMERR_NOTPOSSIBLE, align 4
  store i32 %43, i32* %3, align 4
  br label %69

44:                                               ; preds = %35, %29
  br label %49

45:                                               ; preds = %2
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @MMSYSERR_NOTSUPPORTED, align 4
  store i32 %48, i32* %3, align 4
  br label %69

49:                                               ; preds = %44, %28, %18
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @WAVE_FORMAT_PCM, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 4, i32* %56, align 8
  %57 = load i32, i32* @ACMDRIVERDETAILS_SUPPORTF_CONVERTER, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @PCM_Formats, align 4
  %61 = call i32 @ARRAY_SIZE(i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %49, %45, %41, %25, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
