; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderDecode.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.decoder_owner = type { i32, i32, i32 }

@.str = private unnamed_addr constant [81 x i8] c"decoder/packetizer fifo full (data not consumed quickly enough), resetting fifo!\00", align 1
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_DecoderDecode(i32* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.decoder_owner*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.decoder_owner* @dec_get_owner(i32* %8)
  store %struct.decoder_owner* %9, %struct.decoder_owner** %7, align 8
  %10 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %11 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @vlc_fifo_Lock(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %3
  %17 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %18 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vlc_fifo_GetBytes(i32 %19)
  %21 = icmp sgt i32 %20, 419430400
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @msg_Warn(i32* %23, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %26 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vlc_fifo_DequeueAllUnlocked(i32 %27)
  %29 = call i32 @block_ChainRelease(i32 %28)
  %30 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %22, %16
  br label %57

36:                                               ; preds = %3
  %37 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %38 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %48, %41
  %43 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %44 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vlc_fifo_GetCount(i32 %45)
  %47 = icmp sge i32 %46, 10
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %50 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %53 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %52, i32 0, i32 1
  %54 = call i32 @vlc_fifo_WaitCond(i32 %51, i32* %53)
  br label %42

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %36
  br label %57

57:                                               ; preds = %56, %35
  %58 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %59 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = call i32 @vlc_fifo_QueueUnlocked(i32 %60, %struct.TYPE_4__* %61)
  %63 = load %struct.decoder_owner*, %struct.decoder_owner** %7, align 8
  %64 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @vlc_fifo_Unlock(i32 %65)
  ret void
}

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32 @vlc_fifo_Lock(i32) #1

declare dso_local i32 @vlc_fifo_GetBytes(i32) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i32 @block_ChainRelease(i32) #1

declare dso_local i32 @vlc_fifo_DequeueAllUnlocked(i32) #1

declare dso_local i32 @vlc_fifo_GetCount(i32) #1

declare dso_local i32 @vlc_fifo_WaitCond(i32, i32*) #1

declare dso_local i32 @vlc_fifo_QueueUnlocked(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @vlc_fifo_Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
