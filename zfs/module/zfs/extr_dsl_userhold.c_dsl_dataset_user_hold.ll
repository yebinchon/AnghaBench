; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_user_hold.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_user_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32* }

@KM_SLEEP = common dso_local global i32 0, align 4
@dsl_dataset_user_hold_check = common dso_local global i32 0, align 4
@dsl_dataset_user_hold_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_user_hold(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @nvlist_next_nvpair(i32* %11, i32* null)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32* %17, i32** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %20 = load i32, i32* @KM_SLEEP, align 4
  %21 = call i64 @nvlist_alloc(i32* %19, i32 0, i32 %20)
  %22 = icmp eq i64 0, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @VERIFY(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32* %25, i32** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @nvpair_name(i32* %29)
  %31 = load i32, i32* @dsl_dataset_user_hold_check, align 4
  %32 = load i32, i32* @dsl_dataset_user_hold_sync, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @fnvlist_num_pairs(i32* %33)
  %35 = load i32, i32* @ZFS_SPACE_CHECK_RESERVED, align 4
  %36 = call i32 @dsl_sync_task(i32 %30, i32 %31, i32 %32, %struct.TYPE_3__* %8, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @fnvlist_free(i32 %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %16, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32*, i32, i32) #1

declare dso_local i32 @dsl_sync_task(i32, i32, i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @fnvlist_num_pairs(i32*) #1

declare dso_local i32 @fnvlist_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
