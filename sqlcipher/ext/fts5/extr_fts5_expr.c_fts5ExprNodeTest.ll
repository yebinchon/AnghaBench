; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNodeTest.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNodeTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS5_NOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*)* @fts5ExprNodeTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ExprNodeTest(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load i32, i32* @SQLITE_OK, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %31 [
    i32 129, label %15
    i32 128, label %19
    i32 131, label %23
    i32 130, label %27
  ]

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = call i32 @fts5ExprNodeTest_STRING(i32* %16, %struct.TYPE_8__* %17)
  store i32 %18, i32* %5, align 4
  br label %42

19:                                               ; preds = %11
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = call i32 @fts5ExprNodeTest_TERM(i32* %20, %struct.TYPE_8__* %21)
  store i32 %22, i32* %5, align 4
  br label %42

23:                                               ; preds = %11
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = call i32 @fts5ExprNodeTest_AND(i32* %24, %struct.TYPE_8__* %25)
  store i32 %26, i32* %5, align 4
  br label %42

27:                                               ; preds = %11
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = call i32 @fts5ExprNodeTest_OR(i32* %28, %struct.TYPE_8__* %29)
  br label %42

31:                                               ; preds = %11
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FTS5_NOT, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = call i32 @fts5ExprNodeTest_NOT(i32* %39, %struct.TYPE_8__* %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %31, %27, %23, %19, %15
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @fts5ExprNodeTest_STRING(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @fts5ExprNodeTest_TERM(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @fts5ExprNodeTest_AND(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @fts5ExprNodeTest_OR(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts5ExprNodeTest_NOT(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
