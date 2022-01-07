; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3ContentColumns.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3ContentColumns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SELECT * FROM %Q.%Q\00", align 1
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8***, i32*, i32*, i8**)* @fts3ContentColumns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3ContentColumns(i32* %0, i8* %1, i8* %2, i8*** %3, i32* %4, i32* %5, i8** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8***, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8*** %3, i8**** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8** %6, i8*** %14, align 8
  %26 = load i32, i32* @SQLITE_OK, align 4
  store i32 %26, i32* %15, align 4
  store i32* null, i32** %17, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  store i8* %29, i8** %16, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %7
  %33 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %33, i32* %15, align 4
  br label %47

34:                                               ; preds = %7
  %35 = load i32*, i32** %8, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = call i32 @sqlite3_prepare(i32* %35, i8* %36, i32 -1, i32** %17, i32 0)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @SQLITE_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i8**, i8*** %14, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @sqlite3_errmsg(i32* %43)
  %45 = call i32 @sqlite3Fts3ErrMsg(i8** %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %34
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i8*, i8** %16, align 8
  %49 = call i32 @sqlite3_free(i8* %48)
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @SQLITE_OK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %132

53:                                               ; preds = %47
  store i32 0, i32* %19, align 4
  %54 = load i32*, i32** %17, align 8
  %55 = call i32 @sqlite3_column_count(i32* %54)
  store i32 %55, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %56

56:                                               ; preds = %71, %53
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %20, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32*, i32** %17, align 8
  %62 = load i32, i32* %21, align 4
  %63 = call i8* @sqlite3_column_name(i32* %61, i32 %62)
  store i8* %63, i8** %22, align 8
  %64 = load i8*, i8** %22, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = add nsw i64 %65, 1
  %67 = load i32, i32* %19, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %19, align 4
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %21, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %21, align 4
  br label %56

74:                                               ; preds = %56
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 8, %76
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %77, %79
  %81 = trunc i64 %80 to i32
  %82 = call i64 @sqlite3_malloc64(i32 %81)
  %83 = inttoptr i64 %82 to i8**
  store i8** %83, i8*** %18, align 8
  %84 = load i8**, i8*** %18, align 8
  %85 = icmp eq i8** %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %87, i32* %15, align 4
  br label %123

88:                                               ; preds = %74
  %89 = load i8**, i8*** %18, align 8
  %90 = load i32, i32* %20, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = bitcast i8** %92 to i8*
  store i8* %93, i8** %23, align 8
  store i32 0, i32* %21, align 4
  br label %94

94:                                               ; preds = %119, %88
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %20, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %94
  %99 = load i32*, i32** %17, align 8
  %100 = load i32, i32* %21, align 4
  %101 = call i8* @sqlite3_column_name(i32* %99, i32 %100)
  store i8* %101, i8** %24, align 8
  %102 = load i8*, i8** %24, align 8
  %103 = call i64 @strlen(i8* %102)
  %104 = trunc i64 %103 to i32
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %25, align 4
  %106 = load i8*, i8** %23, align 8
  %107 = load i8*, i8** %24, align 8
  %108 = load i32, i32* %25, align 4
  %109 = call i32 @memcpy(i8* %106, i8* %107, i32 %108)
  %110 = load i8*, i8** %23, align 8
  %111 = load i8**, i8*** %18, align 8
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  store i8* %110, i8** %114, align 8
  %115 = load i32, i32* %25, align 4
  %116 = load i8*, i8** %23, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %23, align 8
  br label %119

119:                                              ; preds = %98
  %120 = load i32, i32* %21, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %21, align 4
  br label %94

122:                                              ; preds = %94
  br label %123

123:                                              ; preds = %122, %86
  %124 = load i32*, i32** %17, align 8
  %125 = call i32 @sqlite3_finalize(i32* %124)
  %126 = load i32, i32* %20, align 4
  %127 = load i32*, i32** %12, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %19, align 4
  %129 = load i32*, i32** %13, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i8**, i8*** %18, align 8
  %131 = load i8***, i8**** %11, align 8
  store i8** %130, i8*** %131, align 8
  br label %132

132:                                              ; preds = %123, %47
  %133 = load i32, i32* %15, align 4
  ret i32 %133
}

declare dso_local i8* @sqlite3_mprintf(i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3_prepare(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3Fts3ErrMsg(i8**, i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i8* @sqlite3_column_name(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
