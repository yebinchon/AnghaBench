; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3TriggerUpdateStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3TriggerUpdateStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32* }
%struct.TYPE_8__ = type { i32* }

@TK_UPDATE = common dso_local global i32 0, align 4
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@EXPRDUP_REDUCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @sqlite3TriggerUpdateStep(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32* %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %15, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = load i32, i32* @TK_UPDATE, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = call %struct.TYPE_7__* @triggerStepAllocate(%struct.TYPE_8__* %20, i32 %21, i32* %22, i8* %23, i8* %24)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %16, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %55

28:                                               ; preds = %7
  %29 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32*, i32** %10, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  br label %51

38:                                               ; preds = %28
  %39 = load i32*, i32** %15, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %42 = call i32* @sqlite3ExprListDup(i32* %39, i32* %40, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %48 = call i32* @sqlite3ExprDup(i32* %45, i32* %46, i32 %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %38, %31
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %7
  %56 = load i32*, i32** %15, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @sqlite3ExprListDelete(i32* %56, i32* %57)
  %59 = load i32*, i32** %15, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @sqlite3ExprDelete(i32* %59, i32* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  ret %struct.TYPE_7__* %62
}

declare dso_local %struct.TYPE_7__* @triggerStepAllocate(%struct.TYPE_8__*, i32, i32*, i8*, i8*) #1

declare dso_local i32* @sqlite3ExprListDup(i32*, i32*, i32) #1

declare dso_local i32* @sqlite3ExprDup(i32*, i32*, i32) #1

declare dso_local i32 @sqlite3ExprListDelete(i32*, i32*) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
