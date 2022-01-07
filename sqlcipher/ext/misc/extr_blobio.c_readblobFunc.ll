; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_blobio.c_readblobFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_blobio.c_readblobFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"bad table name\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"bad column name\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot open BLOB pointer\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"BLOB write failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @readblobFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readblobFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %7, align 8
  %17 = load i32**, i32*** %6, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @sqlite3_value_text(i32* %19)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %8, align 8
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @sqlite3_value_text(i32* %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @sqlite3_result_error(i32* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %104

32:                                               ; preds = %3
  %33 = load i32**, i32*** %6, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @sqlite3_value_text(i32* %35)
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @sqlite3_result_error(i32* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  br label %104

43:                                               ; preds = %32
  %44 = load i32**, i32*** %6, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @sqlite3_value_int64(i32* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32**, i32*** %6, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 4
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @sqlite3_value_int(i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32**, i32*** %6, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 5
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @sqlite3_value_int(i32* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %104

59:                                               ; preds = %43
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i8* @sqlite3_malloc64(i32 %61)
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @sqlite3_result_error_nomem(i32* %66)
  br label %104

68:                                               ; preds = %59
  %69 = load i32*, i32** %4, align 8
  %70 = call i32* @sqlite3_context_db_handle(i32* %69)
  store i32* %70, i32** %15, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @sqlite3_blob_open(i32* %71, i8* %72, i8* %73, i8* %74, i32 %75, i32 0, i32** %7)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @sqlite3_free(i8* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @sqlite3_result_error(i32* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  br label %104

84:                                               ; preds = %68
  %85 = load i32*, i32** %7, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @sqlite3_blob_read(i32* %85, i8* %86, i32 %87, i32 %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @sqlite3_blob_close(i32* %90)
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 @sqlite3_free(i8* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @sqlite3_result_error(i32* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  br label %104

99:                                               ; preds = %84
  %100 = load i32*, i32** %4, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @sqlite3_result_blob(i32* %100, i8* %101, i32 %102, i32 (i8*)* @sqlite3_free)
  br label %104

104:                                              ; preds = %29, %40, %58, %65, %79, %99, %94
  ret void
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @sqlite3_blob_open(i32*, i8*, i8*, i8*, i32, i32, i32**) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_blob_read(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_blob_close(i32*) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i32, i32 (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
