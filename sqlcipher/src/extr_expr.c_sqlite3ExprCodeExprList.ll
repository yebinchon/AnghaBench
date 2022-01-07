; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprCodeExprList.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprCodeExprList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { %struct.TYPE_13__, i64, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }

@SQLITE_ECEL_DUP = common dso_local global i32 0, align 4
@OP_Copy = common dso_local global i32 0, align 4
@OP_SCopy = common dso_local global i32 0, align 4
@SQLITE_ECEL_FACTOR = common dso_local global i32 0, align 4
@SQLITE_ECEL_REF = common dso_local global i32 0, align 4
@SQLITE_ECEL_OMITREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3ExprCodeExprList(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ExprList_item*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @SQLITE_ECEL_DUP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @OP_Copy, align 4
  br label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @OP_SCopy, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %16, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = icmp ne %struct.TYPE_16__* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %14, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = call i32 @ConstFactorOk(%struct.TYPE_15__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %28
  %54 = load i32, i32* @SQLITE_ECEL_FACTOR, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %53, %28
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load %struct.ExprList_item*, %struct.ExprList_item** %60, align 8
  store %struct.ExprList_item* %61, %struct.ExprList_item** %11, align 8
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %183, %58
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %188

66:                                               ; preds = %62
  %67 = load %struct.ExprList_item*, %struct.ExprList_item** %11, align 8
  %68 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %17, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @SQLITE_ECEL_REF, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %66
  %75 = load %struct.ExprList_item*, %struct.ExprList_item** %11, align 8
  %76 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %13, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %74
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @SQLITE_ECEL_OMITREF, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %14, align 4
  br label %102

91:                                               ; preds = %81
  %92 = load i32*, i32** %16, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %94, %95
  %97 = sub nsw i32 %96, 1
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %98, %99
  %101 = call i32 @sqlite3VdbeAddOp2(i32* %92, i32 %93, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %91, %86
  br label %182

103:                                              ; preds = %74, %66
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @SQLITE_ECEL_FACTOR, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load i32*, i32** %17, align 8
  %110 = call i64 @sqlite3ExprIsConstantNotJoin(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = load i32*, i32** %17, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i32 @sqlite3ExprCodeAtInit(%struct.TYPE_15__* %113, i32* %114, i32 %117)
  br label %181

119:                                              ; preds = %108, %103
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = load i32*, i32** %17, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %122, %123
  %125 = call i32 @sqlite3ExprCodeTarget(%struct.TYPE_15__* %120, i32* %121, i32 %124)
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %127, %128
  %130 = icmp ne i32 %126, %129
  br i1 %130, label %131, label %180

131:                                              ; preds = %119
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* @OP_Copy, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %171

135:                                              ; preds = %131
  %136 = load i32*, i32** %16, align 8
  %137 = call %struct.TYPE_14__* @sqlite3VdbeGetOp(i32* %136, i32 -1)
  store %struct.TYPE_14__* %137, %struct.TYPE_14__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @OP_Copy, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %171

142:                                              ; preds = %135
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %145, %148
  %150 = add nsw i32 %149, 1
  %151 = load i32, i32* %18, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %171

153:                                              ; preds = %142
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %156, %159
  %161 = add nsw i32 %160, 1
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %162, %163
  %165 = icmp eq i32 %161, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %153
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  br label %179

171:                                              ; preds = %153, %142, %135, %131
  %172 = load i32*, i32** %16, align 8
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %175, %176
  %178 = call i32 @sqlite3VdbeAddOp2(i32* %172, i32 %173, i32 %174, i32 %177)
  br label %179

179:                                              ; preds = %171, %166
  br label %180

180:                                              ; preds = %179, %119
  br label %181

181:                                              ; preds = %180, %112
  br label %182

182:                                              ; preds = %181, %102
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %12, align 4
  %186 = load %struct.ExprList_item*, %struct.ExprList_item** %11, align 8
  %187 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %186, i32 1
  store %struct.ExprList_item* %187, %struct.ExprList_item** %11, align 8
  br label %62

188:                                              ; preds = %62
  %189 = load i32, i32* %14, align 4
  ret i32 %189
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ConstFactorOk(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i64 @sqlite3ExprIsConstantNotJoin(i32*) #1

declare dso_local i32 @sqlite3ExprCodeAtInit(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @sqlite3ExprCodeTarget(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local %struct.TYPE_14__* @sqlite3VdbeGetOp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
