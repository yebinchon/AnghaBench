; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_resolve.c_sqlite3ResolveOrderGroupBy.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_resolve.c_sqlite3ResolveOrderGroupBy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@SQLITE_LIMIT_COLUMN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"too many terms in %s BY clause\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3ResolveOrderGroupBy(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_19__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.ExprList_item*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %11, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %18 = icmp eq %struct.TYPE_19__* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %4
  store i32 0, i32* %5, align 4
  br label %108

27:                                               ; preds = %19
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @SQLITE_LIMIT_COLUMN, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %30, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @sqlite3ErrorMsg(%struct.TYPE_18__* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %40)
  store i32 1, i32* %5, align 4
  br label %108

42:                                               ; preds = %27
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  store %struct.TYPE_19__* %45, %struct.TYPE_19__** %12, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %47 = icmp ne %struct.TYPE_19__* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  store i32 0, i32* %10, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load %struct.ExprList_item*, %struct.ExprList_item** %51, align 8
  store %struct.ExprList_item* %52, %struct.ExprList_item** %13, align 8
  br label %53

53:                                               ; preds = %102, %42
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %107

59:                                               ; preds = %53
  %60 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %61 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %101

66:                                               ; preds = %59
  %67 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %68 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = icmp sgt i64 %71, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %66
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = call i32 @resolveOutOfRangeError(%struct.TYPE_18__* %78, i8* %79, i32 %81, i64 %85)
  store i32 1, i32* %5, align 4
  br label %108

87:                                               ; preds = %66
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %90 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %91 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, 1
  %96 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %97 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @resolveAlias(%struct.TYPE_18__* %88, %struct.TYPE_19__* %89, i64 %95, i32 %98, i8* %99, i32 0)
  br label %101

101:                                              ; preds = %87, %59
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  %105 = load %struct.ExprList_item*, %struct.ExprList_item** %13, align 8
  %106 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %105, i32 1
  store %struct.ExprList_item* %106, %struct.ExprList_item** %13, align 8
  br label %53

107:                                              ; preds = %53
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %77, %38, %26
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_18__*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @resolveOutOfRangeError(%struct.TYPE_18__*, i8*, i32, i64) #1

declare dso_local i32 @resolveAlias(%struct.TYPE_18__*, %struct.TYPE_19__*, i64, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
