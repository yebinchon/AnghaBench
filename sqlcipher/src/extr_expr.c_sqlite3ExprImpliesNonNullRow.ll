; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprImpliesNonNullRow.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprImpliesNonNullRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i64, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@TK_NOTNULL = common dso_local global i64 0, align 8
@TK_AND = common dso_local global i64 0, align 8
@impliesNotNullRow = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3ExprImpliesNonNullRow(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = call %struct.TYPE_11__* @sqlite3ExprSkipCollate(%struct.TYPE_11__* %7)
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %4, align 8
  br label %9

9:                                                ; preds = %42, %2
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TK_NOTNULL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %4, align 8
  br label %42

22:                                               ; preds = %12
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TK_AND, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @sqlite3ExprImpliesNonNullRow(%struct.TYPE_11__* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %56

36:                                               ; preds = %28
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %4, align 8
  br label %41

40:                                               ; preds = %22
  br label %43

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %18
  br label %9

43:                                               ; preds = %40, %9
  %44 = load i32, i32* @impliesNotNullRow, align 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 4
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = call i32 @sqlite3WalkExpr(%struct.TYPE_10__* %6, %struct.TYPE_11__* %52)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %43, %35
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_11__* @sqlite3ExprSkipCollate(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3WalkExpr(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
