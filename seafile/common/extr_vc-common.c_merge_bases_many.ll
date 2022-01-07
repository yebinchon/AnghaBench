; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_vc-common.c_merge_bases_many.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_vc-common.c_merge_bases_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, i32* }

@.str = private unnamed_addr constant [29 x i8] c"Failed to load commit hash.\0A\00", align 1
@seaf = common dso_local global %struct.TYPE_22__* null, align 8
@get_merge_bases = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_19__*, i32, %struct.TYPE_19__**)* @merge_bases_many to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @merge_bases_many(%struct.TYPE_19__* %0, i32 %1, %struct.TYPE_19__** %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_19__** %2, %struct.TYPE_19__*** %7, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %9, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %31, %3
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %20, i64 %22
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = icmp eq %struct.TYPE_19__* %19, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = call %struct.TYPE_21__* @g_list_append(%struct.TYPE_21__* %27, %struct.TYPE_19__* %28)
  store %struct.TYPE_21__* %29, %struct.TYPE_21__** %4, align 8
  br label %120

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = call i32* @commit_tree_to_hash(%struct.TYPE_19__* %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = call i32 @g_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %4, align 8
  br label %120

41:                                               ; preds = %34
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  store i32* %42, i32** %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %44, align 8
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %81, %41
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %84

49:                                               ; preds = %45
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** @seaf, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %53, i64 %55
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %60, i64 %62
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %67, i64 %69
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @get_merge_bases, align 4
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @seaf_commit_manager_traverse_commit_tree(i32 %52, i32 %59, i32 %66, i32 %73, i32 %74, %struct.TYPE_20__* %12, i32 %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %49
  br label %102

80:                                               ; preds = %49
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %45

84:                                               ; preds = %45
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @g_hash_table_destroy(i32* %85)
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  store %struct.TYPE_21__* %88, %struct.TYPE_21__** %9, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %90 = icmp ne %struct.TYPE_21__* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91, %84
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %97, %struct.TYPE_21__** %4, align 8
  br label %120

98:                                               ; preds = %91
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %100 = call %struct.TYPE_21__* @get_independent_commits(%struct.TYPE_21__* %99)
  store %struct.TYPE_21__* %100, %struct.TYPE_21__** %9, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %101, %struct.TYPE_21__** %4, align 8
  br label %120

102:                                              ; preds = %79
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %9, align 8
  br label %105

105:                                              ; preds = %108, %102
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %107 = icmp ne %struct.TYPE_21__* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  store %struct.TYPE_19__* %111, %struct.TYPE_19__** %10, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %113 = call i32 @seaf_commit_unref(%struct.TYPE_19__* %112)
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %116 = call %struct.TYPE_21__* @g_list_delete_link(%struct.TYPE_21__* %114, %struct.TYPE_21__* %115)
  store %struct.TYPE_21__* %116, %struct.TYPE_21__** %9, align 8
  br label %105

117:                                              ; preds = %105
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 @g_hash_table_destroy(i32* %118)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %4, align 8
  br label %120

120:                                              ; preds = %117, %98, %96, %39, %26
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  ret %struct.TYPE_21__* %121
}

declare dso_local %struct.TYPE_21__* @g_list_append(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32* @commit_tree_to_hash(%struct.TYPE_19__*) #1

declare dso_local i32 @g_warning(i8*) #1

declare dso_local i32 @seaf_commit_manager_traverse_commit_tree(i32, i32, i32, i32, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @g_hash_table_destroy(i32*) #1

declare dso_local %struct.TYPE_21__* @get_independent_commits(%struct.TYPE_21__*) #1

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_21__* @g_list_delete_link(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
