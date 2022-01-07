; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_write_fis_sdb.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_ahci_write_fis_sdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32*, i32, i32 }

@FIS_TYPE_SETDEVBITS = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*, i32)* @ahci_write_fis_sdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_write_fis_sdb(%struct.ahci_port* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ahci_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = ashr i32 %11, 8
  %13 = and i32 %12, 255
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, 119
  store i32 %15, i32* %8, align 4
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %17 = call i32 @memset(i32* %16, i32 0, i32 32)
  %18 = load i32, i32* @FIS_TYPE_SETDEVBITS, align 4
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  store i32 64, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ATA_S_ERROR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %33 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %38 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %43 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %41, i32* %45, align 4
  %46 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %47 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = call i32 @memcpy(i32* %49, i32* %51, i32 16)
  br label %67

53:                                               ; preds = %4
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 1, %54
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = bitcast i32* %57 to i8*
  %59 = bitcast i8* %58 to i32*
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = shl i32 1, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %64 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %53, %30
  %68 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %69 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, -120
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %74 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.ahci_port*, %struct.ahci_port** %5, align 8
  %78 = load i32, i32* @FIS_TYPE_SETDEVBITS, align 4
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %80 = call i32 @ahci_write_fis(%struct.ahci_port* %77, i32 %78, i32* %79)
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
