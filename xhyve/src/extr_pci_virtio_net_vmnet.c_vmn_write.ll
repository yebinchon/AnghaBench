; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_vmnet.c_vmn_write.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_vmnet.c_vmn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmnet_state = type { i64, i32 }
%struct.iovec = type { i64 }
%struct.vmpktdesc = type { i64, i64, i64, %struct.iovec* }

@VMNET_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmnet_state*, %struct.iovec*, i32)* @vmn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmn_write(%struct.vmnet_state* %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca %struct.vmnet_state*, align 8
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmpktdesc, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vmnet_state* %0, %struct.vmnet_state** %4, align 8
  store %struct.iovec* %1, %struct.iovec** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = getelementptr inbounds %struct.vmpktdesc, %struct.vmpktdesc* %8, i32 0, i32 0
  store i64 0, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %26, %3
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.iovec*, %struct.iovec** %5, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i64 %19
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.vmpktdesc, %struct.vmpktdesc* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %22
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %12

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.vmpktdesc, %struct.vmpktdesc* %8, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vmnet_state*, %struct.vmnet_state** %4, align 8
  %33 = getelementptr inbounds %struct.vmnet_state, %struct.vmnet_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.iovec*, %struct.iovec** %5, align 8
  %39 = getelementptr inbounds %struct.vmpktdesc, %struct.vmpktdesc* %8, i32 0, i32 3
  store %struct.iovec* %38, %struct.iovec** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.vmpktdesc, %struct.vmpktdesc* %8, i32 0, i32 2
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.vmpktdesc, %struct.vmpktdesc* %8, i32 0, i32 1
  store i64 0, i64* %43, align 8
  store i32 1, i32* %9, align 4
  %44 = load %struct.vmnet_state*, %struct.vmnet_state** %4, align 8
  %45 = getelementptr inbounds %struct.vmnet_state, %struct.vmnet_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @vmnet_write(i32 %46, %struct.vmpktdesc* %8, i32* %9)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @VMNET_SUCCESS, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vmnet_write(i32, %struct.vmpktdesc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
