; ModuleID = '/home/carl/AnghaBench/wcdb/backup/extr_mm_backup.c_run_schema_dump_query.c'
source_filename = "/home/carl/AnghaBench/wcdb/backup/extr_mm_backup.c_run_schema_dump_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }

@MMBAK_RET_CANCELED = common dso_local global i32 0, align 4
@dump_callback = common dso_local global i32 0, align 4
@SQLITE_ABORT = common dso_local global i32 0, align 4
@MMBAK_RET_FAILED = common dso_local global i32 0, align 4
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@MMBAK_FLAG_FIX_CORRUPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SQL execution failed: %s [SQL: %s]\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s ORDER BY rowid DESC\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@MMBAK_RET_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*)* @run_schema_dump_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_schema_dump_query(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @MMBAK_RET_CANCELED, align 4
  store i32 %15, i32* %3, align 4
  br label %109

16:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @dump_callback, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = call i32 @sqlite3_exec(i32 %19, i8* %20, i32 %21, %struct.TYPE_4__* %22, i8** %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SQLITE_ABORT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %16
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @sqlite3_free(i8* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @MMBAK_RET_CANCELED, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @MMBAK_RET_FAILED, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %3, align 4
  br label %109

44:                                               ; preds = %16
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SQLITE_CORRUPT, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %90

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MMBAK_FLAG_FIX_CORRUPTION, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %90

55:                                               ; preds = %48
  %56 = load i8*, i8** %6, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @LOGE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %59, i8* %60)
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @sqlite3_free(i8* %62)
  store i8* null, i8** %6, align 8
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @strlen(i8* %65)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, 32
  %69 = call i64 @malloc(i64 %68)
  %70 = inttoptr i64 %69 to i8*
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %109

75:                                               ; preds = %64
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 32
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @sqlite3_snprintf(i64 %77, i8* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* @dump_callback, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = call i32 @sqlite3_exec(i32 %83, i8* %84, i32 %85, %struct.TYPE_4__* %86, i8** %6)
  store i32 %87, i32* %7, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @free(i8* %88)
  br label %90

90:                                               ; preds = %75, %48, %44
  %91 = load i8*, i8** %6, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @LOGE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %94, i8* %95)
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @sqlite3_free(i8* %97)
  br label %99

99:                                               ; preds = %93, %90
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @SQLITE_OK, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @MMBAK_RET_OK, align 4
  br label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @MMBAK_RET_FAILED, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %73, %42, %14
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @sqlite3_exec(i32, i8*, i32, %struct.TYPE_4__*, i8**) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @LOGE(i8*, i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @sqlite3_snprintf(i64, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
