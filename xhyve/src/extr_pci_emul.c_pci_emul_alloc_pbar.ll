; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_alloc_pbar.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_alloc_pbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PCI_BARMAX = common dso_local global i32 0, align 4
@pci_emul_iobase = common dso_local global i32 0, align 4
@PCI_EMUL_IOLIMIT = common dso_local global i32 0, align 4
@PCIM_BAR_IO_BASE = common dso_local global i32 0, align 4
@PCIM_BAR_IO_SPACE = common dso_local global i32 0, align 4
@pci_emul_membase64 = common dso_local global i32 0, align 4
@PCI_EMUL_MEMLIMIT64 = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_BASE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_SPACE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_64 = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_PREFETCH = common dso_local global i32 0, align 4
@pci_emul_membase32 = common dso_local global i32 0, align 4
@PCI_EMUL_MEMLIMIT32 = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"pci_emul_alloc_base: invalid bar type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_emul_alloc_pbar(%struct.pci_devinst* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_devinst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pci_devinst* %0, %struct.pci_devinst** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PCI_BARMAX, align 4
  %24 = icmp sle i32 %22, %23
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i1 [ false, %5 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = call i64 @flsl(i64 %36)
  %38 = shl i64 1, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %34, %25
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 132
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 4, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %43
  br label %53

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 16
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 16, i32* %11, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32, i32* %10, align 4
  switch i32 %54, label %94 [
    i32 128, label %55
    i32 132, label %56
    i32 130, label %60
    i32 131, label %84
    i32 129, label %90
  ]

55:                                               ; preds = %53
  store i32* null, i32** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %94

56:                                               ; preds = %53
  store i32* @pci_emul_iobase, i32** %13, align 8
  %57 = load i32, i32* @PCI_EMUL_IOLIMIT, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* @PCIM_BAR_IO_BASE, align 4
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* @PCIM_BAR_IO_SPACE, align 4
  store i32 %59, i32* %17, align 4
  br label %94

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = icmp sgt i32 %61, 33554432
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp eq i64 %65, 4294967296
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32* %9, i32** %13, align 8
  br label %69

68:                                               ; preds = %63
  store i32* @pci_emul_membase64, i32** %13, align 8
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* @PCI_EMUL_MEMLIMIT64, align 4
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* @PCIM_BAR_MEM_BASE, align 4
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* @PCIM_BAR_MEM_SPACE, align 4
  %73 = load i32, i32* @PCIM_BAR_MEM_64, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @PCIM_BAR_MEM_PREFETCH, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %17, align 4
  br label %94

77:                                               ; preds = %60
  store i32* @pci_emul_membase32, i32** %13, align 8
  %78 = load i32, i32* @PCI_EMUL_MEMLIMIT32, align 4
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* @PCIM_BAR_MEM_BASE, align 4
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* @PCIM_BAR_MEM_SPACE, align 4
  %81 = load i32, i32* @PCIM_BAR_MEM_64, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %77
  br label %94

84:                                               ; preds = %53
  store i32* @pci_emul_membase32, i32** %13, align 8
  %85 = load i32, i32* @PCI_EMUL_MEMLIMIT32, align 4
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* @PCIM_BAR_MEM_BASE, align 4
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* @PCIM_BAR_MEM_SPACE, align 4
  %88 = load i32, i32* @PCIM_BAR_MEM_32, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %17, align 4
  br label %94

90:                                               ; preds = %53
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = call i32 @assert(i32 0)
  br label %94

94:                                               ; preds = %90, %53, %84, %83, %69, %56, %55
  %95 = load i32*, i32** %13, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @pci_emul_alloc_resource(i32* %98, i32 %99, i32 %100, i32* %15)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %6, align 4
  br label %170

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %94
  %108 = load i32, i32* %10, align 4
  %109 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %110 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i32 %108, i32* %115, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %118 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  store i32 %116, i32* %123, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %126 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  store i32 %124, i32* %131, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* %17, align 4
  %136 = or i32 %134, %135
  store i32 %136, i32* %18, align 4
  %137 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @PCIR_BAR(i32 %138)
  %140 = load i32, i32* %18, align 4
  %141 = call i32 @pci_set_cfgdata32(%struct.pci_devinst* %137, i32 %139, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = icmp eq i32 %142, 130
  br i1 %143, label %144, label %166

144:                                              ; preds = %107
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  %147 = load i32, i32* @PCI_BARMAX, align 4
  %148 = icmp sle i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %152 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store i32 129, i32* %158, align 4
  %159 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 1
  %162 = call i32 @PCIR_BAR(i32 %161)
  %163 = load i32, i32* %18, align 4
  %164 = ashr i32 %163, 32
  %165 = call i32 @pci_set_cfgdata32(%struct.pci_devinst* %159, i32 %162, i32 %164)
  br label %166

166:                                              ; preds = %144, %107
  %167 = load %struct.pci_devinst*, %struct.pci_devinst** %7, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @register_bar(%struct.pci_devinst* %167, i32 %168)
  store i32 0, i32* %6, align 4
  br label %170

170:                                              ; preds = %166, %104
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @flsl(i64) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @pci_emul_alloc_resource(i32*, i32, i32, i32*) #1

declare dso_local i32 @pci_set_cfgdata32(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @register_bar(%struct.pci_devinst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
