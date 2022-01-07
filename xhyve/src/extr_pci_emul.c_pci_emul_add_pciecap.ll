; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_add_pciecap.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_add_pciecap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { i32 }
%struct.pciecap = type { i32, i32, i32, i32 }

@PCIEM_TYPE_ROOT_PORT = common dso_local global i32 0, align 4
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@PCIECAP_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_emul_add_pciecap(%struct.pci_devinst* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_devinst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pciecap, align 4
  store %struct.pci_devinst* %0, %struct.pci_devinst** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @CTASSERT(i32 0)
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PCIEM_TYPE_ROOT_PORT, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = call i32 @bzero(%struct.pciecap* %7, i32 16)
  %15 = load i32, i32* @PCIY_EXPRESS, align 4
  %16 = getelementptr inbounds %struct.pciecap, %struct.pciecap* %7, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @PCIECAP_VERSION, align 4
  %18 = load i32, i32* @PCIEM_TYPE_ROOT_PORT, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.pciecap, %struct.pciecap* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.pciecap, %struct.pciecap* %7, i32 0, i32 1
  store i32 1041, i32* %21, align 4
  %22 = getelementptr inbounds %struct.pciecap, %struct.pciecap* %7, i32 0, i32 2
  store i32 17, i32* %22, align 4
  %23 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %24 = bitcast %struct.pciecap* %7 to i32*
  %25 = call i32 @pci_emul_add_capability(%struct.pci_devinst* %23, i32* %24, i32 16)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %13, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i32 @bzero(%struct.pciecap*, i32) #1

declare dso_local i32 @pci_emul_add_capability(%struct.pci_devinst*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
