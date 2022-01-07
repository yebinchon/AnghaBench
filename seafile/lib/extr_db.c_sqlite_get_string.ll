; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_db.c_sqlite_get_string.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_db.c_sqlite_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Couldn't execute query, error: %d->'%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"no error given\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite_get_string(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32* @sqlite_query_prepare(i32* %11, i8* %12)
  store i32* %13, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %52

16:                                               ; preds = %2
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @sqlite3_step(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SQLITE_ROW, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load i32*, i32** %8, align 8
  %24 = call i64 @sqlite3_column_text(i32* %23, i32 0)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @g_strdup(i8* %26)
  store i8* %27, i8** %9, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @sqlite3_finalize(i32* %28)
  %30 = load i8*, i8** %9, align 8
  store i8* %30, i8** %3, align 8
  br label %52

31:                                               ; preds = %16
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SQLITE_ERROR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @sqlite3_errmsg(i32* %36)
  store i8* %37, i8** %10, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i8*, i8** %10, align 8
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i8* [ %42, %41 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %43 ]
  %46 = call i32 @g_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @sqlite3_finalize(i32* %47)
  store i8* null, i8** %3, align 8
  br label %52

49:                                               ; preds = %31
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @sqlite3_finalize(i32* %50)
  store i8* null, i8** %3, align 8
  br label %52

52:                                               ; preds = %49, %44, %22, %15
  %53 = load i8*, i8** %3, align 8
  ret i8* %53
}

declare dso_local i32* @sqlite_query_prepare(i32*, i8*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

declare dso_local i32 @g_warning(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
