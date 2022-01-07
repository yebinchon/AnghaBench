; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_capwrite.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_capwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { i32 }

@CAP_START_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_devinst*, i32, i32, i32)* @pci_emul_capwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_emul_capwrite(%struct.pci_devinst* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_devinst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_devinst* %0, %struct.pci_devinst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %94

18:                                               ; preds = %4
  %19 = load i32, i32* @CAP_START_OFFSET, align 4
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %18, %37
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @pci_get_cfgdata8(%struct.pci_devinst* %21, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %39

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %39

37:                                               ; preds = %32, %28
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %10, align 4
  br label %20

39:                                               ; preds = %36, %27
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp sge i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %48, %39
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  store i32 2, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 16
  store i32 %64, i32* %8, align 4
  br label %66

65:                                               ; preds = %57, %53
  br label %94

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @pci_get_cfgdata8(%struct.pci_devinst* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  switch i32 %71, label %93 [
    i32 129, label %72
    i32 128, label %79
    i32 130, label %86
  ]

72:                                               ; preds = %67
  %73 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @msicap_cfgwrite(%struct.pci_devinst* %73, i32 %74, i32 %75, i32 %76, i32 %77)
  br label %94

79:                                               ; preds = %67
  %80 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @msixcap_cfgwrite(%struct.pci_devinst* %80, i32 %81, i32 %82, i32 %83, i32 %84)
  br label %94

86:                                               ; preds = %67
  %87 = load %struct.pci_devinst*, %struct.pci_devinst** %5, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @pciecap_cfgwrite(%struct.pci_devinst* %87, i32 %88, i32 %89, i32 %90, i32 %91)
  br label %94

93:                                               ; preds = %67
  br label %94

94:                                               ; preds = %17, %65, %93, %86, %79, %72
  ret void
}

declare dso_local i32 @pci_get_cfgdata8(%struct.pci_devinst*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @msicap_cfgwrite(%struct.pci_devinst*, i32, i32, i32, i32) #1

declare dso_local i32 @msixcap_cfgwrite(%struct.pci_devinst*, i32, i32, i32, i32) #1

declare dso_local i32 @pciecap_cfgwrite(%struct.pci_devinst*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
