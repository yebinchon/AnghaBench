; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprCollSeq.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_expr.c_sqlite3ExprCollSeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32* }
%struct.TYPE_23__ = type { i32, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_23__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }

@EP_Generic = common dso_local global i32 0, align 4
@TK_REGISTER = common dso_local global i32 0, align 4
@TK_AGG_COLUMN = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i32 0, align 4
@TK_TRIGGER = common dso_local global i32 0, align 4
@TK_CAST = common dso_local global i32 0, align 4
@TK_UPLUS = common dso_local global i32 0, align 4
@TK_COLLATE = common dso_local global i32 0, align 4
@EP_Collate = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sqlite3ExprCollSeq(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %7, align 8
  br label %17

17:                                               ; preds = %212, %89, %2
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %19 = icmp ne %struct.TYPE_23__* %18, null
  br i1 %19, label %20, label %213

20:                                               ; preds = %17
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EP_Generic, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %213

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @TK_REGISTER, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @TK_AGG_COLUMN, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @TK_COLUMN, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @TK_TRIGGER, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %47, %43, %39
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = icmp ne %struct.TYPE_16__* %55, null
  br i1 %56, label %57, label %81

57:                                               ; preds = %51
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %10, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @ENC(i32* %76)
  %78 = load i8*, i8** %10, align 8
  %79 = call i32* @sqlite3FindCollSeq(i32* %75, i32 %77, i8* %78, i32 0)
  store i32* %79, i32** %6, align 8
  br label %80

80:                                               ; preds = %63, %57
  br label %213

81:                                               ; preds = %51, %47
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @TK_CAST, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @TK_UPLUS, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85, %81
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 6
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %91, align 8
  store %struct.TYPE_23__* %92, %struct.TYPE_23__** %7, align 8
  br label %17

93:                                               ; preds = %85
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @TK_COLLATE, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @ENC(i32* %99)
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32* @sqlite3GetCollSeq(%struct.TYPE_22__* %98, i32 %100, i32 0, i32 %104)
  store i32* %105, i32** %6, align 8
  br label %213

106:                                              ; preds = %93
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @EP_Collate, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %211

113:                                              ; preds = %106
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 6
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %115, align 8
  %117 = icmp ne %struct.TYPE_23__* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %113
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @EP_Collate, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %118
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %129, align 8
  store %struct.TYPE_23__* %130, %struct.TYPE_23__** %7, align 8
  br label %210

131:                                              ; preds = %118, %113
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %133, align 8
  store %struct.TYPE_23__* %134, %struct.TYPE_23__** %11, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %137, align 8
  %139 = icmp eq %struct.TYPE_20__* %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %131
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  %144 = icmp eq %struct.TYPE_23__* %143, null
  br label %145

145:                                              ; preds = %140, %131
  %146 = phi i1 [ true, %131 ], [ %144, %140 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %151, align 8
  %153 = icmp ne %struct.TYPE_20__* %152, null
  br i1 %153, label %154, label %208

154:                                              ; preds = %145
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %156 = load i32, i32* @EP_xIsSelect, align 4
  %157 = call i64 @ExprHasProperty(%struct.TYPE_23__* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i64 @ALWAYS(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %208

163:                                              ; preds = %154
  store i32 0, i32* %12, align 4
  br label %164

164:                                              ; preds = %204, %163
  %165 = load i32, i32* %12, align 4
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %165, %171
  %173 = zext i1 %172 to i32
  %174 = call i64 @ALWAYS(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %207

176:                                              ; preds = %164
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %186, align 8
  %188 = load i32, i32* @EP_Collate, align 4
  %189 = call i64 @ExprHasProperty(%struct.TYPE_23__* %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %176
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %201, align 8
  store %struct.TYPE_23__* %202, %struct.TYPE_23__** %11, align 8
  br label %207

203:                                              ; preds = %176
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %12, align 4
  br label %164

207:                                              ; preds = %191, %164
  br label %208

208:                                              ; preds = %207, %154, %145
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_23__* %209, %struct.TYPE_23__** %7, align 8
  br label %210

210:                                              ; preds = %208, %127
  br label %212

211:                                              ; preds = %106
  br label %213

212:                                              ; preds = %210
  br label %17

213:                                              ; preds = %211, %97, %80, %30, %17
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %215 = load i32*, i32** %6, align 8
  %216 = call i64 @sqlite3CheckCollSeq(%struct.TYPE_22__* %214, i32* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  store i32* null, i32** %6, align 8
  br label %219

219:                                              ; preds = %218, %213
  %220 = load i32*, i32** %6, align 8
  ret i32* %220
}

declare dso_local i32* @sqlite3FindCollSeq(i32*, i32, i8*, i32) #1

declare dso_local i32 @ENC(i32*) #1

declare dso_local i32* @sqlite3GetCollSeq(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @sqlite3CheckCollSeq(%struct.TYPE_22__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
