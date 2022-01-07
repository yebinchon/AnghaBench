; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test8.c_getColumnNames.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test8.c_getColumnNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SELECT * FROM %Q\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8***, i32*)* @getColumnNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getColumnNames(i32* %0, i8* %1, i8*** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8*** %2, i8**** %7, align 8
  store i32* %3, i32** %8, align 8
  store i8** null, i8*** %9, align 8
  store i32* null, i32** %11, align 8
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %24, i32* %12, align 4
  br label %119

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @sqlite3_prepare(i32* %26, i8* %27, i32 -1, i32** %11, i32 0)
  store i32 %28, i32* %12, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @sqlite3_free(i8* %29)
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @SQLITE_OK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %114

34:                                               ; preds = %25
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @sqlite3_column_count(i32* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %60, %34
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i8* @sqlite3_column_name(i32* %46, i32 %47)
  store i8* %48, i8** %17, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %52, i32* %12, align 4
  br label %119

53:                                               ; preds = %45
  %54 = load i8*, i8** %17, align 8
  %55 = call i64 @strlen(i8* %54)
  %56 = trunc i64 %55 to i32
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %41

63:                                               ; preds = %41
  %64 = load i32, i32* %15, align 4
  %65 = call i64 @sqlite3MallocZero(i32 %64)
  %66 = inttoptr i64 %65 to i8**
  store i8** %66, i8*** %9, align 8
  %67 = load i8**, i8*** %9, align 8
  %68 = icmp ne i8** %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %70, i32* %12, align 4
  br label %119

71:                                               ; preds = %63
  %72 = load i8**, i8*** %9, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = bitcast i8** %75 to i8*
  store i8* %76, i8** %16, align 8
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %100, %71
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %77
  %82 = load i8*, i8** %16, align 8
  %83 = load i8**, i8*** %9, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* %82, i8** %86, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load i8*, i8** %16, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i8* @sqlite3_column_name(i32* %89, i32 %90)
  %92 = call i32 @sqlite3_snprintf(i32 %87, i8* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %91)
  %93 = load i8*, i8** %16, align 8
  %94 = call i64 @strlen(i8* %93)
  %95 = trunc i64 %94 to i32
  %96 = add nsw i32 %95, 1
  %97 = load i8*, i8** %16, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %16, align 8
  br label %100

100:                                              ; preds = %81
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %77

103:                                              ; preds = %77
  %104 = load i8*, i8** %16, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = sub i64 0, %106
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load i8**, i8*** %9, align 8
  %110 = bitcast i8** %109 to i8*
  %111 = icmp eq i8* %108, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  br label %114

114:                                              ; preds = %103, %25
  %115 = load i8**, i8*** %9, align 8
  %116 = load i8***, i8**** %7, align 8
  store i8** %115, i8*** %116, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %114, %69, %51, %23
  %120 = load i32*, i32** %11, align 8
  %121 = call i32 @sqlite3_finalize(i32* %120)
  %122 = load i32, i32* %12, align 4
  ret i32 %122
}

declare dso_local i8* @sqlite3_mprintf(i8*, i8*) #1

declare dso_local i32 @sqlite3_prepare(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i8* @sqlite3_column_name(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @sqlite3MallocZero(i32) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
