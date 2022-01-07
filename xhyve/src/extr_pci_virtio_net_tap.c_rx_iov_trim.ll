; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_tap.c_rx_iov_trim.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_pci_virtio_net_tap.c_rx_iov_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iovec* (%struct.iovec*, i32*, i32)* @rx_iov_trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iovec* @rx_iov_trim(%struct.iovec* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iovec*, align 8
  store %struct.iovec* %0, %struct.iovec** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iovec*, %struct.iovec** %4, align 8
  %9 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i64 0
  %10 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp uge i64 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.iovec*, %struct.iovec** %4, align 8
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i64 0
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %22, %18
  store i64 %23, i64* %21, align 8
  %24 = load %struct.iovec*, %struct.iovec** %4, align 8
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i64 0
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.iovec*, %struct.iovec** %4, align 8
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %38, i64 1
  store %struct.iovec* %39, %struct.iovec** %7, align 8
  br label %55

40:                                               ; preds = %3
  %41 = load %struct.iovec*, %struct.iovec** %4, align 8
  %42 = getelementptr inbounds %struct.iovec, %struct.iovec* %41, i64 0
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.iovec*, %struct.iovec** %4, align 8
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %50, i64 0
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load %struct.iovec*, %struct.iovec** %4, align 8
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %53, i64 0
  store %struct.iovec* %54, %struct.iovec** %7, align 8
  br label %55

55:                                               ; preds = %40, %29
  %56 = load %struct.iovec*, %struct.iovec** %7, align 8
  ret %struct.iovec* %56
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
