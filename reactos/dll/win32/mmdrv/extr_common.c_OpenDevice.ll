; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_common.c_OpenDevice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_common.c_OpenDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Couldn't allocate session info\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to open kernel device\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Only wave devices are supported at present!\0A\00", align 1
@MMSYSERR_NOTSUPPORTED = common dso_local global i64 0, align 8
@WaveOutDevice = common dso_local global i64 0, align 8
@WOM_OPEN = common dso_local global i32 0, align 4
@WaveInDevice = common dso_local global i64 0, align 8
@WIM_OPEN = common dso_local global i32 0, align 4
@MidiOutDevice = common dso_local global i64 0, align 8
@MOM_OPEN = common dso_local global i32 0, align 4
@MidiInDevice = common dso_local global i64 0, align 8
@MIM_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @OpenDevice(i64 %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @CreateSession(i64 %16, i32 %17, %struct.TYPE_7__** %12)
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = call i32 @DPRINT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* %13, align 8
  store i64 %24, i64* %6, align 8
  br label %122

25:                                               ; preds = %5
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @GENERIC_READ, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = call i64 @OpenKernelDevice(i64 %26, i32 %27, i32 %28, i32* %30)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = call i32 @DPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %38 = call i32 @DestroySession(%struct.TYPE_7__* %37)
  %39 = load i64, i64* %13, align 8
  store i64 %39, i64* %6, align 8
  br label %122

40:                                               ; preds = %25
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @IsWaveDevice(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %15, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %71

66:                                               ; preds = %40
  %67 = call i32 @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %69 = call i32 @DestroySession(%struct.TYPE_7__* %68)
  %70 = load i64, i64* @MMSYSERR_NOTSUPPORTED, align 8
  store i64 %70, i64* %6, align 8
  br label %122

71:                                               ; preds = %47
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %73 = call i64 @StartSessionThread(%struct.TYPE_7__* %72)
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %79 = call i32 @DestroySession(%struct.TYPE_7__* %78)
  %80 = load i64, i64* %13, align 8
  store i64 %80, i64* %6, align 8
  br label %122

81:                                               ; preds = %71
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = inttoptr i64 %83 to %struct.TYPE_7__**
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %84, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* @WaveOutDevice, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @WOM_OPEN, align 4
  br label %115

90:                                               ; preds = %81
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @WaveInDevice, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @WIM_OPEN, align 4
  br label %113

96:                                               ; preds = %90
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @MidiOutDevice, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @MOM_OPEN, align 4
  br label %111

102:                                              ; preds = %96
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @MidiInDevice, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @MIM_OPEN, align 4
  br label %109

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i32 [ %107, %106 ], [ -1, %108 ]
  br label %111

111:                                              ; preds = %109, %100
  %112 = phi i32 [ %101, %100 ], [ %110, %109 ]
  br label %113

113:                                              ; preds = %111, %94
  %114 = phi i32 [ %95, %94 ], [ %112, %111 ]
  br label %115

115:                                              ; preds = %113, %88
  %116 = phi i32 [ %89, %88 ], [ %114, %113 ]
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %14, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %119 = load i64, i64* %14, align 8
  %120 = call i32 @NotifyClient(%struct.TYPE_7__* %118, i64 %119, i32 0, i32 0)
  %121 = load i64, i64* @MMSYSERR_NOERROR, align 8
  store i64 %121, i64* %6, align 8
  br label %122

122:                                              ; preds = %115, %77, %66, %35, %22
  %123 = load i64, i64* %6, align 8
  ret i64 %123
}

declare dso_local i64 @CreateSession(i64, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i64 @OpenKernelDevice(i64, i32, i32, i32*) #1

declare dso_local i32 @DestroySession(%struct.TYPE_7__*) #1

declare dso_local i64 @IsWaveDevice(i64) #1

declare dso_local i64 @StartSessionThread(%struct.TYPE_7__*) #1

declare dso_local i32 @NotifyClient(%struct.TYPE_7__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
