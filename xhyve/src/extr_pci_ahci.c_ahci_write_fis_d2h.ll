; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_write_fis_d2h.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_write_fis_d2h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32*, i32, i32 }

@FIS_TYPE_REGD2H = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*, i32)* @ahci_write_fis_d2h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_write_fis_d2h(%struct.ahci_port* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ahci_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [20 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = ashr i32 %11, 8
  %13 = and i32 %12, 255
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %15 = call i32 @memset(i32* %14, i32 0, i32 80)
  %16 = load i32, i32* @FIS_TYPE_REGD2H, align 4
  %17 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 1
  store i32 64, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 255
  %21 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 2
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 3
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 4
  store i32 %26, i32* %27, align 16
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 5
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 6
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 6
  store i32 %34, i32* %35, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 7
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 7
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 8
  store i32 %42, i32* %43, align 16
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 9
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 9
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 10
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 10
  store i32 %50, i32* %51, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 11
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 11
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 12
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 12
  store i32 %58, i32* %59, align 16
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 13
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 13
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ATA_S_ERROR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %4
  %70 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %71 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 128, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, 255
  %76 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %77 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %82 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  store i32 %80, i32* %84, align 4
  %85 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %86 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = call i32 @memcpy(i32* %88, i32* %90, i32 16)
  br label %100

92:                                               ; preds = %4
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 1, %93
  %95 = xor i32 %94, -1
  %96 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %97 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %92, %69
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %103 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %105 = load i32, i32* @FIS_TYPE_REGD2H, align 4
  %106 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %107 = call i32 @ahci_write_fis(%struct.ahci_port* %104, i32 %105, i32* %106)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ahci_write_fis(%struct.ahci_port*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
