; ModuleID = '/home/carl/AnghaBench/tg/extr_interface.c_skip_wspc.c'
source_filename = "/home/carl/AnghaBench/tg/extr_interface.c_skip_wspc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line_ptr = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @skip_wspc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_wspc() #0 {
  br label %1

1:                                                ; preds = %13, %0
  %2 = load i64*, i64** @line_ptr, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i64*, i64** @line_ptr, align 8
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i8
  %9 = zext i8 %8 to i32
  %10 = icmp sle i32 %9, 32
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = load i64*, i64** @line_ptr, align 8
  %15 = getelementptr inbounds i64, i64* %14, i32 1
  store i64* %15, i64** @line_ptr, align 8
  br label %1

16:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
