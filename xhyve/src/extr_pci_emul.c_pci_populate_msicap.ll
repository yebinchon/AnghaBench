; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_populate_msicap.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_populate_msicap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msicap = type { i64, i64, i32 }

@PCIY_MSI = common dso_local global i32 0, align 4
@PCIM_MSICTRL_64BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_populate_msicap(%struct.msicap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.msicap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msicap* %0, %struct.msicap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @CTASSERT(i32 0)
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 32
  br label %20

20:                                               ; preds = %17, %14, %3
  %21 = phi i1 [ false, %14 ], [ false, %3 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ffs(i32 %24)
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load %struct.msicap*, %struct.msicap** %4, align 8
  %28 = call i32 @bzero(%struct.msicap* %27, i32 24)
  %29 = load i32, i32* @PCIY_MSI, align 4
  %30 = load %struct.msicap*, %struct.msicap** %4, align 8
  %31 = getelementptr inbounds %struct.msicap, %struct.msicap* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.msicap*, %struct.msicap** %4, align 8
  %35 = getelementptr inbounds %struct.msicap, %struct.msicap* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @PCIM_MSICTRL_64BIT, align 4
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 %37, 1
  %39 = or i32 %36, %38
  %40 = sext i32 %39 to i64
  %41 = load %struct.msicap*, %struct.msicap** %4, align 8
  %42 = getelementptr inbounds %struct.msicap, %struct.msicap* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  ret void
}

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @bzero(%struct.msicap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
