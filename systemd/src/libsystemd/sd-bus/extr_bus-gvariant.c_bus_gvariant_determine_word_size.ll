; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-gvariant.c_bus_gvariant_determine_word_size.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-gvariant.c_bus_gvariant_determine_word_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bus_gvariant_determine_word_size(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = add i64 %6, %7
  %9 = icmp ule i64 %8, 255
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 1, i64* %3, align 8
  br label %26

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = mul i64 %13, 2
  %15 = add i64 %12, %14
  %16 = icmp ule i64 %15, 65535
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i64 2, i64* %3, align 8
  br label %26

18:                                               ; preds = %11
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = mul i64 %20, 4
  %22 = add i64 %19, %21
  %23 = icmp ule i64 %22, 4294967295
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i64 4, i64* %3, align 8
  br label %26

25:                                               ; preds = %18
  store i64 8, i64* %3, align 8
  br label %26

26:                                               ; preds = %25, %24, %17, %10
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
