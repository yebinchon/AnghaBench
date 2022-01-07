; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Seek.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mcicda/extr_mcicda.c_MCICDA_Seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"(%04X, %08X, %p);\0A\00", align 1
@MCIERR_INVALID_DEVICE_ID = common dso_local global i32 0, align 4
@MCIERR_NULL_PARAMETER_BLOCK = common dso_local global i32 0, align 4
@MCIERR_MISSING_PARAMETER = common dso_local global i32 0, align 4
@MCIERR_FLAGS_NOT_COMPATIBLE = common dso_local global i32 0, align 4
@MCI_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Seeking to start\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Seeking to end\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Seeking to %u\0A\00", align 1
@CDFRAMES_PERMIN = common dso_local global i32 0, align 4
@CDFRAMES_PERSEC = common dso_local global i32 0, align 4
@IOCTL_CDROM_SEEK_AUDIO_MSF = common dso_local global i32 0, align 4
@MCIERR_HARDWARE = common dso_local global i32 0, align 4
@MCI_NOTIFY = common dso_local global i32 0, align 4
@MCI_NOTIFY_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_16__*)* @MCICDA_Seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MCICDA_Seek(i32 %0, i32 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_18__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_15__* @MCICDA_GetOpenDrv(i32 %15)
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %20 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, %struct.TYPE_16__* %19)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %22 = icmp eq %struct.TYPE_15__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @MCIERR_INVALID_DEVICE_ID, align 4
  store i32 %24, i32* %4, align 4
  br label %138

25:                                               ; preds = %3
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = icmp eq %struct.TYPE_16__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @MCIERR_NULL_PARAMETER_BLOCK, align 4
  store i32 %29, i32* %4, align 4
  br label %138

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 131
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @MCIERR_MISSING_PARAMETER, align 4
  store i32 %36, i32* %4, align 4
  br label %138

37:                                               ; preds = %30
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @MCIERR_FLAGS_NOT_COMPATIBLE, align 4
  store i32 %44, i32* %4, align 4
  br label %138

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @MCI_WAIT, align 4
  %48 = call i32 @MCICDA_Stop(i32 %46, i32 %47, i32 0)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %50 = call i32 @MCICDA_ReadTOC(%struct.TYPE_15__* %49, %struct.TYPE_17__* %14, i32* %11)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %54 = call i32 @MCICDA_GetError(%struct.TYPE_15__* %53)
  store i32 %54, i32* %4, align 4
  br label %138

55:                                               ; preds = %45
  %56 = load i32, i32* %12, align 4
  switch i32 %56, label %101 [
    i32 129, label %57
    i32 130, label %70
    i32 128, label %85
  ]

57:                                               ; preds = %55
  %58 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = bitcast %struct.TYPE_17__* %14 to i64*
  %62 = load i64, i64* %61, align 4
  %63 = call i32 @FRAME_OF_TOC(i64 %62, i32 %60)
  store i32 %63, i32* %8, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %65 = call i32 @MCICDA_SkipDataTracks(%struct.TYPE_15__* %64, i32* %8)
  store i32 %65, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %4, align 4
  br label %138

69:                                               ; preds = %57
  br label %103

70:                                               ; preds = %55
  %71 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  %75 = bitcast %struct.TYPE_17__* %14 to i64*
  %76 = load i64, i64* %75, align 4
  %77 = call i32 @FRAME_OF_TOC(i64 %76, i32 %74)
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = call i32 @MCICDA_SkipDataTracks(%struct.TYPE_15__* %79, i32* %8)
  store i32 %80, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %4, align 4
  br label %138

84:                                               ; preds = %70
  br label %103

85:                                               ; preds = %55
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @MCICDA_CalcFrame(%struct.TYPE_15__* %90, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = call i32 @MCICDA_SkipDataTracks(%struct.TYPE_15__* %95, i32* %8)
  store i32 %96, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %85
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %4, align 4
  br label %138

100:                                              ; preds = %85
  br label %103

101:                                              ; preds = %55
  %102 = load i32, i32* @MCIERR_FLAGS_NOT_COMPATIBLE, align 4
  store i32 %102, i32* %4, align 4
  br label %138

103:                                              ; preds = %100, %84, %69
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @CDFRAMES_PERMIN, align 4
  %106 = sdiv i32 %104, %105
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @CDFRAMES_PERSEC, align 4
  %110 = sdiv i32 %108, %109
  %111 = srem i32 %110, 60
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @CDFRAMES_PERSEC, align 4
  %115 = srem i32 %113, %114
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  store i32 %115, i32* %116, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IOCTL_CDROM_SEEK_AUDIO_MSF, align 4
  %121 = call i32 @device_io(i32 %119, i32 %120, %struct.TYPE_18__* %10, i32 12, i32* null, i32 0, i32* %11, i32* null)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %103
  %124 = load i32, i32* @MCIERR_HARDWARE, align 4
  store i32 %124, i32* %4, align 4
  br label %138

125:                                              ; preds = %103
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @MCI_NOTIFY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %135 = load i32, i32* @MCI_NOTIFY_SUCCESSFUL, align 4
  %136 = call i32 @MCICDA_Notify(i32 %133, %struct.TYPE_15__* %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %125
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %123, %101, %98, %82, %67, %52, %43, %35, %28, %23
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.TYPE_15__* @MCICDA_GetOpenDrv(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @MCICDA_Stop(i32, i32, i32) #1

declare dso_local i32 @MCICDA_ReadTOC(%struct.TYPE_15__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @MCICDA_GetError(%struct.TYPE_15__*) #1

declare dso_local i32 @FRAME_OF_TOC(i64, i32) #1

declare dso_local i32 @MCICDA_SkipDataTracks(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @MCICDA_CalcFrame(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @device_io(i32, i32, %struct.TYPE_18__*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @MCICDA_Notify(i32, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
