; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_modify_bar_registration.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_modify_bar_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.inout_port = type { i32, i32, i32, %struct.pci_devinst*, i32, i32, i64, i32, %struct.pci_devinst* }
%struct.mem_range = type { i32, i32, i32, %struct.pci_devinst*, i32, i32, i64, i32, %struct.pci_devinst* }

@IOPORT_F_INOUT = common dso_local global i32 0, align 4
@pci_emul_io_handler = common dso_local global i32 0, align 4
@MEM_F_RW = common dso_local global i32 0, align 4
@pci_emul_mem_handler = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_devinst*, i32, i32)* @modify_bar_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modify_bar_registration(%struct.pci_devinst* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_devinst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inout_port, align 8
  %9 = alloca %struct.mem_range, align 8
  store %struct.pci_devinst* %0, %struct.pci_devinst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %11 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %100 [
    i32 132, label %18
    i32 131, label %59
    i32 130, label %59
    i32 128, label %98
    i32 129, label %98
  ]

18:                                               ; preds = %3
  %19 = bitcast %struct.inout_port* %8 to %struct.mem_range*
  %20 = call i32 @bzero(%struct.mem_range* %19, i32 56)
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %22 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 7
  store i32 %23, i32* %24, align 8
  %25 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %26 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %36 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %18
  %47 = load i32, i32* @IOPORT_F_INOUT, align 4
  %48 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 5
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @pci_emul_io_handler, align 4
  %50 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 4
  store i32 %49, i32* %50, align 8
  %51 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %52 = getelementptr inbounds %struct.inout_port, %struct.inout_port* %8, i32 0, i32 8
  store %struct.pci_devinst* %51, %struct.pci_devinst** %52, align 8
  %53 = bitcast %struct.inout_port* %8 to %struct.mem_range*
  %54 = call i32 @register_inout(%struct.mem_range* %53)
  store i32 %54, i32* %7, align 4
  br label %58

55:                                               ; preds = %18
  %56 = bitcast %struct.inout_port* %8 to %struct.mem_range*
  %57 = call i32 @unregister_inout(%struct.mem_range* %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %46
  br label %100

59:                                               ; preds = %3, %3
  %60 = call i32 @bzero(%struct.mem_range* %9, i32 56)
  %61 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %62 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 7
  store i32 %63, i32* %64, align 8
  %65 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %66 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 6
  store i64 %72, i64* %73, align 8
  %74 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %75 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %59
  %86 = load i32, i32* @MEM_F_RW, align 4
  %87 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 5
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @pci_emul_mem_handler, align 4
  %89 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 4
  store i32 %88, i32* %89, align 8
  %90 = load %struct.pci_devinst*, %struct.pci_devinst** %4, align 8
  %91 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 3
  store %struct.pci_devinst* %90, %struct.pci_devinst** %91, align 8
  %92 = load i32, i32* %5, align 4
  %93 = getelementptr inbounds %struct.mem_range, %struct.mem_range* %9, i32 0, i32 2
  store i32 %92, i32* %93, align 8
  %94 = call i32 @register_mem(%struct.mem_range* %9)
  store i32 %94, i32* %7, align 4
  br label %97

95:                                               ; preds = %59
  %96 = call i32 @unregister_mem(%struct.mem_range* %9)
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %85
  br label %100

98:                                               ; preds = %3, %3
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %3, %98, %97, %58
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  ret void
}

declare dso_local i32 @bzero(%struct.mem_range*, i32) #1

declare dso_local i32 @register_inout(%struct.mem_range*) #1

declare dso_local i32 @unregister_inout(%struct.mem_range*) #1

declare dso_local i32 @register_mem(%struct.mem_range*) #1

declare dso_local i32 @unregister_mem(%struct.mem_range*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
