; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprFold.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprFold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"wrong number of arguments to function fts5_fold\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @fts5ExprFold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5ExprFold(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @sqlite3_result_error(i32* %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %35

17:                                               ; preds = %11, %3
  store i32 0, i32* %8, align 4
  %18 = load i32**, i32*** %6, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @sqlite3_value_int(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32**, i32*** %6, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @sqlite3_value_int(i32* %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %24, %17
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @sqlite3Fts5UnicodeFold(i32 %31, i32 %32)
  %34 = call i32 @sqlite3_result_int(i32* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %14
  ret void
}

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i32 @sqlite3Fts5UnicodeFold(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
