; ModuleID = '/home/carl/AnghaBench/vlc/src/darwin/extr_thread.c_vlc_cond_destroy.c'
source_filename = "/home/carl/AnghaBench/vlc/src/darwin/extr_thread.c_vlc_cond_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"pthread_cond_destroy returned %i\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"destroying condition\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_cond_destroy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @pthread_cond_destroy(i32* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @EBUSY, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %18

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %1
  %17 = call i32 @VLC_THREAD_ASSERT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %14
  ret void
}

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @VLC_THREAD_ASSERT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
