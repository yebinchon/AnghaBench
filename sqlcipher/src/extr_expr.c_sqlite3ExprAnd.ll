; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprAnd.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprAnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TK_INTEGER = common dso_local global i32 0, align 4
@sqlite3IntTokens = common dso_local global i32* null, align 8
@TK_AND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sqlite3ExprAnd(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32*, i32** %7, align 8
  store i32* %12, i32** %4, align 8
  br label %48

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %4, align 8
  br label %48

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @exprAlwaysFalse(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @exprAlwaysFalse(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %22, %18
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @sqlite3ExprDelete(i32* %27, i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @sqlite3ExprDelete(i32* %30, i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @TK_INTEGER, align 4
  %35 = load i32*, i32** @sqlite3IntTokens, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i32* @sqlite3ExprAlloc(i32* %33, i32 %34, i32* %36, i32 0)
  store i32* %37, i32** %4, align 8
  br label %48

38:                                               ; preds = %22
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @TK_AND, align 4
  %41 = call i32* @sqlite3ExprAlloc(i32* %39, i32 %40, i32* null, i32 0)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @sqlite3ExprAttachSubtrees(i32* %42, i32* %43, i32* %44, i32* %45)
  %47 = load i32*, i32** %8, align 8
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %38, %26, %16, %11
  %49 = load i32*, i32** %4, align 8
  ret i32* %49
}

declare dso_local i64 @exprAlwaysFalse(i32*) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, i32*) #1

declare dso_local i32* @sqlite3ExprAlloc(i32*, i32, i32*, i32) #1

declare dso_local i32 @sqlite3ExprAttachSubtrees(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
