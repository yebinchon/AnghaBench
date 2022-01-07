; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_write_reset_fis_d2h.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_write_reset_fis_d2h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i64 }

@FIS_TYPE_REGD2H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*)* @ahci_write_reset_fis_d2h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_write_reset_fis_d2h(%struct.ahci_port* %0) #0 {
  %2 = alloca %struct.ahci_port*, align 8
  %3 = alloca [20 x i32], align 16
  store %struct.ahci_port* %0, %struct.ahci_port** %2, align 8
  %4 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %5 = call i32 @memset(i32* %4, i32 0, i32 80)
  %6 = load i32, i32* @FIS_TYPE_REGD2H, align 4
  %7 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  store i32 %6, i32* %7, align 16
  %8 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 3
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 4
  store i32 1, i32* %9, align 16
  %10 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %11 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 5
  store i32 20, i32* %15, align 4
  %16 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 6
  store i32 235, i32* %16, align 8
  br label %17

17:                                               ; preds = %14, %1
  %18 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 12
  store i32 1, i32* %18, align 16
  %19 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %20 = load i32, i32* @FIS_TYPE_REGD2H, align 4
  %21 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %22 = call i32 @ahci_write_fis(%struct.ahci_port* %19, i32 %20, i32* %21)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ahci_write_fis(%struct.ahci_port*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
