; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_verify_dd_livelist.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_verify_dd_livelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Discrepancy in space accounting:\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"dir: used %s, comp %s, uncomp %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"livelist: used %s, comp %s, uncomp %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @verify_dd_livelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_dd_livelist(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [32 x i8], align 16
  %14 = alloca [32 x i8], align 16
  %15 = alloca [32 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32* @spa_get_dsl(i32 %18)
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %11, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = call i32 @dmu_objset_is_snapshot(%struct.TYPE_8__* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = call i32 @dsl_deadlist_is_open(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %106

36:                                               ; preds = %1
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* @FTAG, align 4
  %39 = call i32 @dsl_pool_config_enter(i32* %37, i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = call i32 @dsl_deadlist_space(i32* %41, i64* %4, i64* %6, i64* %8)
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @dsl_pool_config_held(i32* %43)
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = call %struct.TYPE_10__* @dsl_dir_phys(%struct.TYPE_9__* %47)
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FTAG, align 4
  %52 = call i32 @dsl_dataset_hold_obj(i32* %46, i32 %50, i32 %51, i32** %12)
  %53 = call i32 @VERIFY0(i32 %52)
  %54 = load i32*, i32** %12, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = call i32 @dsl_dataset_space_written(i32* %54, %struct.TYPE_11__* %57, i64* %5, i64* %7, i64* %9)
  %59 = call i32 @VERIFY0(i32 %58)
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* @FTAG, align 4
  %62 = call i32 @dsl_dataset_rele(i32* %60, i32 %61)
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* @FTAG, align 4
  %65 = call i32 @dsl_pool_config_exit(i32* %63, i32 %64)
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %4, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %36
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %73, %69, %36
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %81 = call i32 @zdb_nicenum(i64 %79, i8* %80, i32 32)
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %84 = call i32 @zdb_nicenum(i64 %82, i8* %83, i32 32)
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %87 = call i32 @zdb_nicenum(i64 %85, i8* %86, i32 32)
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %89 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %88, i8* %89, i8* %90)
  %92 = load i64, i64* %4, align 8
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %94 = call i32 @zdb_nicenum(i64 %92, i8* %93, i32 32)
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %97 = call i32 @zdb_nicenum(i64 %95, i8* %96, i32 32)
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %100 = call i32 @zdb_nicenum(i64 %98, i8* %99, i32 32)
  %101 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %103 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %101, i8* %102, i8* %103)
  store i32 1, i32* %2, align 4
  br label %106

105:                                              ; preds = %73
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %77, %35
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32* @spa_get_dsl(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_objset_is_snapshot(%struct.TYPE_8__*) #1

declare dso_local i32 @dsl_deadlist_is_open(i32*) #1

declare dso_local i32 @dsl_pool_config_enter(i32*, i32) #1

declare dso_local i32 @dsl_deadlist_space(i32*, i64*, i64*, i64*) #1

declare dso_local i32 @dsl_pool_config_held(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(i32*, i32, i32, i32**) #1

declare dso_local %struct.TYPE_10__* @dsl_dir_phys(%struct.TYPE_9__*) #1

declare dso_local i32 @dsl_dataset_space_written(i32*, %struct.TYPE_11__*, i64*, i64*, i64*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @dsl_pool_config_exit(i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @zdb_nicenum(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
