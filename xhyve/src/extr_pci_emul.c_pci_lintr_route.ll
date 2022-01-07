; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_lintr_route.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_lintr_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.businfo = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.intxinfo* }
%struct.intxinfo = type { i64, i64 }
%struct.pci_devinst = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64 }

@pci_businfo = common dso_local global %struct.businfo** null, align 8
@PCIR_INTLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_devinst*)* @pci_lintr_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_lintr_route(%struct.pci_devinst* %0) #0 {
  %2 = alloca %struct.pci_devinst*, align 8
  %3 = alloca %struct.businfo*, align 8
  %4 = alloca %struct.intxinfo*, align 8
  store %struct.pci_devinst* %0, %struct.pci_devinst** %2, align 8
  %5 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %6 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %90

11:                                               ; preds = %1
  %12 = load %struct.businfo**, %struct.businfo*** @pci_businfo, align 8
  %13 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %14 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.businfo*, %struct.businfo** %12, i64 %15
  %17 = load %struct.businfo*, %struct.businfo** %16, align 8
  store %struct.businfo* %17, %struct.businfo** %3, align 8
  %18 = load %struct.businfo*, %struct.businfo** %3, align 8
  %19 = icmp ne %struct.businfo* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.businfo*, %struct.businfo** %3, align 8
  %23 = getelementptr inbounds %struct.businfo, %struct.businfo* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %26 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.intxinfo*, %struct.intxinfo** %29, align 8
  %31 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %32 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %30, i64 %36
  store %struct.intxinfo* %37, %struct.intxinfo** %4, align 8
  %38 = load %struct.intxinfo*, %struct.intxinfo** %4, align 8
  %39 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %11
  %43 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %44 = call i64 @ioapic_pci_alloc_irq(%struct.pci_devinst* %43)
  %45 = load %struct.intxinfo*, %struct.intxinfo** %4, align 8
  %46 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %11
  %48 = load %struct.intxinfo*, %struct.intxinfo** %4, align 8
  %49 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.intxinfo*, %struct.intxinfo** %4, align 8
  %55 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %60 = call i64 @pirq_alloc_pin(%struct.pci_devinst* %59)
  %61 = load %struct.intxinfo*, %struct.intxinfo** %4, align 8
  %62 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %47
  %64 = load %struct.intxinfo*, %struct.intxinfo** %4, align 8
  %65 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.intxinfo*, %struct.intxinfo** %4, align 8
  %71 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %74 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i64 %72, i64* %75, align 8
  %76 = load %struct.intxinfo*, %struct.intxinfo** %4, align 8
  %77 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %80 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i64 %78, i64* %81, align 8
  %82 = load %struct.pci_devinst*, %struct.pci_devinst** %2, align 8
  %83 = load i32, i32* @PCIR_INTLINE, align 4
  %84 = load %struct.intxinfo*, %struct.intxinfo** %4, align 8
  %85 = getelementptr inbounds %struct.intxinfo, %struct.intxinfo* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @pirq_irq(i64 %86)
  %88 = trunc i64 %87 to i32
  %89 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %82, i32 %83, i32 %88)
  br label %90

90:                                               ; preds = %63, %10
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ioapic_pci_alloc_irq(%struct.pci_devinst*) #1

declare dso_local i64 @pirq_alloc_pin(%struct.pci_devinst*) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i64 @pirq_irq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
