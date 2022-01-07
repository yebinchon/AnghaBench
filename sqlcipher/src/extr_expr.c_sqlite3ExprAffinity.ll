; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprAffinity.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprAffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i64, i8, %struct.TYPE_18__*, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_19__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }

@EP_Generic = common dso_local global i32 0, align 4
@TK_SELECT = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@TK_REGISTER = common dso_local global i32 0, align 4
@TK_CAST = common dso_local global i32 0, align 4
@EP_IntValue = common dso_local global i32 0, align 4
@TK_AGG_COLUMN = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i32 0, align 4
@TK_SELECT_COLUMN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @sqlite3ExprAffinity(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %6 = call %struct.TYPE_19__* @sqlite3ExprSkipCollate(%struct.TYPE_19__* %5)
  store %struct.TYPE_19__* %6, %struct.TYPE_19__** %3, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @EP_Generic, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8 0, i8* %2, align 1
  br label %122

14:                                               ; preds = %1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TK_SELECT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %14
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EP_xIsSelect, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = call signext i8 @sqlite3ExprAffinity(%struct.TYPE_19__* %38)
  store i8 %39, i8* %2, align 1
  br label %122

40:                                               ; preds = %14
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @TK_REGISTER, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @TK_CAST, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %54 = load i32, i32* @EP_IntValue, align 4
  %55 = call i32 @ExprHasProperty(%struct.TYPE_19__* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call signext i8 @sqlite3AffinityType(i32 %63, i32 0)
  store i8 %64, i8* %2, align 1
  br label %122

65:                                               ; preds = %48
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @TK_AGG_COLUMN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @TK_COLUMN, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69, %65
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = call signext i8 @sqlite3TableColumnAffinity(i64 %83, i64 %86)
  store i8 %87, i8* %2, align 1
  br label %122

88:                                               ; preds = %73, %69
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @TK_SELECT_COLUMN, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %118

92:                                               ; preds = %88
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @EP_xIsSelect, align 4
  %99 = and i32 %97, %98
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %109, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = call signext i8 @sqlite3ExprAffinity(%struct.TYPE_19__* %116)
  store i8 %117, i8* %2, align 1
  br label %122

118:                                              ; preds = %88
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 4
  %121 = load i8, i8* %120, align 8
  store i8 %121, i8* %2, align 1
  br label %122

122:                                              ; preds = %118, %92, %79, %52, %21, %13
  %123 = load i8, i8* %2, align 1
  ret i8 %123
}

declare dso_local %struct.TYPE_19__* @sqlite3ExprSkipCollate(%struct.TYPE_19__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_19__*, i32) #1

declare dso_local signext i8 @sqlite3AffinityType(i32, i32) #1

declare dso_local signext i8 @sqlite3TableColumnAffinity(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
