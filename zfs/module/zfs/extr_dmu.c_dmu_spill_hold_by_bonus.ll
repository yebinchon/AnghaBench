; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_spill_hold_by_bonus.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_spill_hold_by_bonus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DB_RF_CANFAIL = common dso_local global i32 0, align 4
@DMU_READ_NO_DECRYPT = common dso_local global i32 0, align 4
@DB_RF_NO_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_spill_hold_by_bonus(i32* %0, i32 %1, i8* %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32** %3, i32*** %8, align 8
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* @DB_RF_CANFAIL, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DMU_READ_NO_DECRYPT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @DB_RF_NO_DECRYPT, align 4
  %21 = load i32, i32* %12, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %19, %4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @DB_DNODE_ENTER(i32* %24)
  %26 = load i32*, i32** %9, align 8
  %27 = call i32* @DB_DNODE(i32* %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32**, i32*** %8, align 8
  %32 = call i32 @dmu_spill_hold_by_dnode(i32* %28, i32 %29, i8* %30, i32** %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @DB_DNODE_EXIT(i32* %33)
  %35 = load i32, i32* %11, align 4
  ret i32 %35
}

declare dso_local i32 @DB_DNODE_ENTER(i32*) #1

declare dso_local i32* @DB_DNODE(i32*) #1

declare dso_local i32 @dmu_spill_hold_by_dnode(i32*, i32, i8*, i32**) #1

declare dso_local i32 @DB_DNODE_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
