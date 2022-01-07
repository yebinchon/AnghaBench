; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_execSql.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_execSql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CRE\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"INS\00", align 1
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8*)* @execSql to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execSql(i32* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @sqlite3_prepare_v2(i32* %11, i8* %12, i32 -1, i32** %8, i32 0)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SQLITE_OK, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %79

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %54, %19
  %21 = load i32, i32* @SQLITE_ROW, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @sqlite3_step(i32* %22)
  store i32 %23, i32* %9, align 4
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %20
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @sqlite3_column_text(i32* %26, i32 0)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @sqlite3_strnicmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %25
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40, %36
  %45 = load i32*, i32** %5, align 8
  %46 = load i8**, i8*** %6, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @execSql(i32* %45, i8** %46, i8* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SQLITE_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %55

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %40, %25
  br label %20

55:                                               ; preds = %52, %20
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SQLITE_ROW, align 4
  %58 = icmp ne i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @SQLITE_DONE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @SQLITE_OK, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %55
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i8**, i8*** %6, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @sqlite3_errmsg(i32* %72)
  %74 = call i32 @sqlite3SetString(i8** %70, i32* %71, i32 %73)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @sqlite3_finalize(i32* %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %17
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3SetString(i8**, i32*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
