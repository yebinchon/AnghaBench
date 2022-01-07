; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_userobjspace_upgradable.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_userobjspace_upgradable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMU_OST_ZFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_objset_userobjspace_upgradable(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i64 @dmu_objset_type(i32* %3)
  %5 = load i64, i64* @DMU_OST_ZFS, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @dmu_objset_is_snapshot(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @dmu_objset_userobjused_enabled(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @dmu_objset_userobjspace_present(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @dmu_objset_spa(i32* %20)
  %22 = call i64 @spa_writeable(i32 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %15, %11, %7, %1
  %25 = phi i1 [ false, %15 ], [ false, %11 ], [ false, %7 ], [ false, %1 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local i64 @dmu_objset_type(i32*) #1

declare dso_local i32 @dmu_objset_is_snapshot(i32*) #1

declare dso_local i64 @dmu_objset_userobjused_enabled(i32*) #1

declare dso_local i32 @dmu_objset_userobjspace_present(i32*) #1

declare dso_local i64 @spa_writeable(i32) #1

declare dso_local i32 @dmu_objset_spa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
