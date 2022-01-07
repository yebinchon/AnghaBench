; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_bpf-firewall.c_bpf_firewall_reset_accounting.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_bpf-firewall.c_bpf_firewall_reset_accounting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADF = common dso_local global i32 0, align 4
@MAP_KEY_PACKETS = common dso_local global i32 0, align 4
@MAP_KEY_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_firewall_reset_accounting(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EBADF, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load i32, i32* @MAP_KEY_PACKETS, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @bpf_map_update_element(i32 %14, i32* %4, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %12
  %21 = load i32, i32* @MAP_KEY_BYTES, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @bpf_map_update_element(i32 %22, i32* %4, i32* %5)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %18, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @bpf_map_update_element(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
