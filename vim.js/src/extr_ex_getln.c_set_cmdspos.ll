; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_ex_getln.c_set_cmdspos.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_ex_getln.c_set_cmdspos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@ccline = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NUL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_cmdspos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cmdspos() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 0), align 8
  %2 = load i64, i64* @NUL, align 8
  %3 = icmp ne i64 %1, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 1), align 8
  %6 = add nsw i64 1, %5
  store i64 %6, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 2), align 8
  br label %10

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 1), align 8
  %9 = add nsw i64 0, %8
  store i64 %9, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 2), align 8
  br label %10

10:                                               ; preds = %7, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
