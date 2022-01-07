; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderWait.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_decoder.c_input_DecoderWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoder_owner = type { i32, i32, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"buffer deadlock prevented\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_DecoderWait(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.decoder_owner*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.decoder_owner* @dec_get_owner(i32* %4)
  store %struct.decoder_owner* %5, %struct.decoder_owner** %3, align 8
  %6 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %7 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %11 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %10, i32 0, i32 0
  %12 = call i32 @vlc_mutex_lock(i32* %11)
  br label %13

13:                                               ; preds = %47, %1
  %14 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %15 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %57

19:                                               ; preds = %13
  %20 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %21 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %57

25:                                               ; preds = %19
  %26 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %27 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @vlc_fifo_Lock(i32 %28)
  %30 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %31 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %25
  %35 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %36 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @vlc_fifo_IsEmpty(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @msg_Err(i32* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %44 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @vlc_fifo_Unlock(i32 %45)
  br label %57

47:                                               ; preds = %34, %25
  %48 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %49 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @vlc_fifo_Unlock(i32 %50)
  %52 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %53 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %52, i32 0, i32 1
  %54 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %55 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %54, i32 0, i32 0
  %56 = call i32 @vlc_cond_wait(i32* %53, i32* %55)
  br label %13

57:                                               ; preds = %40, %24, %13
  %58 = load %struct.decoder_owner*, %struct.decoder_owner** %3, align 8
  %59 = getelementptr inbounds %struct.decoder_owner, %struct.decoder_owner* %58, i32 0, i32 0
  %60 = call i32 @vlc_mutex_unlock(i32* %59)
  ret void
}

declare dso_local %struct.decoder_owner* @dec_get_owner(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_fifo_Lock(i32) #1

declare dso_local i64 @vlc_fifo_IsEmpty(i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @vlc_fifo_Unlock(i32) #1

declare dso_local i32 @vlc_cond_wait(i32*, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
