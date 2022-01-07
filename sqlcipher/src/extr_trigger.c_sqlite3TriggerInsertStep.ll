; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3TriggerInsertStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_trigger.c_sqlite3TriggerInsertStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@TK_INSERT = common dso_local global i32 0, align 4
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8
@EXPRDUP_REDUCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @sqlite3TriggerInsertStep(%struct.TYPE_14__* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %17, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %8
  %30 = phi i1 [ true, %8 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %34 = load i32, i32* @TK_INSERT, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = call %struct.TYPE_13__* @triggerStepAllocate(%struct.TYPE_14__* %33, i32 %34, i32* %35, i8* %36, i8* %37)
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %18, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %40 = icmp ne %struct.TYPE_13__* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %29
  %42 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32*, i32** %12, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  store i32* %45, i32** %47, align 8
  store i32* null, i32** %12, align 8
  br label %55

48:                                               ; preds = %41
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %52 = call i32* @sqlite3SelectDup(%struct.TYPE_12__* %49, i32* %50, i32 %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 3
  store i32* %52, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %44
  %56 = load i32*, i32** %11, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %76

65:                                               ; preds = %29
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @testcase(i32* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @sqlite3IdListDelete(%struct.TYPE_12__* %68, i32* %69)
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @testcase(i32* %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @sqlite3UpsertDelete(%struct.TYPE_12__* %73, i32* %74)
  br label %76

76:                                               ; preds = %65, %55
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @sqlite3SelectDelete(%struct.TYPE_12__* %77, i32* %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  ret %struct.TYPE_13__* %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_13__* @triggerStepAllocate(%struct.TYPE_14__*, i32, i32*, i8*, i8*) #1

declare dso_local i32* @sqlite3SelectDup(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @testcase(i32*) #1

declare dso_local i32 @sqlite3IdListDelete(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @sqlite3UpsertDelete(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @sqlite3SelectDelete(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
