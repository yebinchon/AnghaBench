; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_GetDecoderDevice.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_GetDecoderDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.decoder_owner = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"vout update: mastering data\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"vout update: lighting data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__*)* @ModuleThread_GetDecoderDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ModuleThread_GetDecoderDevice(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.decoder_owner*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = call %struct.decoder_owner* @dec_get_owner(%struct.TYPE_17__* %9)
  store %struct.decoder_owner* %10, %struct.decoder_owner** %4, align 8
  store i32* null, i32** %6, align 8
  %11 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %12 = call i32 @CreateVoutIfNeeded(%struct.decoder_owner* %11, i32* null, i32* %5, i32** %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @vlc_decoder_device_Release(i32* %19)
  br label %21

21:                                               ; preds = %18, %15
  store i32* null, i32** %2, align 8
  br label %86

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** %2, align 8
  br label %86

27:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %33 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = call i64 @memcmp(i32* %31, i32* %35, i32 4)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = call i32 @msg_Dbg(%struct.TYPE_17__* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %27
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %49 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %47, %53
  br i1 %54, label %69, label %55

55:                                               ; preds = %41
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %63 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %61, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %55, %41
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = call i32 @msg_Dbg(%struct.TYPE_17__* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %55
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %77 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %76, i32 0, i32 0
  %78 = call i32 @vlc_mutex_lock(i32* %77)
  %79 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %80 = call i32 @DecoderUpdateFormatLocked(%struct.decoder_owner* %79)
  %81 = load %struct.decoder_owner*, %struct.decoder_owner** %4, align 8
  %82 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %81, i32 0, i32 0
  %83 = call i32 @vlc_mutex_unlock(i32* %82)
  br label %84

84:                                               ; preds = %75, %72
  %85 = load i32*, i32** %6, align 8
  store i32* %85, i32** %2, align 8
  br label %86

86:                                               ; preds = %84, %25, %21
  %87 = load i32*, i32** %2, align 8
  ret i32* %87
}

declare dso_local %struct.decoder_owner* @dec_get_owner(%struct.TYPE_17__*) #1

declare dso_local i32 @CreateVoutIfNeeded(%struct.decoder_owner*, i32*, i32*, i32**) #1

declare dso_local i32 @vlc_decoder_device_Release(i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @DecoderUpdateFormatLocked(%struct.decoder_owner*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
