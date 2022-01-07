; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_cmdsts_write.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_cmdsts_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCI_BARMAX = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_devinst*, i32, i32, i32)* @pci_emul_cmdsts_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_emul_cmdsts_write(%struct.pci_devinst* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_devinst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_devinst* %0, %struct.pci_devinst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %17 = load i32, i32* @PCIR_COMMAND, align 4
  %18 = call i32 @pci_get_cfgdata16(%struct.pci_devinst* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 3
  %21 = mul nsw i32 %20, 8
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = lshr i32 -1920, %22
  store i32 %23, i32* %15, align 4
  %24 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @CFGREAD(%struct.pci_devinst* %24, i32 %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @CFGWRITE(%struct.pci_devinst* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %43 = load i32, i32* @PCIR_COMMAND, align 4
  %44 = call i32 @pci_get_cfgdata16(%struct.pci_devinst* %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = xor i32 %45, %46
  store i32 %47, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %101, %4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @PCI_BARMAX, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %104

52:                                               ; preds = %48
  %53 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %54 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %100 [
    i32 128, label %61
    i32 129, label %61
    i32 132, label %62
    i32 131, label %81
    i32 130, label %81
  ]

61:                                               ; preds = %52, %52
  br label %100

62:                                               ; preds = %52
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %69 = call i32 @porten(%struct.pci_devinst* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @register_bar(%struct.pci_devinst* %72, i32 %73)
  br label %79

75:                                               ; preds = %67
  %76 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @unregister_bar(%struct.pci_devinst* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %62
  br label %100

81:                                               ; preds = %52, %52
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %88 = call i32 @memen(%struct.pci_devinst* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @register_bar(%struct.pci_devinst* %91, i32 %92)
  br label %98

94:                                               ; preds = %86
  %95 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @unregister_bar(%struct.pci_devinst* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %81
  br label %100

100:                                              ; preds = %52, %99, %80, %61
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %48

104:                                              ; preds = %48
  %105 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %106 = call i32 @pci_lintr_update(%struct.pci_devinst* %105)
  ret void
}

declare dso_local i32 @pci_get_cfgdata16(%struct.pci_devinst*, i32) #1

declare dso_local i32 @CFGREAD(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @CFGWRITE(%struct.pci_devinst*, i32, i32, i32) #1

declare dso_local i32 @porten(%struct.pci_devinst*) #1

declare dso_local i32 @register_bar(%struct.pci_devinst*, i32) #1

declare dso_local i32 @unregister_bar(%struct.pci_devinst*, i32) #1

declare dso_local i32 @memen(%struct.pci_devinst*) #1

declare dso_local i32 @pci_lintr_update(%struct.pci_devinst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
