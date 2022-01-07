; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_whereCombineDisjuncts.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_whereCombineDisjuncts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_19__ = type { i32 }

@WO_EQ = common dso_local global i32 0, align 4
@WO_LT = common dso_local global i32 0, align 4
@WO_LE = common dso_local global i32 0, align 4
@WO_GT = common dso_local global i32 0, align 4
@WO_GE = common dso_local global i32 0, align 4
@TK_EQ = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@TERM_VIRTUAL = common dso_local global i32 0, align 4
@TERM_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_17__*)* @whereCombineDisjuncts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whereCombineDisjuncts(i32* %0, %struct.TYPE_18__* %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %8, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %16, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @WO_EQ, align 4
  %25 = load i32, i32* @WO_LT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @WO_LE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @WO_GT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @WO_GE, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %23, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  br label %208

36:                                               ; preds = %4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WO_EQ, align 4
  %41 = load i32, i32* @WO_LT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @WO_LE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @WO_GT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @WO_GE, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %39, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %208

52:                                               ; preds = %36
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @WO_EQ, align 4
  %55 = load i32, i32* @WO_LT, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @WO_LE, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %53, %58
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %52
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @WO_EQ, align 4
  %65 = load i32, i32* @WO_GT, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @WO_GE, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %63, %68
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %208

73:                                               ; preds = %62, %52
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %80, %73
  %88 = phi i1 [ false, %73 ], [ %86, %80 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %87
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %97, %87
  %105 = phi i1 [ false, %87 ], [ %103, %97 ]
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @sqlite3ExprCompare(i32 0, i64 %112, i64 %117, i32 -1)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %104
  br label %208

121:                                              ; preds = %104
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @sqlite3ExprCompare(i32 0, i64 %126, i64 %131, i32 -1)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %121
  br label %208

135:                                              ; preds = %121
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = sub nsw i32 %137, 1
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %135
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @WO_LT, align 4
  %144 = load i32, i32* @WO_LE, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i32, i32* @WO_LE, align 4
  store i32 %149, i32* %9, align 4
  br label %158

150:                                              ; preds = %141
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @WO_GT, align 4
  %153 = load i32, i32* @WO_GE, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %151, %154
  %156 = call i32 @assert(i32 %155)
  %157 = load i32, i32* @WO_GE, align 4
  store i32 %157, i32* %9, align 4
  br label %158

158:                                              ; preds = %150, %148
  br label %159

159:                                              ; preds = %158, %135
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  store i32* %166, i32** %10, align 8
  %167 = load i32*, i32** %10, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = call %struct.TYPE_19__* @sqlite3ExprDup(i32* %167, %struct.TYPE_14__* %170, i32 0)
  store %struct.TYPE_19__* %171, %struct.TYPE_19__** %11, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %173 = icmp eq %struct.TYPE_19__* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %159
  br label %208

175:                                              ; preds = %159
  %176 = load i32, i32* @TK_EQ, align 4
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %191, %175
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* @WO_EQ, align 4
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* @TK_EQ, align 4
  %182 = sub nsw i32 %180, %181
  %183 = shl i32 %179, %182
  %184 = icmp ne i32 %178, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %177
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* @TK_GE, align 4
  %188 = icmp slt i32 %186, %187
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  br label %191

191:                                              ; preds = %185
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %12, align 4
  br label %177

194:                                              ; preds = %177
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %200 = load i32, i32* @TERM_VIRTUAL, align 4
  %201 = load i32, i32* @TERM_DYNAMIC, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @whereClauseInsert(%struct.TYPE_18__* %198, %struct.TYPE_19__* %199, i32 %202)
  store i32 %203, i32* %13, align 4
  %204 = load i32*, i32** %5, align 8
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %206 = load i32, i32* %13, align 4
  %207 = call i32 @exprAnalyze(i32* %204, %struct.TYPE_18__* %205, i32 %206)
  br label %208

208:                                              ; preds = %194, %174, %134, %120, %72, %51, %35
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3ExprCompare(i32, i64, i64, i32) #1

declare dso_local %struct.TYPE_19__* @sqlite3ExprDup(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @whereClauseInsert(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @exprAnalyze(i32*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
