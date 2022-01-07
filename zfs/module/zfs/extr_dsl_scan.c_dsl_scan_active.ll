; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_active.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@SPA_LOAD_NONE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@SPA_VERSION_DEADLISTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_scan_active(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %4, align 8
  store i64 0, i64* %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SPA_LOAD_NONE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @B_FALSE, align 4
  store i32 %20, i32* %2, align 4
  br label %73

21:                                               ; preds = %1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = call i64 @spa_shutting_down(%struct.TYPE_11__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @B_FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %73

27:                                               ; preds = %21
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = call i64 @dsl_scan_is_running(%struct.TYPE_12__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = call i32 @dsl_scan_is_paused_scrub(%struct.TYPE_12__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31, %27
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40, %31
  %46 = load i32, i32* @B_TRUE, align 4
  store i32 %46, i32* %2, align 4
  br label %73

47:                                               ; preds = %40, %35
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = call i64 @spa_version(%struct.TYPE_11__* %52)
  %54 = load i64, i64* @SPA_VERSION_DEADLISTS, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = call i32 @bpobj_space(i32* %60, i64* %5, i64* %6, i64* %7)
  br label %62

62:                                               ; preds = %56, %47
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = call i32 @spa_livelist_delete_check(%struct.TYPE_11__* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i64, i64* %5, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi i1 [ true, %62 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %70, %45, %25, %19
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @spa_shutting_down(%struct.TYPE_11__*) #1

declare dso_local i64 @dsl_scan_is_running(%struct.TYPE_12__*) #1

declare dso_local i32 @dsl_scan_is_paused_scrub(%struct.TYPE_12__*) #1

declare dso_local i64 @spa_version(%struct.TYPE_11__*) #1

declare dso_local i32 @bpobj_space(i32*, i64*, i64*, i64*) #1

declare dso_local i32 @spa_livelist_delete_check(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
