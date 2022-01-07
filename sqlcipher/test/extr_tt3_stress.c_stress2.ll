; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_tt3_stress.c_stress2.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_tt3_stress.c_stress2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Stress2Task = type { void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@stress2_workload1 = common dso_local global i32 0, align 4
@stress2_workload2 = common dso_local global i32 0, align 4
@stress2_workload3 = common dso_local global i32 0, align 4
@stress2_workload4 = common dso_local global i32 0, align 4
@stress2_workload5 = common dso_local global i32 0, align 4
@stress2_workload6 = common dso_local global i32 0, align 4
@stress2_workload7 = common dso_local global i32 0, align 4
@stress2_workload8 = common dso_local global i32 0, align 4
@stress2_workload9 = common dso_local global i32 0, align 4
@stress2_workload10 = common dso_local global i32 0, align 4
@stress2_workload11 = common dso_local global i32 0, align 4
@stress2_workload14 = common dso_local global i32 0, align 4
@stress2_workload17 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"test.db\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"CREATE TABLE IF NOT EXISTS t0(x PRIMARY KEY, y, z);CREATE INDEX IF NOT EXISTS i0 ON t0(y);\00", align 1
@stress2_workload19 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @stress2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stress2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [13 x %struct.Stress2Task], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca %struct.TYPE_19__, align 4
  %8 = alloca %struct.TYPE_18__, align 4
  store i32 %0, i32* %2, align 4
  %9 = getelementptr inbounds [13 x %struct.Stress2Task], [13 x %struct.Stress2Task]* %3, i64 0, i64 0
  %10 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %9, i32 0, i32 0
  %11 = load i32, i32* @stress2_workload1, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*
  store void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %13, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %10, align 8
  %14 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %9, i64 1
  %15 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %14, i32 0, i32 0
  %16 = load i32, i32* @stress2_workload2, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*
  store void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %18, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %15, align 8
  %19 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %14, i64 1
  %20 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %19, i32 0, i32 0
  %21 = load i32, i32* @stress2_workload3, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*
  store void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %23, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %20, align 8
  %24 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %19, i64 1
  %25 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %24, i32 0, i32 0
  %26 = load i32, i32* @stress2_workload4, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*
  store void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %28, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %25, align 8
  %29 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %24, i64 1
  %30 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %29, i32 0, i32 0
  %31 = load i32, i32* @stress2_workload5, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*
  store void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %33, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %30, align 8
  %34 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %29, i64 1
  %35 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %34, i32 0, i32 0
  %36 = load i32, i32* @stress2_workload6, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*
  store void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %38, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %35, align 8
  %39 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %34, i64 1
  %40 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %39, i32 0, i32 0
  %41 = load i32, i32* @stress2_workload7, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*
  store void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %43, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %40, align 8
  %44 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %39, i64 1
  %45 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %44, i32 0, i32 0
  %46 = load i32, i32* @stress2_workload8, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*
  store void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %48, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %45, align 8
  %49 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %44, i64 1
  %50 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %49, i32 0, i32 0
  %51 = load i32, i32* @stress2_workload9, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*
  store void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %53, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %50, align 8
  %54 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %49, i64 1
  %55 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %54, i32 0, i32 0
  %56 = load i32, i32* @stress2_workload10, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*
  store void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %58, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %55, align 8
  %59 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %54, i64 1
  %60 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %59, i32 0, i32 0
  %61 = load i32, i32* @stress2_workload11, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*
  store void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %63, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %60, align 8
  %64 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %59, i64 1
  %65 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %64, i32 0, i32 0
  %66 = load i32, i32* @stress2_workload14, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*
  store void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %68, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %65, align 8
  %69 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %64, i64 1
  %70 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %69, i32 0, i32 0
  %71 = load i32, i32* @stress2_workload17, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*
  store void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %73, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %70, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %74 = bitcast %struct.TYPE_20__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %74, i8 0, i64 4, i1 false)
  %75 = bitcast %struct.TYPE_19__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %75, i8 0, i64 4, i1 false)
  %76 = bitcast %struct.TYPE_18__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %76, i8 0, i64 4, i1 false)
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @opendb(%struct.TYPE_20__* %6, %struct.TYPE_19__* %7, i8* %77, i32 1)
  %79 = call i32 @sql_script(%struct.TYPE_20__* %6, %struct.TYPE_19__* %7, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0))
  %80 = call i32 @closedb(%struct.TYPE_20__* %6, %struct.TYPE_19__* %7)
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @setstoptime(%struct.TYPE_20__* %6, i32 %81)
  %83 = call i32 @sqlite3_enable_shared_cache(i32 1)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %96, %1
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp ult i64 %86, 13
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [13 x %struct.Stress2Task], [13 x %struct.Stress2Task]* %3, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.Stress2Task, %struct.Stress2Task* %92, i32 0, i32 0
  %94 = load void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %93, align 8
  %95 = call i32 @stress2_launch_thread_loop(%struct.TYPE_20__* %6, %struct.TYPE_18__* %8, i8* %89, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* %94)
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %84

99:                                               ; preds = %84
  %100 = load i32, i32* @stress2_workload19, align 4
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @launch_thread(%struct.TYPE_20__* %6, %struct.TYPE_18__* %8, i32 %100, i8* %101)
  %103 = load i32, i32* @stress2_workload19, align 4
  %104 = load i8*, i8** %4, align 8
  %105 = call i32 @launch_thread(%struct.TYPE_20__* %6, %struct.TYPE_18__* %8, i32 %103, i8* %104)
  %106 = call i32 @join_all_threads(%struct.TYPE_20__* %6, %struct.TYPE_18__* %8)
  %107 = call i32 @sqlite3_enable_shared_cache(i32 0)
  %108 = call i32 @print_and_free_err(%struct.TYPE_20__* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @opendb(%struct.TYPE_20__*, %struct.TYPE_19__*, i8*, i32) #2

declare dso_local i32 @sql_script(%struct.TYPE_20__*, %struct.TYPE_19__*, i8*) #2

declare dso_local i32 @closedb(%struct.TYPE_20__*, %struct.TYPE_19__*) #2

declare dso_local i32 @setstoptime(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @sqlite3_enable_shared_cache(i32) #2

declare dso_local i32 @stress2_launch_thread_loop(%struct.TYPE_20__*, %struct.TYPE_18__*, i8*, void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)*) #2

declare dso_local i32 @launch_thread(%struct.TYPE_20__*, %struct.TYPE_18__*, i32, i8*) #2

declare dso_local i32 @join_all_threads(%struct.TYPE_20__*, %struct.TYPE_18__*) #2

declare dso_local i32 @print_and_free_err(%struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
