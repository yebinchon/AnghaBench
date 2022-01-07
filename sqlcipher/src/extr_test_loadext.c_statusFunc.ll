; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_loadext.c_statusFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_loadext.c_statusFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }

@SQLITE_INTEGER = common dso_local global i64 0, align 8
@SQLITE_TEXT = common dso_local global i64 0, align 8
@statusFunc.aOp = internal constant [6 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 132 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), i32 130 }, %struct.anon { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i32 131 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 128 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 129 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 133 }], align 16
@.str = private unnamed_addr constant [12 x i8] c"MEMORY_USED\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"PAGECACHE_USED\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"PAGECACHE_OVERFLOW\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"SCRATCH_USED\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SCRATCH_OVERFLOW\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"MALLOC_SIZE\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"unknown status property: %s\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"unknown status type\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"sqlite3_status(%d,...) returns %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @statusFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @statusFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load i32**, i32*** %6, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @sqlite3_value_type(i32* %19)
  %21 = load i64, i64* @SQLITE_INTEGER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i32**, i32*** %6, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @sqlite3_value_int(i32* %26)
  store i32 %27, i32* %7, align 4
  br label %81

28:                                               ; preds = %3
  %29 = load i32**, i32*** %6, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @sqlite3_value_type(i32* %31)
  %33 = load i64, i64* @SQLITE_TEXT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %77

35:                                               ; preds = %28
  store i32 6, i32* %14, align 4
  %36 = load i32**, i32*** %6, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @sqlite3_value_text(i32* %38)
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %13, align 8
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %61, %35
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* @statusFunc.aOp, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 16
  %51 = load i8*, i8** %13, align 8
  %52 = call i64 @strcmp(i8* %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* @statusFunc.aOp, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %7, align 4
  br label %64

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %41

64:                                               ; preds = %54, %41
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i8*, i8** %13, align 8
  %70 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %69)
  store i8* %70, i8** %15, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load i8*, i8** %15, align 8
  %73 = call i32 @sqlite3_result_error(i32* %71, i8* %72, i32 -1)
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @sqlite3_free(i8* %74)
  br label %117

76:                                               ; preds = %64
  br label %80

77:                                               ; preds = %28
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @sqlite3_result_error(i32* %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 -1)
  br label %117

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %23
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32**, i32*** %6, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @sqlite3_value_int(i32* %87)
  store i32 %88, i32* %10, align 4
  br label %90

89:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %84
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @sqlite3_status(i32 %91, i32* %9, i32* %8, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @SQLITE_OK, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %90
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %98, i32 %99)
  store i8* %100, i8** %16, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = load i8*, i8** %16, align 8
  %103 = call i32 @sqlite3_result_error(i32* %101, i8* %102, i32 -1)
  %104 = load i8*, i8** %16, align 8
  %105 = call i32 @sqlite3_free(i8* %104)
  br label %117

106:                                              ; preds = %90
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @sqlite3_result_int(i32* %110, i32 %111)
  br label %117

113:                                              ; preds = %106
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @sqlite3_result_int(i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %68, %77, %97, %113, %109
  ret void
}

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_status(i32, i32*, i32*, i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
