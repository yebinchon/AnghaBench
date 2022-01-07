; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_imsg-buffer.c_ibuf_dynamic.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_imsg-buffer.c_ibuf_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibuf = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibuf* @ibuf_dynamic(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.ibuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ibuf*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.ibuf* null, %struct.ibuf** %3, align 8
  br label %25

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = call %struct.ibuf* @ibuf_open(i64 %12)
  store %struct.ibuf* %13, %struct.ibuf** %6, align 8
  %14 = icmp eq %struct.ibuf* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store %struct.ibuf* null, %struct.ibuf** %3, align 8
  br label %25

16:                                               ; preds = %11
  %17 = load i64, i64* %5, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.ibuf*, %struct.ibuf** %6, align 8
  %22 = getelementptr inbounds %struct.ibuf, %struct.ibuf* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.ibuf*, %struct.ibuf** %6, align 8
  store %struct.ibuf* %24, %struct.ibuf** %3, align 8
  br label %25

25:                                               ; preds = %23, %15, %10
  %26 = load %struct.ibuf*, %struct.ibuf** %3, align 8
  ret %struct.ibuf* %26
}

declare dso_local %struct.ibuf* @ibuf_open(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
