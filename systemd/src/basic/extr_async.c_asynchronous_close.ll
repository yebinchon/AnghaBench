; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_async.c_asynchronous_close.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_async.c_asynchronous_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROTECT_ERRNO = common dso_local global i32 0, align 4
@close_thread = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asynchronous_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i32, i32* @PROTECT_ERRNO, align 4
  %8 = load i32, i32* @close_thread, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @FD_TO_PTR(i32 %9)
  %11 = call i32 @asynchronous_job(i32 %8, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %6
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @close_nointr(i32 %15)
  %17 = load i32, i32* @EBADF, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp ne i32 %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  br label %22

22:                                               ; preds = %14, %6
  br label %23

23:                                               ; preds = %22, %1
  ret i32 -1
}

declare dso_local i32 @asynchronous_job(i32, i32) #1

declare dso_local i32 @FD_TO_PTR(i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @close_nointr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
