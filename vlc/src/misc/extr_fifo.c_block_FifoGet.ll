; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_fifo.c_block_FifoGet.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_fifo.c_block_FifoGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @block_FifoGet(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i32 (...) @vlc_testcancel()
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @vlc_fifo_Lock(i32* %5)
  br label %7

7:                                                ; preds = %11, %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @vlc_fifo_IsEmpty(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @vlc_fifo_CleanupPush(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @vlc_fifo_Wait(i32* %14)
  %16 = call i32 (...) @vlc_cleanup_pop()
  br label %7

17:                                               ; preds = %7
  %18 = load i32*, i32** %2, align 8
  %19 = call i32* @vlc_fifo_DequeueUnlocked(i32* %18)
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @vlc_fifo_Unlock(i32* %20)
  %22 = load i32*, i32** %3, align 8
  ret i32* %22
}

declare dso_local i32 @vlc_testcancel(...) #1

declare dso_local i32 @vlc_fifo_Lock(i32*) #1

declare dso_local i64 @vlc_fifo_IsEmpty(i32*) #1

declare dso_local i32 @vlc_fifo_CleanupPush(i32*) #1

declare dso_local i32 @vlc_fifo_Wait(i32*) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

declare dso_local i32* @vlc_fifo_DequeueUnlocked(i32*) #1

declare dso_local i32 @vlc_fifo_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
