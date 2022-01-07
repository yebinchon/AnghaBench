; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_db.c_sqlite_query_prepare.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_db.c_sqlite_query_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Couldn't prepare query, error:%d->'%s'\0A\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"no error given\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sqlite_query_prepare(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @sqlite3_prepare_v2(i32* %9, i8* %10, i32 -1, i32** %6, i32* null)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SQLITE_OK, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @sqlite3_errmsg(i32* %16)
  store i8* %17, i8** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i8*, i8** %8, align 8
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i8* [ %22, %21 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %23 ]
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @g_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %25, i8* %26)
  store i32* null, i32** %3, align 8
  br label %30

28:                                               ; preds = %2
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %3, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32*, i32** %3, align 8
  ret i32* %31
}

declare dso_local i32 @sqlite3_prepare_v2(i32*, i8*, i32, i32**, i32*) #1

declare dso_local i8* @sqlite3_errmsg(i32*) #1

declare dso_local i32 @g_warning(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
