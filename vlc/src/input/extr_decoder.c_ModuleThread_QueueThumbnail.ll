; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_QueueThumbnail.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_ModuleThread_QueueThumbnail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, i32 }

@on_thumbnail_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ModuleThread_QueueThumbnail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ModuleThread_QueueThumbnail(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.decoder_owner*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.decoder_owner* @dec_get_owner(i32* %7)
  store %struct.decoder_owner* %8, %struct.decoder_owner** %5, align 8
  %9 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %10 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %9, i32 0, i32 1
  %11 = call i32 @vlc_mutex_lock(i32* %10)
  %12 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %13 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %16 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %18 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %17, i32 0, i32 1
  %19 = call i32 @vlc_mutex_unlock(i32* %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.decoder_owner*, %struct.decoder_owner** %5, align 8
  %24 = load i32, i32* @on_thumbnail_ready, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @decoder_Notify(%struct.decoder_owner* %23, i32 %24, i32* %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @picture_Release(i32* %28)
  ret void
}

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @decoder_Notify(%struct.decoder_owner*, i32, i32*) #1

declare dso_local i32 @picture_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
