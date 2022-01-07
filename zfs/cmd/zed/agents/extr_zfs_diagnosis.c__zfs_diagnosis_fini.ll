; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c__zfs_diagnosis_fini.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_zfs_diagnosis.c__zfs_diagnosis_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@zfs_cases = common dso_local global i32 0, align 4
@UU_WALK_ROBUST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"removing case ena %llu\00", align 1
@zfs_case_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_zfs_diagnosis_fini(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @zfs_cases, align 4
  %7 = load i32, i32* @UU_WALK_ROBUST, align 4
  %8 = call i32* @uu_list_walk_start(i32 %6, i32 %7)
  store i32* %8, i32** %4, align 8
  br label %9

9:                                                ; preds = %13, %1
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_8__* @uu_list_walk_next(i32* %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %3, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load i32*, i32** %2, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @fmd_hdl_debug(i32* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @zfs_cases, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = call i32 @uu_list_remove(i32 %20, %struct.TYPE_8__* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* @zfs_case_pool, align 4
  %27 = call i32 @uu_list_node_fini(%struct.TYPE_8__* %23, i32* %25, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = call i32 @fmd_hdl_free(i32* %28, %struct.TYPE_8__* %29, i32 16)
  br label %9

31:                                               ; preds = %9
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @uu_list_walk_end(i32* %32)
  %34 = load i32, i32* @zfs_cases, align 4
  %35 = call i32 @uu_list_destroy(i32 %34)
  %36 = load i32, i32* @zfs_case_pool, align 4
  %37 = call i32 @uu_list_pool_destroy(i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32* @fmd_hdl_getspecific(i32* %38)
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @libzfs_fini(i32* %40)
  ret void
}

declare dso_local i32* @uu_list_walk_start(i32, i32) #1

declare dso_local %struct.TYPE_8__* @uu_list_walk_next(i32*) #1

declare dso_local i32 @fmd_hdl_debug(i32*, i8*, i64) #1

declare dso_local i32 @uu_list_remove(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @uu_list_node_fini(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @fmd_hdl_free(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @uu_list_walk_end(i32*) #1

declare dso_local i32 @uu_list_destroy(i32) #1

declare dso_local i32 @uu_list_pool_destroy(i32) #1

declare dso_local i32* @fmd_hdl_getspecific(i32*) #1

declare dso_local i32 @libzfs_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
