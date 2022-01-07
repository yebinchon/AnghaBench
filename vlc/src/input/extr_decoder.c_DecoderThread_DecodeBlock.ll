; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderThread_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_DecoderThread_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32 }

@BLOCK_FLAG_CORE_PRIVATE_RELOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decoder_owner*, %struct.TYPE_9__*)* @DecoderThread_DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecoderThread_DecodeBlock(%struct.decoder_owner* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.decoder_owner*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store %struct.decoder_owner* %0, %struct.decoder_owner** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %8 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %7, i32 0, i32 1
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)*, i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)** %10, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = call i32 %11(%struct.TYPE_8__* %12, %struct.TYPE_9__* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %49 [
    i32 128, label %16
    i32 130, label %17
    i32 129, label %20
  ]

16:                                               ; preds = %2
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %19 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  br label %51

20:                                               ; preds = %2
  %21 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %22 = call i32 @RequestReload(%struct.decoder_owner* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @unlikely(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %51

29:                                               ; preds = %20
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BLOCK_FLAG_CORE_PRIVATE_RELOADED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @BLOCK_FLAG_CORE_PRIVATE_RELOADED, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = call i32 @DecoderThread_ProcessInput(%struct.decoder_owner* %42, %struct.TYPE_9__* %43)
  br label %48

45:                                               ; preds = %29
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = call i32 @block_Release(%struct.TYPE_9__* %46)
  br label %48

48:                                               ; preds = %45, %36
  br label %51

49:                                               ; preds = %2
  %50 = call i32 (...) @vlc_assert_unreachable()
  br label %51

51:                                               ; preds = %49, %48, %28, %17, %16
  ret void
}

declare dso_local i32 @RequestReload(%struct.decoder_owner*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @DecoderThread_ProcessInput(%struct.decoder_owner*, %struct.TYPE_9__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_9__*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
