; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestFunc = type { i8*, i32, i32 (i32, i8**)* }
%struct.TestFunc.0 = type { i8*, i32, i32 (i32, i8**)* }

@.str = private unnamed_addr constant [7 x i8] c"random\00", align 1
@do_random_tests = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"writespeed\00", align 1
@do_writer_test = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@st_do_io = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@do_insert = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"replay\00", align 1
@do_replay = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@do_speed_tests = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"speed2\00", align 1
@do_speed_test2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@st_do_show = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"work\00", align 1
@st_do_work = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@do_test = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"malloc.txt NOT generated\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Usage: %s sub-command ?args...?\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"sub-command\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Leaked %d bytes in %d allocations (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [11 x %struct.TestFunc], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = getelementptr inbounds [11 x %struct.TestFunc], [11 x %struct.TestFunc]* %6, i64 0, i64 0
  %13 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %12, i32 0, i32 1
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %12, i32 0, i32 2
  %16 = load i32, i32* @do_random_tests, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i32 (i32, i8**)*
  store i32 (i32, i8**)* %18, i32 (i32, i8**)** %15, align 8
  %19 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %12, i64 1
  %20 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %19, i32 0, i32 1
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %19, i32 0, i32 2
  %23 = load i32, i32* @do_writer_test, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32 (i32, i8**)*
  store i32 (i32, i8**)* %25, i32 (i32, i8**)** %22, align 8
  %26 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %19, i64 1
  %27 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %26, i32 0, i32 1
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %26, i32 0, i32 2
  %30 = load i32, i32* @st_do_io, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32 (i32, i8**)*
  store i32 (i32, i8**)* %32, i32 (i32, i8**)** %29, align 8
  %33 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %26, i64 1
  %34 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %33, i32 0, i32 1
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %33, i32 0, i32 2
  %37 = load i32, i32* @do_insert, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32 (i32, i8**)*
  store i32 (i32, i8**)* %39, i32 (i32, i8**)** %36, align 8
  %40 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %33, i64 1
  %41 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %41, align 8
  %42 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %40, i32 0, i32 1
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %40, i32 0, i32 2
  %44 = load i32, i32* @do_replay, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32 (i32, i8**)*
  store i32 (i32, i8**)* %46, i32 (i32, i8**)** %43, align 8
  %47 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %40, i64 1
  %48 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %48, align 8
  %49 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %47, i32 0, i32 1
  store i32 1, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %47, i32 0, i32 2
  %51 = load i32, i32* @do_speed_tests, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i32 (i32, i8**)*
  store i32 (i32, i8**)* %53, i32 (i32, i8**)** %50, align 8
  %54 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %47, i64 1
  %55 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %55, align 8
  %56 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %54, i32 0, i32 1
  store i32 1, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %54, i32 0, i32 2
  %58 = load i32, i32* @do_speed_test2, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32 (i32, i8**)*
  store i32 (i32, i8**)* %60, i32 (i32, i8**)** %57, align 8
  %61 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %54, i64 1
  %62 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %61, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %62, align 8
  %63 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %61, i32 0, i32 1
  store i32 0, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %61, i32 0, i32 2
  %65 = load i32, i32* @st_do_show, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i32 (i32, i8**)*
  store i32 (i32, i8**)* %67, i32 (i32, i8**)** %64, align 8
  %68 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %61, i64 1
  %69 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %69, align 8
  %70 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %68, i32 0, i32 1
  store i32 1, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %68, i32 0, i32 2
  %72 = load i32, i32* @st_do_work, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i32 (i32, i8**)*
  store i32 (i32, i8**)* %74, i32 (i32, i8**)** %71, align 8
  %75 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %68, i64 1
  %76 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %76, align 8
  %77 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %75, i32 0, i32 1
  store i32 1, i32* %77, align 8
  %78 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %75, i32 0, i32 2
  %79 = load i32, i32* @do_test, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i32 (i32, i8**)*
  store i32 (i32, i8**)* %81, i32 (i32, i8**)** %78, align 8
  %82 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %75, i64 1
  %83 = bitcast %struct.TestFunc* %82 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %83, i8 0, i64 24, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8** %11, align 8
  %84 = call i32 (...) @tdb_lsm_env()
  %85 = call i32 @testMallocInstall(i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 2
  br i1 %87, label %88, label %93

88:                                               ; preds = %2
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i8*, ...) @testPrintError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %91)
  store i32 -1, i32* %3, align 4
  br label %144

93:                                               ; preds = %2
  %94 = load i32, i32* %4, align 4
  %95 = load i8**, i8*** %5, align 8
  %96 = call i32 @testErrorInit(i32 %94, i8** %95)
  %97 = call i32 (...) @testPrngInit()
  %98 = getelementptr inbounds [11 x %struct.TestFunc], [11 x %struct.TestFunc]* %6, i64 0, i64 0
  %99 = bitcast %struct.TestFunc* %98 to %struct.TestFunc.0*
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @testArgSelect(%struct.TestFunc.0* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %102, i32* %8)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %93
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [11 x %struct.TestFunc], [11 x %struct.TestFunc]* %6, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %109, i32 0, i32 2
  %111 = load i32 (i32, i8**)*, i32 (i32, i8**)** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sub nsw i32 %112, 2
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 2
  %116 = call i32 %111(i32 %113, i8** %115)
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %106, %93
  %118 = call i32 (...) @tdb_lsm_env()
  %119 = call i32 @testMallocCheck(i32 %118, i32* %9, i32* %10, i32* null)
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 (i8*, ...) @testPrintError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %123, i32 %124, i8* %125)
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i32 -1, i32* %7, align 4
  br label %130

130:                                              ; preds = %129, %122
  br label %131

131:                                              ; preds = %130, %117
  %132 = call i32 (...) @tdb_lsm_env()
  %133 = call i32 @testMallocUninstall(i32 %132)
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [11 x %struct.TestFunc], [11 x %struct.TestFunc]* %6, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.TestFunc, %struct.TestFunc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = call i32 (...) @lsmtest_rusage_report()
  br label %142

142:                                              ; preds = %140, %131
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %88
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @testMallocInstall(i32) #2

declare dso_local i32 @tdb_lsm_env(...) #2

declare dso_local i32 @testPrintError(i8*, ...) #2

declare dso_local i32 @testErrorInit(i32, i8**) #2

declare dso_local i32 @testPrngInit(...) #2

declare dso_local i32 @testArgSelect(%struct.TestFunc.0*, i8*, i8*, i32*) #2

declare dso_local i32 @testMallocCheck(i32, i32*, i32*, i32*) #2

declare dso_local i32 @testMallocUninstall(i32) #2

declare dso_local i32 @lsmtest_rusage_report(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
