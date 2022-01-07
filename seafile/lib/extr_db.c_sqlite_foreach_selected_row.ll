; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_db.c_sqlite_foreach_selected_row.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_db.c_sqlite_foreach_selected_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Couldn't execute query, error: %d->'%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"no error given\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite_foreach_selected_row(i32* %0, i8* %1, i32 (i32*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i32*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i32*, i8*)* %2, i32 (i32*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32* @sqlite_query_prepare(i32* %14, i8* %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %60

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %20, %37
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @sqlite3_step(i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @SQLITE_ROW, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %38

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %12, align 4
  %31 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %8, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 %31(i32* %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %38

37:                                               ; preds = %28
  br label %21

38:                                               ; preds = %36, %27
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @SQLITE_ERROR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = call i8* @sqlite3_errmsg(i32* %43)
  store i8* %44, i8** %13, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i8*, i8** %13, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i8*, i8** %13, align 8
  br label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i8* [ %49, %48 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %50 ]
  %53 = call i32 @g_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %45, i8* %52)
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @sqlite3_finalize(i32* %54)
  store i32 -1, i32* %5, align 4
  br label %60

56:                                               ; preds = %38
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @sqlite3_finalize(i32* %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %51, %19
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32* @sqlite_query_prepare(i32*, i8*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

declare dso_local i32 @g_warning(i8*, i32, i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
