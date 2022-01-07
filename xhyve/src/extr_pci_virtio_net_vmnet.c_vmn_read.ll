; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_vmnet.c_vmn_read.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_vmnet.c_vmn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmnet_state = type { i64, i32 }
%struct.iovec = type { i64 }
%struct.vmpktdesc = type { i64, i64, i64, %struct.iovec* }

@VMNET_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmnet_state*, %struct.iovec*, i32)* @vmn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmn_read(%struct.vmnet_state* %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmnet_state*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.vmpktdesc, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vmnet_state* %0, %struct.vmnet_state** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = getelementptr inbounds %struct.vmpktdesc, %struct.vmpktdesc* %9, i32 0, i32 0
  store i64 0, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %27, %3
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.iovec*, %struct.iovec** %6, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %18, i64 %20
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.vmpktdesc, %struct.vmpktdesc* %9, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %23
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %11, align 4
  br label %13

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.vmpktdesc, %struct.vmpktdesc* %9, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vmnet_state*, %struct.vmnet_state** %5, align 8
  %34 = getelementptr inbounds %struct.vmnet_state, %struct.vmnet_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.iovec*, %struct.iovec** %6, align 8
  %40 = getelementptr inbounds %struct.vmpktdesc, %struct.vmpktdesc* %9, i32 0, i32 3
  store %struct.iovec* %39, %struct.iovec** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.vmpktdesc, %struct.vmpktdesc* %9, i32 0, i32 2
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.vmpktdesc, %struct.vmpktdesc* %9, i32 0, i32 1
  store i64 0, i64* %44, align 8
  store i32 1, i32* %10, align 4
  %45 = load %struct.vmnet_state*, %struct.vmnet_state** %5, align 8
  %46 = getelementptr inbounds %struct.vmnet_state, %struct.vmnet_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @vmnet_read(i32 %47, %struct.vmpktdesc* %9, i32* %10)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @VMNET_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %61

57:                                               ; preds = %30
  %58 = getelementptr inbounds %struct.vmpktdesc, %struct.vmpktdesc* %9, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %56
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vmnet_read(i32, %struct.vmpktdesc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
