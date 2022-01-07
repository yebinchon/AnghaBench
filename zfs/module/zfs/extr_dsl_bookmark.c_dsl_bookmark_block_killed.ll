; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_bookmark.c_dsl_bookmark_block_killed.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_bookmark.c_dsl_bookmark_block_killed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i64 }

@ZBM_FLAG_HAS_FBN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_bookmark_block_killed(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = call %struct.TYPE_18__* @avl_last(i32* %9)
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %7, align 8
  br label %11

11:                                               ; preds = %83, %3
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %13 = icmp ne %struct.TYPE_18__* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = call %struct.TYPE_20__* @dsl_dataset_phys(%struct.TYPE_17__* %19)
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %18, %22
  br label %24

24:                                               ; preds = %14, %11
  %25 = phi i1 [ false, %11 ], [ %23, %14 ]
  br i1 %25, label %26, label %88

26:                                               ; preds = %24
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %29, %33
  br i1 %34, label %35, label %82

35:                                               ; preds = %26
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ZBM_FLAG_HAS_FBN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %35
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = call i32 @mutex_enter(i32* %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = call i32 @dsl_dataset_get_spa(%struct.TYPE_17__* %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = call i64 @bp_get_dsize_sync(i32 %48, %struct.TYPE_19__* %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %50
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %59 = call i64 @BP_GET_PSIZE(%struct.TYPE_19__* %58)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %59
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %68 = call i64 @BP_GET_UCSIZE(%struct.TYPE_19__* %67)
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %68
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  %76 = load i32, i32* @B_TRUE, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = call i32 @mutex_exit(i32* %80)
  br label %82

82:                                               ; preds = %43, %35, %26
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = call %struct.TYPE_18__* @AVL_PREV(i32* %85, %struct.TYPE_18__* %86)
  store %struct.TYPE_18__* %87, %struct.TYPE_18__** %7, align 8
  br label %11

88:                                               ; preds = %24
  ret void
}

declare dso_local %struct.TYPE_18__* @avl_last(i32*) #1

declare dso_local %struct.TYPE_20__* @dsl_dataset_phys(%struct.TYPE_17__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @bp_get_dsize_sync(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @dsl_dataset_get_spa(%struct.TYPE_17__*) #1

declare dso_local i64 @BP_GET_PSIZE(%struct.TYPE_19__*) #1

declare dso_local i64 @BP_GET_UCSIZE(%struct.TYPE_19__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local %struct.TYPE_18__* @AVL_PREV(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
