; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderSetVoutMouseEvent.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderSetVoutMouseEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.decoder_owner = type { i32, i8*, i32 }

@VIDEO_ES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_DecoderSetVoutMouseEvent(%struct.TYPE_6__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.decoder_owner*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = call %struct.decoder_owner* @dec_get_owner(%struct.TYPE_6__* %8)
  store %struct.decoder_owner* %9, %struct.decoder_owner** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VIDEO_ES, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %19 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %18, i32 0, i32 0
  %20 = call i32 @vlc_mutex_lock(i32* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %23 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %26 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %28 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %27, i32 0, i32 0
  %29 = call i32 @vlc_mutex_unlock(i32* %28)
  ret void
}

declare dso_local %struct.decoder_owner* @dec_get_owner(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
