; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_QueueSpu.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_QueueSpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.decoder_owner = type { i64, i32, %struct.TYPE_6__* }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @ModuleThread_QueueSpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ModuleThread_QueueSpu(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.decoder_owner*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = call i32 @assert(%struct.TYPE_6__* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.decoder_owner* @dec_get_owner(i32* %8)
  store %struct.decoder_owner* %9, %struct.decoder_owner** %5, align 8
  %10 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %11 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = call i32 @assert(%struct.TYPE_6__* %12)
  %14 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %15 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %14, i32 0, i32 1
  %16 = call i32 @vlc_mutex_lock(i32* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VLC_TICK_INVALID, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %27 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VLC_TICK_INVALID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %41 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36, %30
  %45 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %46 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %45, i32 0, i32 1
  %47 = call i32 @vlc_mutex_unlock(i32* %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = call i32 @subpicture_Delete(%struct.TYPE_6__* %48)
  br label %57

50:                                               ; preds = %36, %22, %2
  %51 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %52 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %51, i32 0, i32 1
  %53 = call i32 @vlc_mutex_unlock(i32* %52)
  %54 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = call i32 @ModuleThread_PlaySpu(%struct.decoder_owner* %54, %struct.TYPE_6__* %55)
  br label %57

57:                                               ; preds = %50, %44
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_6__*) #1

declare dso_local i32 @ModuleThread_PlaySpu(%struct.decoder_owner*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
