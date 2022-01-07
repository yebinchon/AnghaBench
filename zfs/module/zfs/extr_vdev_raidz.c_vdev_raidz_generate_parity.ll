; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz.c_vdev_raidz_generate_parity.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz.c_vdev_raidz_generate_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@RAIDZ_ORIGINAL_IMPL = common dso_local global i64 0, align 8
@CE_PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid RAID-Z configuration\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_raidz_generate_parity(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = call i64 @vdev_raidz_math_generate(%struct.TYPE_7__* %3)
  %5 = load i64, i64* @RAIDZ_ORIGINAL_IMPL, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %21 [
    i32 1, label %12
    i32 2, label %15
    i32 3, label %18
  ]

12:                                               ; preds = %8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = call i32 @vdev_raidz_generate_parity_p(%struct.TYPE_7__* %13)
  br label %24

15:                                               ; preds = %8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = call i32 @vdev_raidz_generate_parity_pq(%struct.TYPE_7__* %16)
  br label %24

18:                                               ; preds = %8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = call i32 @vdev_raidz_generate_parity_pqr(%struct.TYPE_7__* %19)
  br label %24

21:                                               ; preds = %8
  %22 = load i32, i32* @CE_PANIC, align 4
  %23 = call i32 @cmn_err(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %7, %21, %18, %15, %12
  ret void
}

declare dso_local i64 @vdev_raidz_math_generate(%struct.TYPE_7__*) #1

declare dso_local i32 @vdev_raidz_generate_parity_p(%struct.TYPE_7__*) #1

declare dso_local i32 @vdev_raidz_generate_parity_pq(%struct.TYPE_7__*) #1

declare dso_local i32 @vdev_raidz_generate_parity_pqr(%struct.TYPE_7__*) #1

declare dso_local i32 @cmn_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
