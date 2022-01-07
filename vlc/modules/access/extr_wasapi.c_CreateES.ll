; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_wasapi.c_CreateES.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_wasapi.c_CreateES.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"cannot get mix format (error 0x%lX)\00", align 1
@AUDIO_ES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"unsupported mix format\00", align 1
@AUDCLNT_STREAMFLAGS_EVENTCALLBACK = common dso_local global i32 0, align 4
@AUDCLNT_STREAMFLAGS_LOOPBACK = common dso_local global i32 0, align 4
@AUDCLNT_SHAREMODE_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"cannot initialize audio client (error 0x%lX)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32*, i32, i32, i64*)* @CreateES to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @CreateES(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32 %3, i64* noalias %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @IAudioClient_GetMixFormat(i32* %17, i32** %13)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Err(%struct.TYPE_9__* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32* null, i32** %6, align 8
  br label %96

26:                                               ; preds = %5
  %27 = load i32, i32* @AUDIO_ES, align 4
  %28 = call i32 @es_format_Init(%struct.TYPE_8__* %12, i32 %27, i32 0)
  %29 = load i32*, i32** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %31 = call i64 @vlc_FromWave(i32* %29, %struct.TYPE_10__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Err(%struct.TYPE_9__* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @CoTaskMemFree(i32* %36)
  store i32* null, i32** %6, align 8
  br label %96

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = sdiv i32 %61, 8
  %63 = sext i32 %62 to i64
  %64 = load i64*, i64** %11, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i32, i32* @AUDCLNT_STREAMFLAGS_EVENTCALLBACK, align 4
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %38
  %69 = load i32, i32* @AUDCLNT_STREAMFLAGS_LOOPBACK, align 4
  %70 = load i32, i32* %15, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %68, %38
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @MSFTIME_FROM_VLC_TICK(i32 %73)
  %75 = mul nsw i32 %74, 3
  store i32 %75, i32* %16, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @IAudioClient_Initialize(i32* %76, i32 %77, i32 %78, i32 %79, i32 0, i32* %80, i32* null)
  store i32 %81, i32* %14, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @CoTaskMemFree(i32* %82)
  %84 = load i32, i32* %14, align 4
  %85 = call i64 @FAILED(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %72
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Err(%struct.TYPE_9__* %88, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  store i32* null, i32** %6, align 8
  br label %96

91:                                               ; preds = %72
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32* @es_out_Add(i32 %94, %struct.TYPE_8__* %12)
  store i32* %95, i32** %6, align 8
  br label %96

96:                                               ; preds = %91, %87, %33, %22
  %97 = load i32*, i32** %6, align 8
  ret i32* %97
}

declare dso_local i32 @IAudioClient_GetMixFormat(i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @vlc_FromWave(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @MSFTIME_FROM_VLC_TICK(i32) #1

declare dso_local i32 @IAudioClient_Initialize(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @es_out_Add(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
