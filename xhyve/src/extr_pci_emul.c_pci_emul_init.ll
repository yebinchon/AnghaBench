; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_emul.c_pci_emul_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devemu = type { i8*, i32 (%struct.pci_devinst*, i32)* }
%struct.pci_devinst = type { i32, %struct.pci_devemu*, %struct.TYPE_2__, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i32 }
%struct.funcinfo = type { %struct.pci_devinst*, i32 }

@IDLE = common dso_local global i32 0, align 4
@PI_NAMESZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s-pci-%d\00", align 1
@PCIR_INTLINE = common dso_local global i32 0, align 4
@PCIR_INTPIN = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_devemu*, i32, i32, i32, %struct.funcinfo*)* @pci_emul_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_emul_init(%struct.pci_devemu* %0, i32 %1, i32 %2, i32 %3, %struct.funcinfo* %4) #0 {
  %6 = alloca %struct.pci_devemu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.funcinfo*, align 8
  %11 = alloca %struct.pci_devinst*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_devemu* %0, %struct.pci_devemu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.funcinfo* %4, %struct.funcinfo** %10, align 8
  %13 = call %struct.pci_devinst* @calloc(i32 1, i32 80)
  store %struct.pci_devinst* %13, %struct.pci_devinst** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %18 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %23 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %28 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %30 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = call i32 @pthread_mutex_init(i32* %31, i32* null)
  %33 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %34 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @IDLE, align 4
  %37 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %38 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %41 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %44 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.pci_devemu*, %struct.pci_devemu** %6, align 8
  %47 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %48 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %47, i32 0, i32 1
  store %struct.pci_devemu* %46, %struct.pci_devemu** %48, align 8
  %49 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %50 = getelementptr inbounds %struct.pci_devinst, %struct.pci_devinst* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PI_NAMESZ, align 4
  %53 = load %struct.pci_devemu*, %struct.pci_devemu** %6, align 8
  %54 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @snprintf(i32 %51, i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %56)
  %58 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %59 = load i32, i32* @PCIR_INTLINE, align 4
  %60 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %58, i32 %59, i32 255)
  %61 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %62 = load i32, i32* @PCIR_INTPIN, align 4
  %63 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %61, i32 %62, i32 0)
  %64 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %65 = load i32, i32* @PCIR_COMMAND, align 4
  %66 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %67 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @pci_set_cfgdata8(%struct.pci_devinst* %64, i32 %65, i32 %70)
  %72 = load %struct.pci_devemu*, %struct.pci_devemu** %6, align 8
  %73 = getelementptr inbounds %struct.pci_devemu, %struct.pci_devemu* %72, i32 0, i32 1
  %74 = load i32 (%struct.pci_devinst*, i32)*, i32 (%struct.pci_devinst*, i32)** %73, align 8
  %75 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %76 = load %struct.funcinfo*, %struct.funcinfo** %10, align 8
  %77 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %74(%struct.pci_devinst* %75, i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %5
  %83 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %84 = load %struct.funcinfo*, %struct.funcinfo** %10, align 8
  %85 = getelementptr inbounds %struct.funcinfo, %struct.funcinfo* %84, i32 0, i32 0
  store %struct.pci_devinst* %83, %struct.pci_devinst** %85, align 8
  br label %89

86:                                               ; preds = %5
  %87 = load %struct.pci_devinst*, %struct.pci_devinst** %11, align 8
  %88 = call i32 @free(%struct.pci_devinst* %87)
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i32, i32* %12, align 4
  ret i32 %90
}

declare dso_local %struct.pci_devinst* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @pci_set_cfgdata8(%struct.pci_devinst*, i32, i32) #1

declare dso_local i32 @free(%struct.pci_devinst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
