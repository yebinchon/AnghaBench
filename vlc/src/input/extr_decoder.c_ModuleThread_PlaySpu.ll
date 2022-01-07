; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_PlaySpu.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_PlaySpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, i32, i32, i64, i32*, i32 }
%struct.TYPE_5__ = type { i64 }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"non-dated spu buffer received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decoder_owner*, %struct.TYPE_5__*)* @ModuleThread_PlaySpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ModuleThread_PlaySpu(%struct.decoder_owner* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.decoder_owner*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.decoder_owner* %0, %struct.decoder_owner** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %8 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %7, i32 0, i32 5
  store i32* %8, i32** %5, align 8
  %9 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %10 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @VLC_TICK_INVALID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @msg_Warn(i32* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = call i32 @subpicture_Delete(%struct.TYPE_5__* %20)
  br label %54

22:                                               ; preds = %2
  %23 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %24 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %23, i32 0, i32 1
  %25 = call i32 @vlc_mutex_lock(i32* %24)
  %26 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %27 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %32 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %34 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %33, i32 0, i32 2
  %35 = call i32 @vlc_cond_signal(i32* %34)
  br label %36

36:                                               ; preds = %30, %22
  %37 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %38 = call i32 @DecoderWaitUnblock(%struct.decoder_owner* %37)
  %39 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %40 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %39, i32 0, i32 1
  %41 = call i32 @vlc_mutex_unlock(i32* %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VLC_TICK_INVALID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = call i32 @subpicture_Delete(%struct.TYPE_5__* %48)
  br label %54

50:                                               ; preds = %36
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = call i32 @vout_PutSubpicture(i32* %51, %struct.TYPE_5__* %52)
  br label %54

54:                                               ; preds = %50, %47, %17
  ret void
}

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_5__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @DecoderWaitUnblock(%struct.decoder_owner*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vout_PutSubpicture(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
