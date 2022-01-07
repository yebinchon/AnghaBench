; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_add_msixcap.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_add_msixcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i64 }
%struct.msixcap = type { i32 }

@MAX_MSIX_TABLE_ENTRIES = common dso_local global i32 0, align 4
@PCIR_MAX_BAR_0 = common dso_local global i32 0, align 4
@MSIX_TABLE_ENTRY_SIZE = common dso_local global i32 0, align 4
@PCIBAR_MEM32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_emul_add_msixcap(%struct.pci_devinst* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_devinst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.msixcap, align 4
  store %struct.pci_devinst* %0, %struct.pci_devinst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAX_MSIX_TABLE_ENTRIES, align 4
  %14 = icmp sle i32 %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ false, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PCIR_MAX_BAR_0, align 4
  %24 = icmp sle i32 %22, %23
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi i1 [ false, %15 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MSIX_TABLE_ENTRY_SIZE, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @roundup2(i64 %33, i32 4096)
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %37 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %41 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %44 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %48 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %52 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  store i64 %50, i64* %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @PBA_SIZE(i32 %54)
  %56 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %57 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store i64 %55, i64* %58, align 8
  %59 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @pci_msix_table_init(%struct.pci_devinst* %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @pci_populate_msixcap(%struct.msixcap* %8, i32 %62, i32 %63, i64 %64)
  %66 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @PCIBAR_MEM32, align 4
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %71 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %69, %73
  %75 = call i32 @pci_emul_alloc_bar(%struct.pci_devinst* %66, i32 %67, i32 %68, i64 %74)
  %76 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %77 = bitcast %struct.msixcap* %8 to i32*
  %78 = call i32 @pci_emul_add_capability(%struct.pci_devinst* %76, i32* %77, i32 4)
  ret i32 %78
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i64 @PBA_SIZE(i32) #1

declare dso_local i32 @pci_msix_table_init(%struct.pci_devinst*, i32) #1

declare dso_local i32 @pci_populate_msixcap(%struct.msixcap*, i32, i32, i64) #1

declare dso_local i32 @pci_emul_alloc_bar(%struct.pci_devinst*, i32, i32, i64) #1

declare dso_local i32 @pci_emul_add_capability(%struct.pci_devinst*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
