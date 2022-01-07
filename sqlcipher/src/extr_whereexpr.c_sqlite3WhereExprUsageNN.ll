; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_whereexpr.c_sqlite3WhereExprUsageNN.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_whereexpr.c_sqlite3WhereExprUsageNN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_16__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i32 }

@TK_COLUMN = common dso_local global i64 0, align 8
@EP_FixedCol = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@EP_Leaf = common dso_local global i32 0, align 4
@TK_IF_NULL_ROW = common dso_local global i64 0, align 8
@EP_xIsSelect = common dso_local global i32 0, align 4
@EP_VarSelect = common dso_local global i32 0, align 4
@TK_FUNCTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3WhereExprUsageNN(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TK_COLUMN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = load i32, i32* @EP_FixedCol, align 4
  %15 = call i64 @ExprHasProperty(%struct.TYPE_16__* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @sqlite3WhereGetMask(%struct.TYPE_15__* %18, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %160

23:                                               ; preds = %12, %2
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = load i32, i32* @EP_TokenOnly, align 4
  %26 = load i32, i32* @EP_Leaf, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @ExprHasProperty(%struct.TYPE_16__* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TK_IF_NULL_ROW, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  store i32 0, i32* %3, align 4
  br label %160

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TK_IF_NULL_ROW, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @sqlite3WhereGetMask(%struct.TYPE_15__* %46, i32 %49)
  br label %52

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i32 [ %50, %45 ], [ 0, %51 ]
  store i32 %53, i32* %6, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = icmp ne %struct.TYPE_16__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = call i32 @sqlite3WhereExprUsageNN(%struct.TYPE_15__* %59, %struct.TYPE_16__* %62)
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %58, %52
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = icmp ne %struct.TYPE_16__* %69, null
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = call i32 @sqlite3WhereExprUsageNN(%struct.TYPE_15__* %72, %struct.TYPE_16__* %75)
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %125

86:                                               ; preds = %66
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = load i32, i32* @EP_xIsSelect, align 4
  %89 = call i64 @ExprHasProperty(%struct.TYPE_16__* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = load i32, i32* @EP_VarSelect, align 4
  %94 = call i64 @ExprHasProperty(%struct.TYPE_16__* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @exprSelectUsage(%struct.TYPE_15__* %100, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %124

108:                                              ; preds = %86
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @sqlite3WhereExprListUsage(%struct.TYPE_15__* %115, i64 %119)
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %114, %108
  br label %124

124:                                              ; preds = %123, %99
  br label %125

125:                                              ; preds = %124, %71
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @TK_FUNCTION, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %125
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = icmp ne %struct.TYPE_13__* %135, null
  br i1 %136, label %137, label %158

137:                                              ; preds = %131
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @sqlite3WhereExprListUsage(%struct.TYPE_15__* %138, i64 %144)
  %146 = load i32, i32* %6, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %6, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @sqlite3WhereExprListUsage(%struct.TYPE_15__* %148, i64 %154)
  %156 = load i32, i32* %6, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %137, %131, %125
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %30, %17
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i64 @ExprHasProperty(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sqlite3WhereGetMask(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @exprSelectUsage(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3WhereExprListUsage(%struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
