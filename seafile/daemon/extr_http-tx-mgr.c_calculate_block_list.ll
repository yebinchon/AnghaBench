; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_calculate_block_list.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_calculate_block_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i32, %struct.TYPE_21__*, i32, i32, i32, i32, %struct.TYPE_19__* }

@seaf = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Branch local not found for repo %.8s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Branch master not found for repo %.8s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Local head commit not found for repo %.8s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Master head commit not found for repo %.8s.\0A\00", align 1
@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@block_list_diff_files = common dso_local global i32 0, align 4
@block_list_diff_dirs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"Failed to diff local and master head for repo %.8s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__**)* @calculate_block_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_block_list(%struct.TYPE_19__* %0, %struct.TYPE_20__** %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca %struct.TYPE_21__, align 8
  %12 = alloca [2 x i8*], align 16
  %13 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_20__** %1, %struct.TYPE_20__*** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_18__* @seaf_branch_manager_get_branch(i32 %16, i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %6, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = icmp ne %struct.TYPE_18__* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %2
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %5, align 4
  br label %150

28:                                               ; preds = %2
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.TYPE_18__* @seaf_branch_manager_get_branch(i32 %31, i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %7, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = icmp ne %struct.TYPE_18__* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %28
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @seaf_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  store i32 -1, i32* %5, align 4
  br label %150

43:                                               ; preds = %28
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_17__* @seaf_commit_manager_get_commit(i32 %46, i32 %49, i32 %52, i32 %55)
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %8, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = icmp ne %struct.TYPE_17__* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %43
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @seaf_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  store i32 -1, i32* %5, align 4
  br label %150

64:                                               ; preds = %43
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.TYPE_17__* @seaf_commit_manager_get_commit(i32 %67, i32 %70, i32 %73, i32 %76)
  store %struct.TYPE_17__* %77, %struct.TYPE_17__** %9, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %79 = icmp ne %struct.TYPE_17__* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %64
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @seaf_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  store i32 -1, i32* %5, align 4
  br label %150

85:                                               ; preds = %64
  %86 = call i32 @memset(%struct.TYPE_21__* %10, i32 0, i32 48)
  %87 = load i32, i32* @g_str_hash, align 4
  %88 = load i32, i32* @g_str_equal, align 4
  %89 = call i32 @g_hash_table_new_full(i32 %87, i32 %88, i32 (i32)* @g_free, i32* null)
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i32 %89, i32* %90, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 7
  store %struct.TYPE_19__* %91, %struct.TYPE_19__** %92, align 8
  %93 = call i32 @memset(%struct.TYPE_21__* %11, i32 0, i32 48)
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memcpy(i32 %95, i32 %98, i32 36)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 5
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* @block_list_diff_files, align 4
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 4
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @block_list_diff_dirs, align 4
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 3
  store i32 %106, i32* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %108, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  store i8* %111, i8** %112, align 16
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 1
  store i8* %115, i8** %116, align 8
  %117 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %118 = call i64 @diff_trees(i32 2, i8** %117, %struct.TYPE_21__* %11)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %85
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @seaf_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @g_hash_table_destroy(i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  store %struct.TYPE_20__* %129, %struct.TYPE_20__** %13, align 8
  br label %130

130:                                              ; preds = %138, %120
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %132 = icmp ne %struct.TYPE_20__* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @g_free(i32 %136)
  br label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %140, align 8
  store %struct.TYPE_20__* %141, %struct.TYPE_20__** %13, align 8
  br label %130

142:                                              ; preds = %130
  store i32 -1, i32* %5, align 4
  br label %150

143:                                              ; preds = %85
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @g_hash_table_destroy(i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %147, align 8
  %149 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %4, align 8
  store %struct.TYPE_20__* %148, %struct.TYPE_20__** %149, align 8
  br label %150

150:                                              ; preds = %143, %142, %80, %59, %38, %23
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %152 = call i32 @seaf_branch_unref(%struct.TYPE_18__* %151)
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %154 = call i32 @seaf_branch_unref(%struct.TYPE_18__* %153)
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %156 = call i32 @seaf_commit_unref(%struct.TYPE_17__* %155)
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %158 = call i32 @seaf_commit_unref(%struct.TYPE_17__* %157)
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local %struct.TYPE_18__* @seaf_branch_manager_get_branch(i32, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local %struct.TYPE_17__* @seaf_commit_manager_get_commit(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @g_hash_table_new_full(i32, i32, i32 (i32)*, i32*) #1

declare dso_local i32 @g_free(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @diff_trees(i32, i8**, %struct.TYPE_21__*) #1

declare dso_local i32 @g_hash_table_destroy(i32) #1

declare dso_local i32 @seaf_branch_unref(%struct.TYPE_18__*) #1

declare dso_local i32 @seaf_commit_unref(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
