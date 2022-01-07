; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_ossfuzz.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_ossfuzz.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"fuzz.db\00", align 1
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_OPEN_MEMORY = common dso_local global i32 0, align 4
@progress_handler = common dso_local global i32 0, align 4
@SQLITE_LIMIT_VDBE_OP = common dso_local global i32 0, align 4
@SQLITE_LIMIT_LENGTH = common dso_local global i32 0, align 4
@SQLITE_DBCONFIG_ENABLE_FKEY = common dso_local global i32 0, align 4
@block_debug_pragmas = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@exec_handler = common dso_local global i32 0, align 4
@mDebug = common dso_local global i32 0, align 4
@FUZZ_SHOW_ERRORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"PRAGMA temp_store_directory=''\00", align 1
@FUZZ_SHOW_MAX_DELAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Progress callback count....... %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Max time between callbacks.... %d ms\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %11 = call i32 @memset(%struct.TYPE_3__* %10, i32 0, i32 40)
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %132

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %7, align 1
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8* %26, i8** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %27, 2
  store i64 %28, i64* %5, align 8
  br label %30

29:                                               ; preds = %15
  store i8 -3, i8* %7, align 1
  br label %30

30:                                               ; preds = %29, %21
  %31 = call i64 (...) @sqlite3_initialize()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %132

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %36 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %37 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SQLITE_OPEN_MEMORY, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @sqlite3_open_v2(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %35, i32 %40, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %132

45:                                               ; preds = %34
  %46 = call i64 (...) @timeOfDay()
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 10000
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 5
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @progress_handler, align 4
  %55 = bitcast %struct.TYPE_3__* %10 to i8*
  %56 = call i32 @sqlite3_progress_handler(i32 %53, i32 10, i32 %54, i8* %55)
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SQLITE_LIMIT_VDBE_OP, align 4
  %60 = call i32 @sqlite3_limit(i32 %58, i32 %59, i32 25000)
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SQLITE_LIMIT_LENGTH, align 4
  %64 = call i32 @sqlite3_limit(i32 %62, i32 %63, i32 50000)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SQLITE_DBCONFIG_ENABLE_FKEY, align 4
  %68 = load i8, i8* %7, align 1
  %69 = sext i8 %68 to i32
  %70 = and i32 %69, 1
  %71 = trunc i32 %70 to i8
  %72 = call i32 @sqlite3_db_config(i32 %66, i32 %67, i8 signext %71, i32* %8)
  %73 = load i8, i8* %7, align 1
  %74 = sext i8 %73 to i32
  %75 = ashr i32 %74, 1
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %7, align 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @block_debug_pragmas, align 4
  %80 = call i32 @sqlite3_set_authorizer(i32 %78, i32 %79, i32 0)
  %81 = load i8, i8* %7, align 1
  %82 = sext i8 %81 to i32
  %83 = add nsw i32 %82, 1
  %84 = trunc i32 %83 to i8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i8 %84, i8* %85, align 8
  %86 = load i64, i64* %5, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i8*, i8** %4, align 8
  %89 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %87, i8* %88)
  store i8* %89, i8** %9, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @sqlite3_complete(i8* %90)
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* @exec_handler, align 4
  %96 = bitcast %struct.TYPE_3__* %10 to i8*
  %97 = call i32 @sqlite3_exec(i32 %93, i8* %94, i32 %95, i8* %96, i8** %6)
  %98 = load i32, i32* @mDebug, align 4
  %99 = load i32, i32* @FUZZ_SHOW_ERRORS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %45
  %103 = load i8*, i8** %6, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %105, %102, %45
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @sqlite3_free(i8* %109)
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @sqlite3_free(i8* %111)
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @sqlite3_exec(i32 %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* null, i8** null)
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @sqlite3_close(i32 %117)
  %119 = load i32, i32* @mDebug, align 4
  %120 = load i32, i32* @FUZZ_SHOW_MAX_DELAY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %108
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %123, %108
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %44, %33, %14
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @sqlite3_initialize(...) #1

declare dso_local i32 @sqlite3_open_v2(i8*, i32*, i32, i32) #1

declare dso_local i64 @timeOfDay(...) #1

declare dso_local i32 @sqlite3_progress_handler(i32, i32, i32, i8*) #1

declare dso_local i32 @sqlite3_limit(i32, i32, i32) #1

declare dso_local i32 @sqlite3_db_config(i32, i32, i8 signext, i32*) #1

declare dso_local i32 @sqlite3_set_authorizer(i32, i32, i32) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32, i8*) #1

declare dso_local i32 @sqlite3_complete(i8*) #1

declare dso_local i32 @sqlite3_exec(i32, i8*, i32, i8*, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
