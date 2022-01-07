; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprCodeTemp.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprCodeTemp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@TK_REGISTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3ExprCodeTemp(i32* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = call %struct.TYPE_8__* @sqlite3ExprSkipCollate(%struct.TYPE_8__* %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @ConstFactorOk(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TK_REGISTER, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = call i64 @sqlite3ExprIsConstantNotJoin(%struct.TYPE_8__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = call i32 @sqlite3ExprCodeAtInit(i32* %26, %struct.TYPE_8__* %27, i32 -1)
  store i32 %28, i32* %7, align 4
  br label %48

29:                                               ; preds = %20, %14, %3
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @sqlite3GetTempReg(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @sqlite3ExprCodeTarget(i32* %32, %struct.TYPE_8__* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %47

42:                                               ; preds = %29
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @sqlite3ReleaseTempReg(i32* %43, i32 %44)
  %46 = load i32*, i32** %6, align 8
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %39
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_8__* @sqlite3ExprSkipCollate(%struct.TYPE_8__*) #1

declare dso_local i64 @ConstFactorOk(i32*) #1

declare dso_local i64 @sqlite3ExprIsConstantNotJoin(%struct.TYPE_8__*) #1

declare dso_local i32 @sqlite3ExprCodeAtInit(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @sqlite3GetTempReg(i32*) #1

declare dso_local i32 @sqlite3ExprCodeTarget(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
