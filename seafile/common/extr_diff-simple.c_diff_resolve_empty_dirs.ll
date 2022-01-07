; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_resolve_empty_dirs.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_resolve_empty_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64 }

@DIFF_STATUS_DIR_ADDED = common dso_local global i64 0, align 8
@DIFF_STATUS_DIR_DELETED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_resolve_empty_dirs(%struct.TYPE_13__** %0) #0 {
  %2 = alloca %struct.TYPE_13__**, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %2, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %2, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %4, align 8
  br label %12

12:                                               ; preds = %35, %1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %7, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DIFF_STATUS_DIR_ADDED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %15
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DIFF_STATUS_DIR_DELETED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24, %15
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = call %struct.TYPE_13__* @g_list_prepend(%struct.TYPE_13__* %31, %struct.TYPE_13__* %32)
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %3, align 8
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %4, align 8
  br label %12

39:                                               ; preds = %12
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %5, align 8
  br label %41

41:                                               ; preds = %78, %39
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = icmp ne %struct.TYPE_13__* %42, null
  br i1 %43, label %44, label %82

44:                                               ; preds = %41
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = bitcast %struct.TYPE_14__* %47 to %struct.TYPE_13__*
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  store %struct.TYPE_14__* %50, %struct.TYPE_14__** %8, align 8
  %51 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %2, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %6, align 8
  br label %53

53:                                               ; preds = %73, %44
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = icmp ne %struct.TYPE_13__* %54, null
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %9, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = call i64 @is_redundant_empty_dir(%struct.TYPE_14__* %60, %struct.TYPE_14__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %2, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = call %struct.TYPE_13__* @g_list_delete_link(%struct.TYPE_13__* %66, %struct.TYPE_14__* %69)
  %71 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %2, align 8
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %71, align 8
  br label %77

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %6, align 8
  br label %53

77:                                               ; preds = %64, %53
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  store %struct.TYPE_13__* %81, %struct.TYPE_13__** %5, align 8
  br label %41

82:                                               ; preds = %41
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = call i32 @g_list_free(%struct.TYPE_13__* %83)
  ret void
}

declare dso_local %struct.TYPE_13__* @g_list_prepend(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i64 @is_redundant_empty_dir(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @g_list_delete_link(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
