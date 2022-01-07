; ModuleID = '/home/carl/AnghaBench/wcdb/fts/extr_mm_cipher.c_mmenc_func.c'
source_filename = "/home/carl/AnghaBench/wcdb/fts/extr_mm_cipher.c_mmenc_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@U_ZERO_ERROR = common dso_local global i64 0, align 8
@SQLITE_BLOB = common dso_local global i32 0, align 4
@SQLITE_TEXT = common dso_local global i32 0, align 4
@U_BUFFER_OVERFLOW_ERROR = common dso_local global i64 0, align 8
@U_STRING_NOT_TERMINATED_WARNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Failed transforming text to internal encoding.\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_MISUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @mmenc_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmenc_func(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  store i8* %15, i8** %11, align 8
  %16 = load i64, i64* @U_ZERO_ERROR, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %114

20:                                               ; preds = %3
  %21 = load i32**, i32*** %6, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @sqlite3_value_type(i32* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @SQLITE_BLOB, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %114

29:                                               ; preds = %20
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @SQLITE_TEXT, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = load i32**, i32*** %6, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @sqlite3_result_value(i32* %34, i32* %37)
  br label %125

39:                                               ; preds = %29
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @sqlite3_user_data(i32* %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %7, align 8
  %43 = load i32**, i32*** %6, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @sqlite3_value_bytes16(i32* %45)
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %9, align 4
  %48 = load i32**, i32*** %6, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @sqlite3_value_text16(i32* %50)
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %8, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ucnv_fromUChars(i32 %55, i8* %56, i32 1024, i32* %57, i32 %58, i64* %13)
  store i32 %59, i32* %12, align 4
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* @U_BUFFER_OVERFLOW_ERROR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %39
  %64 = load i64, i64* @U_ZERO_ERROR, align 8
  store i64 %64, i64* %13, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @sqlite3_malloc(i32 %65)
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %11, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @ucnv_fromUChars(i32 %70, i8* %71, i32 %72, i32* %73, i32 %74, i64* %13)
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %63, %39
  %77 = load i64, i64* %13, align 8
  %78 = call i64 @U_FAILURE(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* @U_STRING_NOT_TERMINATED_WARNING, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @sqlite3_mm_set_last_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %103

86:                                               ; preds = %80, %76
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @do_rc4(%struct.TYPE_3__* %87, i8* %88, i32 %89)
  %91 = load i32*, i32** %4, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %95 = call i32 @sqlite3_result_blob(i32* %91, i8* %92, i32 %93, i32 %94)
  %96 = load i8*, i8** %11, align 8
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %98 = icmp ne i8* %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @sqlite3_free(i8* %100)
  br label %102

102:                                              ; preds = %99, %86
  br label %125

103:                                              ; preds = %84
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %106 = icmp ne i8* %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @sqlite3_free(i8* %108)
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* @SQLITE_ERROR, align 4
  %113 = call i32 @sqlite3_result_error_code(i32* %111, i32 %112)
  br label %125

114:                                              ; preds = %28, %19
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %117 = icmp ne i8* %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @sqlite3_free(i8* %119)
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* @SQLITE_MISUSE, align 4
  %124 = call i32 @sqlite3_result_error_code(i32* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %110, %102, %33
  ret void
}

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_result_value(i32*, i32*) #1

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32 @sqlite3_value_bytes16(i32*) #1

declare dso_local i64 @sqlite3_value_text16(i32*) #1

declare dso_local i32 @ucnv_fromUChars(i32, i8*, i32, i32*, i32, i64*) #1

declare dso_local i64 @sqlite3_malloc(i32) #1

declare dso_local i64 @U_FAILURE(i64) #1

declare dso_local i32 @sqlite3_mm_set_last_error(i8*) #1

declare dso_local i32 @do_rc4(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
