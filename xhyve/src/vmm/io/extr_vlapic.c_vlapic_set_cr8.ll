; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_set_cr8.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_set_cr8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlapic_set_cr8(%struct.vlapic* %0, i32 %1) #0 {
  %3 = alloca %struct.vlapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.vlapic* %0, %struct.vlapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, -16
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %11 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %14 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @vm_inject_gp(i32 %12, i32 %15)
  br label %24

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 %18, 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %5, align 8
  %21 = load %struct.vlapic*, %struct.vlapic** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @vlapic_set_tpr(%struct.vlapic* %21, i64 %22)
  br label %24

24:                                               ; preds = %17, %9
  ret void
}

declare dso_local i32 @vm_inject_gp(i32, i32) #1

declare dso_local i32 @vlapic_set_tpr(%struct.vlapic*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
