; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderWaitUnblock.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderWaitUnblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decoder_owner*)* @DecoderWaitUnblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecoderWaitUnblock(%struct.decoder_owner* %0) #0 {
  %2 = alloca %struct.decoder_owner*, align 8
  store %struct.decoder_owner* %0, %struct.decoder_owner** %2, align 8
  %3 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %4 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %3, i32 0, i32 0
  %5 = call i32 @vlc_mutex_assert(i32* %4)
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %8 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %13 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %6
  br label %23

17:                                               ; preds = %11
  %18 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %19 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %18, i32 0, i32 1
  %20 = load %struct.decoder_owner*, %struct.decoder_owner** %2, align 8
  %21 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %20, i32 0, i32 0
  %22 = call i32 @vlc_cond_wait(i32* %19, i32* %21)
  br label %6

23:                                               ; preds = %16
  ret void
}

declare dso_local i32 @vlc_mutex_assert(i32*) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
