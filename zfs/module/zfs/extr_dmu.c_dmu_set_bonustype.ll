; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_set_bonustype.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_set_bonustype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_set_bonustype(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @DB_DNODE_ENTER(i32* %11)
  %13 = load i32*, i32** %7, align 8
  %14 = call %struct.TYPE_4__* @DB_DNODE(i32* %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @DMU_OT_IS_VALID(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @SET_ERROR(i32 %19)
  store i32 %20, i32* %9, align 4
  br label %36

21:                                               ; preds = %3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @SET_ERROR(i32 %28)
  store i32 %29, i32* %9, align 4
  br label %35

30:                                               ; preds = %21
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @dnode_setbonus_type(%struct.TYPE_4__* %31, i32 %32, i32* %33)
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %30, %27
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @DB_DNODE_EXIT(i32* %37)
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local i32 @DB_DNODE_ENTER(i32*) #1

declare dso_local %struct.TYPE_4__* @DB_DNODE(i32*) #1

declare dso_local i32 @DMU_OT_IS_VALID(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dnode_setbonus_type(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @DB_DNODE_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
