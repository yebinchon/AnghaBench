; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-xdr.c_xdrmem_control.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-xdr.c_xdrmem_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.xdr_bytesrec = type { i64, i32 }

@XDR_GET_BYTES_AVAIL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8*)* @xdrmem_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdrmem_control(%struct.TYPE_3__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xdr_bytesrec*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.xdr_bytesrec*
  store %struct.xdr_bytesrec* %10, %struct.xdr_bytesrec** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @XDR_GET_BYTES_AVAIL, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %4, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load i32, i32* @TRUE, align 4
  %18 = load %struct.xdr_bytesrec*, %struct.xdr_bytesrec** %8, align 8
  %19 = getelementptr inbounds %struct.xdr_bytesrec, %struct.xdr_bytesrec* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load %struct.xdr_bytesrec*, %struct.xdr_bytesrec** %8, align 8
  %28 = getelementptr inbounds %struct.xdr_bytesrec, %struct.xdr_bytesrec* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %16, %14
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
