; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_range_free.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_send.c_range_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_range = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.send_range* }

@OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.send_range*)* @range_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_free(%struct.send_range* %0) #0 {
  %2 = alloca %struct.send_range*, align 8
  %3 = alloca i64, align 8
  store %struct.send_range* %0, %struct.send_range** %2, align 8
  %4 = load %struct.send_range*, %struct.send_range** %2, align 8
  %5 = getelementptr inbounds %struct.send_range, %struct.send_range* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @OBJECT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.send_range*, %struct.send_range** %2, align 8
  %11 = getelementptr inbounds %struct.send_range, %struct.send_range* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.send_range*, %struct.send_range** %13, align 8
  %15 = getelementptr inbounds %struct.send_range, %struct.send_range* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  store i64 %19, i64* %3, align 8
  %20 = load %struct.send_range*, %struct.send_range** %2, align 8
  %21 = getelementptr inbounds %struct.send_range, %struct.send_range* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.send_range*, %struct.send_range** %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @kmem_free(%struct.send_range* %24, i32 %26)
  br label %28

28:                                               ; preds = %9, %1
  %29 = load %struct.send_range*, %struct.send_range** %2, align 8
  %30 = call i32 @kmem_free(%struct.send_range* %29, i32 24)
  ret void
}

declare dso_local i32 @kmem_free(%struct.send_range*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
