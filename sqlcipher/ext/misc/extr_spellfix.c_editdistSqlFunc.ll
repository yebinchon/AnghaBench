; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_editdistSqlFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_editdistSqlFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"non-ASCII input to editdist()\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"NULL input to editdist()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @editdistSqlFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @editdistSqlFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %8 = load i32**, i32*** %6, align 8
  %9 = getelementptr inbounds i32*, i32** %8, i64 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @sqlite3_value_text(i32* %10)
  %12 = inttoptr i64 %11 to i8*
  %13 = load i32**, i32*** %6, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @sqlite3_value_text(i32* %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @editdist1(i8* %12, i8* %17, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -3
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @sqlite3_result_error_nomem(i32* %25)
  br label %37

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, -2
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @sqlite3_result_error(i32* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %36

33:                                               ; preds = %27
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @sqlite3_result_error(i32* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %24
  br label %42

38:                                               ; preds = %3
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @sqlite3_result_int(i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @editdist1(i8*, i8*, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
