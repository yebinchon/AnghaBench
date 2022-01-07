; ModuleID = '/home/carl/AnghaBench/reactos/drivers/multimedia/audio/sb16_nt4.old/extr_control.c_GetSoundBlasterModel.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/multimedia/audio/sb16_nt4.old/extr_control.c_GetSoundBlasterModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Querying DSP version\0A\00", align 1
@SbGetDspVersion = common dso_local global i32 0, align 4
@NotDetected = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Version %d.%d\0A\00", align 1
@SoundBlaster = common dso_local global i32 0, align 4
@SoundBlaster2 = common dso_local global i32 0, align 4
@SoundBlasterPro = common dso_local global i32 0, align 4
@SoundBlaster16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetSoundBlasterModel(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = load i32, i32* @SbGetDspVersion, align 4
  %9 = call i32 @SbWriteData(%struct.TYPE_6__* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @NotDetected, align 4
  store i32 %12, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = call i32 @WaitToRead(%struct.TYPE_6__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @NotDetected, align 4
  store i32 %18, i32* %2, align 4
  br label %74

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = call i64 @SbReadData(%struct.TYPE_6__* %20, i32* %4)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = call i64 @SbReadData(%struct.TYPE_6__* %24, i32* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 %31, 256
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %32, %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 512
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* @SoundBlaster, align 4
  store i32 %42, i32* %2, align 4
  br label %74

43:                                               ; preds = %27
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 65280
  %48 = icmp eq i32 %47, 512
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @SoundBlaster2, align 4
  store i32 %50, i32* %2, align 4
  br label %74

51:                                               ; preds = %43
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 65280
  %56 = icmp eq i32 %55, 768
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @SoundBlasterPro, align 4
  store i32 %58, i32* %2, align 4
  br label %74

59:                                               ; preds = %51
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 1024
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @SoundBlaster16, align 4
  store i32 %65, i32* %2, align 4
  br label %74

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* @NotDetected, align 4
  store i32 %70, i32* %2, align 4
  br label %74

71:                                               ; preds = %23
  br label %72

72:                                               ; preds = %71, %19
  %73 = load i32, i32* @NotDetected, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %69, %64, %57, %49, %41, %17, %11
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @SbWriteData(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @WaitToRead(%struct.TYPE_6__*) #1

declare dso_local i64 @SbReadData(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
