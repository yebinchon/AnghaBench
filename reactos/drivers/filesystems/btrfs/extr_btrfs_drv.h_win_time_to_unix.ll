; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_btrfs_drv.h_win_time_to_unix.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_btrfs_drv.h_win_time_to_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_6__*)* @win_time_to_unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @win_time_to_unix(i64 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = sext i32 %9 to i64
  %11 = sub nsw i64 %10, 116444736000000000
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sdiv i32 %13, 10000000
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = srem i32 %17, 10000000
  %19 = mul nsw i32 %18, 100
  %20 = sext i32 %19 to i64
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
