; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_DeviceSelect.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_audiotrack.c_DeviceSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }

@AT_DEV_DEFAULT = common dso_local global i32 0, align 4
@at_devs = common dso_local global %struct.TYPE_11__* null, align 8
@AT_DEV_ENCODED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"encoded:\00", align 1
@AOUT_RESTART_OUTPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"selected device: %s\00", align 1
@DeviceSelect.enc_fourccs = internal constant [5 x i32] [i32 131, i32 130, i32 132, i32 129, i32 128], align 16
@.str.2 = private unnamed_addr constant [37 x i8] c"device has %4.4s passthrough support\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*)* @DeviceSelect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DeviceSelect(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = load i32, i32* @AT_DEV_DEFAULT, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %51, %17
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** @at_devs, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %54

26:                                               ; preds = %18
  %27 = load i8*, i8** %4, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @at_devs, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @at_devs, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = call i64 @strncmp(i8* %27, i8* %33, i64 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %26
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @at_devs, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %6, align 4
  br label %54

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %18

54:                                               ; preds = %43, %18
  br label %55

55:                                               ; preds = %54, %2
  store i64 0, i64* %8, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @AT_DEV_ENCODED, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = call i64 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i64 %60, i64* %9, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @strncmp(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i8*, i8** %4, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = call i64 @atoll(i8* %68)
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %65, %59
  br label %71

71:                                               ; preds = %70, %55
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %122

83:                                               ; preds = %77, %71
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = load i32, i32* @AOUT_RESTART_OUTPUT, align 4
  %92 = call i32 @aout_RestartRequest(%struct.TYPE_9__* %90, i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @msg_Dbg(%struct.TYPE_9__* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @AT_DEV_ENCODED, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %121

99:                                               ; preds = %83
  store i64 0, i64* %10, align 8
  br label %100

100:                                              ; preds = %117, %99
  %101 = load i64, i64* %10, align 8
  %102 = icmp ult i64 %101, 5
  br i1 %102, label %103, label %120

103:                                              ; preds = %100
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds [5 x i32], [5 x i32]* @DeviceSelect.enc_fourccs, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @AudioTrack_HasEncoding(%struct.TYPE_9__* %104, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds [5 x i32], [5 x i32]* @DeviceSelect.enc_fourccs, i64 0, i64 %112
  %114 = bitcast i32* %113 to i8*
  %115 = call i32 @msg_Dbg(%struct.TYPE_9__* %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %110, %103
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %10, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %10, align 8
  br label %100

120:                                              ; preds = %100
  br label %121

121:                                              ; preds = %120, %83
  br label %122

122:                                              ; preds = %121, %77
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = call i32 @aout_DeviceReport(%struct.TYPE_9__* %123, i8* %124)
  %126 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %126
}

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @atoll(i8*) #1

declare dso_local i32 @aout_RestartRequest(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i64 @AudioTrack_HasEncoding(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @aout_DeviceReport(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
