; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_do_insert.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_do_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"lsm\00", align 1
@TEST_DATASOURCE_RANDOM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Usage: insert ?DATABASE?\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"testdb.lsm\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Error opening db \22%s\22: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"writelog.txt\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@do_insert_work_hook = common dso_local global i32 0, align 4
@do_insert_write_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_insert(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 1000000, i32* %10, align 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %19 = load i32, i32* @TEST_DATASOURCE_RANDOM, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 8, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  store i32 15, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 3
  store i32 80, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  store i32 150, i32* %23, align 4
  store i32* null, i32** %12, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 (i8*, ...) @testPrintError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %125

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %31, %28
  %36 = call i32 (...) @tdb_lsm_env()
  %37 = call i32 @testMallocUninstall(i32 %36)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %57, %35
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 61
  br label %54

54:                                               ; preds = %46, %38
  %55 = phi i1 [ false, %38 ], [ %53, %46 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %38

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @tdb_lsm_open(i8* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 1, i32** %7)
  store i32 %69, i32* %9, align 4
  br label %73

70:                                               ; preds = %60
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @tdb_open(i8* %71, i32 0, i32 1, i32** %7)
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 (i8*, ...) @testPrintError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %77, i32 %78)
  br label %121

80:                                               ; preds = %73
  %81 = call i32 @memset(%struct.TYPE_6__* %13, i32 0, i32 4)
  %82 = call i32 @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = call i32* @testDatasourceNew(%struct.TYPE_7__* %11)
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* @do_insert_work_hook, align 4
  %87 = call i32 @tdb_lsm_config_work_hook(i32* %85, i32 %86, i32 0)
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* @do_insert_write_hook, align 4
  %90 = bitcast %struct.TYPE_6__* %13 to i8*
  %91 = call i32 @tdb_lsm_write_hook(i32* %88, i32 %89, i8* %90)
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %108, %94
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 1000000
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @testDatasourceEntry(i32* %99, i32 %100, i8** %14, i32* %15, i8** %16, i32* %17)
  %102 = load i32*, i32** %7, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load i8*, i8** %16, align 8
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @tdb_write(i32* %102, i8* %103, i32 %104, i8* %105, i32 %106)
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %95

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111, %80
  %113 = load i32*, i32** %12, align 8
  %114 = call i32 @testDatasourceFree(i32* %113)
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @tdb_close(i32* %115)
  %117 = call i32 @flushHook(%struct.TYPE_6__* %13)
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @fclose(i32 %119)
  br label %121

121:                                              ; preds = %112, %76
  %122 = call i32 (...) @tdb_lsm_env()
  %123 = call i32 @testMallocInstall(i32 %122)
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %26
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @testPrintError(i8*, ...) #1

declare dso_local i32 @testMallocUninstall(i32) #1

declare dso_local i32 @tdb_lsm_env(...) #1

declare dso_local i32 @tdb_lsm_open(i8*, i8*, i32, i32**) #1

declare dso_local i32 @tdb_open(i8*, i32, i32, i32**) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32* @testDatasourceNew(%struct.TYPE_7__*) #1

declare dso_local i32 @tdb_lsm_config_work_hook(i32*, i32, i32) #1

declare dso_local i32 @tdb_lsm_write_hook(i32*, i32, i8*) #1

declare dso_local i32 @testDatasourceEntry(i32*, i32, i8**, i32*, i8**, i32*) #1

declare dso_local i32 @tdb_write(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @testDatasourceFree(i32*) #1

declare dso_local i32 @tdb_close(i32*) #1

declare dso_local i32 @flushHook(%struct.TYPE_6__*) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @testMallocInstall(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
