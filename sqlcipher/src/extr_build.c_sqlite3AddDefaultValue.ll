; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3AddDefaultValue.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3AddDefaultValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_23__, i32, %struct.TYPE_27__*, i32 }
%struct.TYPE_23__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"default value of column [%s] is not constant\00", align 1
@TK_SPAN = common dso_local global i32 0, align 4
@EP_Skip = common dso_local global i32 0, align 4
@EXPRDUP_REDUCE = common dso_local global i32 0, align 4
@IN_RENAME_OBJECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3AddDefaultValue(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_27__, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %11, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  store %struct.TYPE_25__* %18, %struct.TYPE_25__** %9, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %20 = icmp ne %struct.TYPE_25__* %19, null
  br i1 %20, label %21, label %74

21:                                               ; preds = %4
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i64 %29
  store %struct.TYPE_28__* %30, %struct.TYPE_28__** %10, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sqlite3ExprIsConstantOrFunction(%struct.TYPE_27__* %31, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %21
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sqlite3ErrorMsg(%struct.TYPE_26__* %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %73

44:                                               ; preds = %21
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %47, align 8
  %49 = call i32 @sqlite3ExprDelete(%struct.TYPE_24__* %45, %struct.TYPE_27__* %48)
  %50 = call i32 @memset(%struct.TYPE_27__* %12, i32 0, i32 24)
  %51 = load i32, i32* @TK_SPAN, align 4
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 3
  store i32 %51, i32* %52, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @sqlite3DbSpanDup(%struct.TYPE_24__* %53, i8* %54, i8* %55)
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 2
  store %struct.TYPE_27__* %59, %struct.TYPE_27__** %60, align 8
  %61 = load i32, i32* @EP_Skip, align 4
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %64 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %65 = call %struct.TYPE_27__* @sqlite3ExprDup(%struct.TYPE_24__* %63, %struct.TYPE_27__* %12, i32 %64)
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %66, i32 0, i32 0
  store %struct.TYPE_27__* %65, %struct.TYPE_27__** %67, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @sqlite3DbFree(%struct.TYPE_24__* %68, i32 %71)
  br label %73

73:                                               ; preds = %44, %38
  br label %74

74:                                               ; preds = %73, %4
  %75 = load i64, i64* @IN_RENAME_OBJECT, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %80 = call i32 @sqlite3RenameExprUnmap(%struct.TYPE_26__* %78, %struct.TYPE_27__* %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %84 = call i32 @sqlite3ExprDelete(%struct.TYPE_24__* %82, %struct.TYPE_27__* %83)
  ret void
}

declare dso_local i32 @sqlite3ExprIsConstantOrFunction(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(%struct.TYPE_24__*, %struct.TYPE_27__*) #1

declare dso_local i32 @memset(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @sqlite3DbSpanDup(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local %struct.TYPE_27__* @sqlite3ExprDup(%struct.TYPE_24__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3RenameExprUnmap(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
