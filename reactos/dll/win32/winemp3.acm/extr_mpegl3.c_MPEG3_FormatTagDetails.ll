; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winemp3.acm/extr_mpegl3.c_MPEG3_FormatTagDetails.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winemp3.acm/extr_mpegl3.c_MPEG3_FormatTagDetails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@MPEG3_FormatTagDetails.szPcm = internal constant [4 x i8] c"PCM\00", align 1
@MPEG3_FormatTagDetails.szMpeg3 = internal constant [6 x i8] c"MPeg3\00", align 1
@MPEG3_FormatTagDetails.szMpeg = internal constant [5 x i8] c"MPeg\00", align 1
@ACMERR_NOTPOSSIBLE = common dso_local global i32 0, align 4
@WAVE_FORMAT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unsupported query %08x\0A\00", align 1
@MMSYSERR_NOTSUPPORTED = common dso_local global i32 0, align 4
@ACMDRIVERDETAILS_SUPPORTF_CODEC = common dso_local global i32 0, align 4
@NUM_PCM_FORMATS = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @MPEG3_FormatTagDetails to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MPEG3_FormatTagDetails(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %41 [
    i32 132, label %7
    i32 131, label %15
    i32 133, label %25
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @ACMERR_NOTPOSSIBLE, align 4
  store i32 %13, i32* %3, align 4
  br label %88

14:                                               ; preds = %7
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @WAVE_FORMAT_UNKNOWN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 2, i32* %23, align 4
  br label %45

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %2, %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %38 [
    i32 128, label %29
    i32 129, label %32
    i32 130, label %35
  ]

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %40

32:                                               ; preds = %25
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 2, i32* %37, align 4
  br label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @ACMERR_NOTPOSSIBLE, align 4
  store i32 %39, i32* %3, align 4
  br label %88

40:                                               ; preds = %35, %32, %29
  br label %45

41:                                               ; preds = %2
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @MMSYSERR_NOTSUPPORTED, align 4
  store i32 %44, i32* %3, align 4
  br label %88

45:                                               ; preds = %40, %21, %14
  %46 = load i32, i32* @ACMDRIVERDETAILS_SUPPORTF_CODEC, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %86 [
    i32 0, label %52
    i32 1, label %64
    i32 2, label %75
  ]

52:                                               ; preds = %45
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 128, i32* %54, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i32 4, i32* %56, align 4
  %57 = load i32, i32* @NUM_PCM_FORMATS, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @lstrcpyW(i32 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @MPEG3_FormatTagDetails.szPcm, i64 0, i64 0))
  br label %86

64:                                               ; preds = %45
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 129, i32* %66, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i32 4, i32* %68, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  store i32 0, i32* %70, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @lstrcpyW(i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @MPEG3_FormatTagDetails.szMpeg3, i64 0, i64 0))
  br label %86

75:                                               ; preds = %45
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 130, i32* %77, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i32 4, i32* %79, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  store i32 0, i32* %81, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @lstrcpyW(i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @MPEG3_FormatTagDetails.szMpeg, i64 0, i64 0))
  br label %86

86:                                               ; preds = %45, %75, %64, %52
  %87 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %41, %38, %12
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @lstrcpyW(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
