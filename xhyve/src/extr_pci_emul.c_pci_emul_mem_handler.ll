; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_mem_handler.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_mem_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinst = type { %struct.TYPE_2__*, %struct.pci_devemu* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.pci_devemu = type { i64 (i32, %struct.pci_devinst*, i32, i64, i32)*, i32 (i32, %struct.pci_devinst*, i32, i64, i32, i64)* }

@PCI_BARMAX = common dso_local global i32 0, align 4
@PCIBAR_MEM32 = common dso_local global i64 0, align 8
@PCIBAR_MEM64 = common dso_local global i64 0, align 8
@MEM_F_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i32, i64*, i8*, i64)* @pci_emul_mem_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_emul_mem_handler(i32 %0, i32 %1, i64 %2, i32 %3, i64* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.pci_devinst*, align 8
  %16 = alloca %struct.pci_devemu*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = bitcast i8* %19 to %struct.pci_devinst*
  store %struct.pci_devinst* %20, %struct.pci_devinst** %15, align 8
  %21 = load %struct.pci_devinst*, %struct.pci_devinst** %15, align 8
  %22 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %21, i32 0, i32 1
  %23 = load %struct.pci_devemu*, %struct.pci_devemu** %22, align 8
  store %struct.pci_devemu* %23, %struct.pci_devemu** %16, align 8
  %24 = load i64, i64* %14, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = load i32, i32* @PCI_BARMAX, align 4
  %28 = icmp sle i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.pci_devinst*, %struct.pci_devinst** %15, align 8
  %32 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %18, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCIBAR_MEM32, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %7
  %42 = load %struct.pci_devinst*, %struct.pci_devinst** %15, align 8
  %43 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PCIBAR_MEM64, align 8
  %51 = icmp eq i64 %49, %50
  br label %52

52:                                               ; preds = %41, %7
  %53 = phi i1 [ true, %7 ], [ %51, %41 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.pci_devinst*, %struct.pci_devinst** %15, align 8
  %58 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %56, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %52
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load %struct.pci_devinst*, %struct.pci_devinst** %15, align 8
  %72 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pci_devinst*, %struct.pci_devinst** %15, align 8
  %80 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %78, %86
  %88 = icmp sle i64 %70, %87
  br label %89

89:                                               ; preds = %66, %52
  %90 = phi i1 [ false, %52 ], [ %88, %66 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.pci_devinst*, %struct.pci_devinst** %15, align 8
  %95 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %93, %101
  store i64 %102, i64* %17, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @MEM_F_WRITE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %146

106:                                              ; preds = %89
  %107 = load i32, i32* %11, align 4
  %108 = icmp eq i32 %107, 8
  br i1 %108, label %109, label %133

109:                                              ; preds = %106
  %110 = load %struct.pci_devemu*, %struct.pci_devemu** %16, align 8
  %111 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %110, i32 0, i32 1
  %112 = load i32 (i32, %struct.pci_devinst*, i32, i64, i32, i64)*, i32 (i32, %struct.pci_devinst*, i32, i64, i32, i64)** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.pci_devinst*, %struct.pci_devinst** %15, align 8
  %115 = load i32, i32* %18, align 4
  %116 = load i64, i64* %17, align 8
  %117 = load i64*, i64** %12, align 8
  %118 = load i64, i64* %117, align 8
  %119 = and i64 %118, 4294967295
  %120 = call i32 %112(i32 %113, %struct.pci_devinst* %114, i32 %115, i64 %116, i32 4, i64 %119)
  %121 = load %struct.pci_devemu*, %struct.pci_devemu** %16, align 8
  %122 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %121, i32 0, i32 1
  %123 = load i32 (i32, %struct.pci_devinst*, i32, i64, i32, i64)*, i32 (i32, %struct.pci_devinst*, i32, i64, i32, i64)** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.pci_devinst*, %struct.pci_devinst** %15, align 8
  %126 = load i32, i32* %18, align 4
  %127 = load i64, i64* %17, align 8
  %128 = add nsw i64 %127, 4
  %129 = load i64*, i64** %12, align 8
  %130 = load i64, i64* %129, align 8
  %131 = ashr i64 %130, 32
  %132 = call i32 %123(i32 %124, %struct.pci_devinst* %125, i32 %126, i64 %128, i32 4, i64 %131)
  br label %145

133:                                              ; preds = %106
  %134 = load %struct.pci_devemu*, %struct.pci_devemu** %16, align 8
  %135 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %134, i32 0, i32 1
  %136 = load i32 (i32, %struct.pci_devinst*, i32, i64, i32, i64)*, i32 (i32, %struct.pci_devinst*, i32, i64, i32, i64)** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.pci_devinst*, %struct.pci_devinst** %15, align 8
  %139 = load i32, i32* %18, align 4
  %140 = load i64, i64* %17, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i64*, i64** %12, align 8
  %143 = load i64, i64* %142, align 8
  %144 = call i32 %136(i32 %137, %struct.pci_devinst* %138, i32 %139, i64 %140, i32 %141, i64 %143)
  br label %145

145:                                              ; preds = %133, %109
  br label %184

146:                                              ; preds = %89
  %147 = load i32, i32* %11, align 4
  %148 = icmp eq i32 %147, 8
  br i1 %148, label %149, label %172

149:                                              ; preds = %146
  %150 = load %struct.pci_devemu*, %struct.pci_devemu** %16, align 8
  %151 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %150, i32 0, i32 0
  %152 = load i64 (i32, %struct.pci_devinst*, i32, i64, i32)*, i64 (i32, %struct.pci_devinst*, i32, i64, i32)** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.pci_devinst*, %struct.pci_devinst** %15, align 8
  %155 = load i32, i32* %18, align 4
  %156 = load i64, i64* %17, align 8
  %157 = call i64 %152(i32 %153, %struct.pci_devinst* %154, i32 %155, i64 %156, i32 4)
  %158 = load i64*, i64** %12, align 8
  store i64 %157, i64* %158, align 8
  %159 = load %struct.pci_devemu*, %struct.pci_devemu** %16, align 8
  %160 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %159, i32 0, i32 0
  %161 = load i64 (i32, %struct.pci_devinst*, i32, i64, i32)*, i64 (i32, %struct.pci_devinst*, i32, i64, i32)** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.pci_devinst*, %struct.pci_devinst** %15, align 8
  %164 = load i32, i32* %18, align 4
  %165 = load i64, i64* %17, align 8
  %166 = add nsw i64 %165, 4
  %167 = call i64 %161(i32 %162, %struct.pci_devinst* %163, i32 %164, i64 %166, i32 4)
  %168 = shl i64 %167, 32
  %169 = load i64*, i64** %12, align 8
  %170 = load i64, i64* %169, align 8
  %171 = or i64 %170, %168
  store i64 %171, i64* %169, align 8
  br label %183

172:                                              ; preds = %146
  %173 = load %struct.pci_devemu*, %struct.pci_devemu** %16, align 8
  %174 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %173, i32 0, i32 0
  %175 = load i64 (i32, %struct.pci_devinst*, i32, i64, i32)*, i64 (i32, %struct.pci_devinst*, i32, i64, i32)** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.pci_devinst*, %struct.pci_devinst** %15, align 8
  %178 = load i32, i32* %18, align 4
  %179 = load i64, i64* %17, align 8
  %180 = load i32, i32* %11, align 4
  %181 = call i64 %175(i32 %176, %struct.pci_devinst* %177, i32 %178, i64 %179, i32 %180)
  %182 = load i64*, i64** %12, align 8
  store i64 %181, i64* %182, align 8
  br label %183

183:                                              ; preds = %172, %149
  br label %184

184:                                              ; preds = %183, %145
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
