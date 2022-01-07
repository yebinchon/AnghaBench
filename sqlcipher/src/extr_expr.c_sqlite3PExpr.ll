; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3PExpr.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3PExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@TK_AND = common dso_local global i32 0, align 4
@IN_RENAME_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @sqlite3PExpr(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @TK_AND, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load i32, i32* @IN_RENAME_OBJECT, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %27 = call %struct.TYPE_17__* @sqlite3ExprAnd(i32 %24, %struct.TYPE_17__* %25, %struct.TYPE_17__* %26)
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %9, align 8
  br label %52

28:                                               ; preds = %18, %13, %4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_17__* @sqlite3DbMallocRawNN(i32 %31, i32 12)
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %9, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = icmp ne %struct.TYPE_17__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %37 = call i32 @memset(%struct.TYPE_17__* %36, i32 0, i32 12)
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 255
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  store i32 -1, i32* %43, align 4
  br label %44

44:                                               ; preds = %35, %28
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = call i32 @sqlite3ExprAttachSubtrees(i32 %47, %struct.TYPE_17__* %48, %struct.TYPE_17__* %49, %struct.TYPE_17__* %50)
  br label %52

52:                                               ; preds = %44, %21
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %54 = icmp ne %struct.TYPE_17__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sqlite3ExprCheckHeight(%struct.TYPE_16__* %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %52
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  ret %struct.TYPE_17__* %62
}

declare dso_local %struct.TYPE_17__* @sqlite3ExprAnd(i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @sqlite3DbMallocRawNN(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @sqlite3ExprAttachSubtrees(i32, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @sqlite3ExprCheckHeight(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
