; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_whereexpr.c_sqlite3WhereTabFuncArgs.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_whereexpr.c_sqlite3WhereTabFuncArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.SrcList_item = type { i32, %struct.TYPE_20__, %struct.TYPE_24__*, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_27__ = type { %struct.TYPE_22__, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_24__* }

@COLFLAG_HIDDEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"too many arguments on %s() - max %d\00", align 1
@TK_COLUMN = common dso_local global i32 0, align 4
@TK_UPLUS = common dso_local global i32 0, align 4
@TK_EQ = common dso_local global i32 0, align 4
@TERM_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3WhereTabFuncArgs(%struct.TYPE_25__* %0, %struct.SrcList_item* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.SrcList_item*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.SrcList_item* %1, %struct.SrcList_item** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %15 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %129

20:                                               ; preds = %3
  %21 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %22 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %21, i32 0, i32 2
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %7, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %25 = icmp ne %struct.TYPE_24__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %29 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %10, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %33 = icmp eq %struct.TYPE_26__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %129

35:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %126, %35
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %129

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @COLFLAG_HIDDEN, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br label %61

61:                                               ; preds = %49, %43
  %62 = phi i1 [ false, %43 ], [ %60, %49 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %43

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @sqlite3ErrorMsg(%struct.TYPE_25__* %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  br label %129

79:                                               ; preds = %66
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TK_COLUMN, align 4
  %84 = call %struct.TYPE_27__* @sqlite3ExprAlloc(i32 %82, i32 %83, i32 0, i32 0)
  store %struct.TYPE_27__* %84, %struct.TYPE_27__** %11, align 8
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %86 = icmp eq %struct.TYPE_27__* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %129

88:                                               ; preds = %79
  %89 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %90 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  store %struct.TYPE_24__* %98, %struct.TYPE_24__** %101, align 8
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %103 = load i32, i32* @TK_UPLUS, align 4
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.TYPE_27__* @sqlite3ExprDup(i32 %106, i32 %114, i32 0)
  %116 = call %struct.TYPE_27__* @sqlite3PExpr(%struct.TYPE_25__* %102, i32 %103, %struct.TYPE_27__* %115, %struct.TYPE_27__* null)
  store %struct.TYPE_27__* %116, %struct.TYPE_27__** %13, align 8
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %118 = load i32, i32* @TK_EQ, align 4
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %121 = call %struct.TYPE_27__* @sqlite3PExpr(%struct.TYPE_25__* %117, i32 %118, %struct.TYPE_27__* %119, %struct.TYPE_27__* %120)
  store %struct.TYPE_27__* %121, %struct.TYPE_27__** %12, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %124 = load i32, i32* @TERM_DYNAMIC, align 4
  %125 = call i32 @whereClauseInsert(i32* %122, %struct.TYPE_27__* %123, i32 %124)
  br label %126

126:                                              ; preds = %88
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %36

129:                                              ; preds = %19, %34, %72, %87, %36
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_25__*, i8*, i32, i32) #1

declare dso_local %struct.TYPE_27__* @sqlite3ExprAlloc(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_27__* @sqlite3PExpr(%struct.TYPE_25__*, i32, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @sqlite3ExprDup(i32, i32, i32) #1

declare dso_local i32 @whereClauseInsert(i32*, %struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
