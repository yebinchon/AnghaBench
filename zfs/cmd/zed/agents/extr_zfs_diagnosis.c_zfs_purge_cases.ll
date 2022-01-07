; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c_zfs_purge_cases.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c_zfs_purge_cases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@zfs_cases = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@zfs_mark_pool = common dso_local global i32 0, align 4
@UU_WALK_ROBUST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @zfs_purge_cases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_purge_cases(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @fmd_hdl_getspecific(i32* %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32, i32* @zfs_cases, align 4
  %9 = call %struct.TYPE_6__* @uu_list_first(i32 %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %3, align 8
  br label %10

10:                                               ; preds = %17, %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i32, i32* @B_FALSE, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @zfs_cases, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = call %struct.TYPE_6__* @uu_list_next(i32 %18, %struct.TYPE_6__* %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %3, align 8
  br label %10

21:                                               ; preds = %10
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @zfs_mark_pool, align 4
  %24 = call i64 @zpool_iter(i32* %22, i32 %23, i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %50

27:                                               ; preds = %21
  %28 = load i32, i32* @zfs_cases, align 4
  %29 = load i32, i32* @UU_WALK_ROBUST, align 4
  %30 = call i32* @uu_list_walk_start(i32 %28, i32 %29)
  store i32* %30, i32** %4, align 8
  br label %31

31:                                               ; preds = %46, %27
  %32 = load i32*, i32** %4, align 8
  %33 = call %struct.TYPE_6__* @uu_list_walk_next(i32* %32)
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %3, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %2, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @fmd_case_close(i32* %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %35
  br label %31

47:                                               ; preds = %31
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @uu_list_walk_end(i32* %48)
  br label %50

50:                                               ; preds = %47, %26
  ret void
}

declare dso_local i32* @fmd_hdl_getspecific(i32*) #1

declare dso_local %struct.TYPE_6__* @uu_list_first(i32) #1

declare dso_local %struct.TYPE_6__* @uu_list_next(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @zpool_iter(i32*, i32, i32*) #1

declare dso_local i32* @uu_list_walk_start(i32, i32) #1

declare dso_local %struct.TYPE_6__* @uu_list_walk_next(i32*) #1

declare dso_local i32 @fmd_case_close(i32*, i32) #1

declare dso_local i32 @uu_list_walk_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
