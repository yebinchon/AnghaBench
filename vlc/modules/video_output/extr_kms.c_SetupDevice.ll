; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_kms.c_SetupDevice.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_kms.c_SetupDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }

@DRM_MODE_CONNECTED = common dso_local global i64 0, align 8
@drvTryNext = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Mode resolution for connector %u is %ux%u\00", align 1
@drvSuccess = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"No valid CRTC for connector %d\00", align 1
@MAXHWBUF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Cannot create framebuffer %d for connector %d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Created HW framebuffer %d/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32*, %struct.TYPE_16__*)* @SetupDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SetupDevice(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %8, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DRM_MODE_CONNECTED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %3
  %26 = load i64, i64* @drvTryNext, align 8
  store i64 %26, i64* %4, align 8
  br label %113

27:                                               ; preds = %20
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @msg_Dbg(%struct.TYPE_14__* %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %58 = call i64 @FindCRTC(%struct.TYPE_14__* %55, i32* %56, %struct.TYPE_16__* %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @drvSuccess, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %27
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @msg_Dbg(%struct.TYPE_14__* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %4, align 8
  br label %113

69:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %108, %69
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @MAXHWBUF, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %111

74:                                               ; preds = %70
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @CreateFB(%struct.TYPE_14__* %75, i32 %76)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @drvSuccess, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %74
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @msg_Err(%struct.TYPE_14__* %82, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %86)
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %96, %81
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @DestroyFB(%struct.TYPE_15__* %93, i32 %94)
  br label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %88

99:                                               ; preds = %88
  %100 = load i64, i64* %9, align 8
  store i64 %100, i64* %4, align 8
  br label %113

101:                                              ; preds = %74
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* @MAXHWBUF, align 4
  %106 = call i32 (%struct.TYPE_14__*, i8*, i32, ...) @msg_Dbg(%struct.TYPE_14__* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %70

111:                                              ; preds = %70
  %112 = load i64, i64* @drvSuccess, align 8
  store i64 %112, i64* %4, align 8
  br label %113

113:                                              ; preds = %111, %99, %62, %25
  %114 = load i64, i64* %4, align 8
  ret i64 %114
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_14__*, i8*, i32, ...) #1

declare dso_local i64 @FindCRTC(%struct.TYPE_14__*, i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @CreateFB(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_14__*, i8*, i32, i32) #1

declare dso_local i32 @DestroyFB(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
