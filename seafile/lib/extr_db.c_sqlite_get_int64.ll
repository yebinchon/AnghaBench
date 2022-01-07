; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_db.c_sqlite_get_int64.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_db.c_sqlite_get_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Couldn't execute query, error: %d->'%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"no error given\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite_get_int64(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32* @sqlite_query_prepare(i32* %10, i8* %11)
  store i32* %12, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @sqlite3_step(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SQLITE_ROW, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @sqlite3_column_int64(i32* %22, i32 0)
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @sqlite3_finalize(i32* %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %49

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SQLITE_ERROR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = call i8* @sqlite3_errmsg(i32* %32)
  store i8* %33, i8** %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i8*, i8** %9, align 8
  br label %40

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i8* [ %38, %37 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %39 ]
  %42 = call i32 @g_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @sqlite3_finalize(i32* %43)
  store i32 -1, i32* %3, align 4
  br label %49

45:                                               ; preds = %27
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @sqlite3_finalize(i32* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %40, %21, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32* @sqlite_query_prepare(i32*, i8*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

declare dso_local i32 @g_warning(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
