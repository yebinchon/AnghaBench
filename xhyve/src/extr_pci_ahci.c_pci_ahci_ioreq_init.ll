; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_pci_ahci_ioreq_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_ahci.c_pci_ahci_ioreq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32, i32, %struct.ahci_ioreq*, i32 }
%struct.ahci_ioreq = type { %struct.TYPE_2__, %struct.ahci_port* }
%struct.TYPE_2__ = type { %struct.ahci_ioreq*, i32 }

@ata_ioreq_cb = common dso_local global i32 0, align 4
@atapi_ioreq_cb = common dso_local global i32 0, align 4
@io_flist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*)* @pci_ahci_ioreq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_ahci_ioreq_init(%struct.ahci_port* %0) #0 {
  %2 = alloca %struct.ahci_port*, align 8
  %3 = alloca %struct.ahci_ioreq*, align 8
  %4 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %2, align 8
  %5 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %6 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @blockif_queuesz(i32 %7)
  %9 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %10 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %12 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = call %struct.ahci_ioreq* @calloc(i64 %14, i32 24)
  %16 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %17 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %16, i32 0, i32 4
  store %struct.ahci_ioreq* %15, %struct.ahci_ioreq** %17, align 8
  %18 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %19 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %18, i32 0, i32 2
  %20 = call i32 @STAILQ_INIT(i32* %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %61, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %24 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %21
  %28 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %29 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %28, i32 0, i32 4
  %30 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %30, i64 %32
  store %struct.ahci_ioreq* %33, %struct.ahci_ioreq** %3, align 8
  %34 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %35 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %3, align 8
  %36 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %35, i32 0, i32 1
  store %struct.ahci_port* %34, %struct.ahci_port** %36, align 8
  %37 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %38 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %27
  %42 = load i32, i32* @ata_ioreq_cb, align 4
  %43 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %3, align 8
  %44 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  br label %51

46:                                               ; preds = %27
  %47 = load i32, i32* @atapi_ioreq_cb, align 4
  %48 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %3, align 8
  %49 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %3, align 8
  %53 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %3, align 8
  %54 = getelementptr inbounds %struct.ahci_ioreq, %struct.ahci_ioreq* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store %struct.ahci_ioreq* %52, %struct.ahci_ioreq** %55, align 8
  %56 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %57 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %56, i32 0, i32 2
  %58 = load %struct.ahci_ioreq*, %struct.ahci_ioreq** %3, align 8
  %59 = load i32, i32* @io_flist, align 4
  %60 = call i32 @STAILQ_INSERT_TAIL(i32* %57, %struct.ahci_ioreq* %58, i32 %59)
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %21

64:                                               ; preds = %21
  %65 = load %struct.ahci_port*, %struct.ahci_port** %2, align 8
  %66 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %65, i32 0, i32 1
  %67 = call i32 @TAILQ_INIT(i32* %66)
  ret void
}

declare dso_local i32 @blockif_queuesz(i32) #1

declare dso_local %struct.ahci_ioreq* @calloc(i64, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ahci_ioreq*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
