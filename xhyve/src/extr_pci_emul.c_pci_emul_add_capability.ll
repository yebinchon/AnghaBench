; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_add_capability.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_add_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { i32, i32 }

@PCIR_STATUS = common dso_local global i32 0, align 4
@PCIM_STATUS_CAPPRESENT = common dso_local global i32 0, align 4
@CAP_START_OFFSET = common dso_local global i32 0, align 4
@PCI_REGMAX = common dso_local global i32 0, align 4
@PCIR_CAP_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_devinst*, i32*, i32)* @pci_emul_add_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_emul_add_capability(%struct.pci_devinst* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_devinst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_devinst* %0, %struct.pci_devinst** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @roundup2(i32 %16, i32 4)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %19 = load i32, i32* @PCIR_STATUS, align 4
  %20 = call i32 @pci_get_cfgdata16(%struct.pci_devinst* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @PCIM_STATUS_CAPPRESENT, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @CAP_START_OFFSET, align 4
  store i32 %26, i32* %9, align 4
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %29 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27, %25
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @PCI_REGMAX, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %97

40:                                               ; preds = %32
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @PCIM_STATUS_CAPPRESENT, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %47 = load i32, i32* @PCIR_CAP_PTR, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %46, i32 %47, i32 %48)
  %50 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %51 = load i32, i32* @PCIR_STATUS, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @PCIM_STATUS_CAPPRESENT, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @pci_set_cfgdata16(%struct.pci_devinst* %50, i32 %51, i32 %54)
  br label %64

56:                                               ; preds = %40
  %57 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %58 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %59 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %57, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %45
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %80, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %70, i32 %73, i32 %78)
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %84, i32 %86, i32 0)
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %90 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %96 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %83, %39
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @pci_get_cfgdata16(%struct.pci_devinst*, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @pci_set_cfgdata16(%struct.pci_devinst*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
