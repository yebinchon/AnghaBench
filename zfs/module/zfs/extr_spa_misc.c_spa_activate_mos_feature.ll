; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_activate_mos_feature.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa_misc.c_spa_activate_mos_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@TXG_INITIAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_activate_mos_feature(%struct.TYPE_5__* %0, i8* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @nvlist_exists(i32 %9, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @fnvlist_add_boolean(i32 %16, i8* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TXG_INITIAL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @vdev_config_dirty(i32 %27)
  br label %29

29:                                               ; preds = %24, %13
  br label %30

30:                                               ; preds = %29, %3
  ret void
}

declare dso_local i32 @nvlist_exists(i32, i8*) #1

declare dso_local i32 @fnvlist_add_boolean(i32, i8*) #1

declare dso_local i32 @vdev_config_dirty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
