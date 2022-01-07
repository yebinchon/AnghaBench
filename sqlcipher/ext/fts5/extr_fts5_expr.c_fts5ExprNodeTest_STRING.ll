; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNodeTest_STRING.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_expr.c_fts5ExprNodeTest_STRING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_17__*)* @fts5ExprNodeTest_STRING to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5ExprNodeTest_STRING(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %6, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %23, i64 0
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %7, align 8
  %26 = load i32, i32* @SQLITE_OK, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %67, label %34

34:                                               ; preds = %2
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %37, i64 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %67, label %43

43:                                               ; preds = %34
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %46, i64 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %43
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %58, i64 0
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %55, %43, %34, %2
  %68 = phi i1 [ true, %43 ], [ true, %34 ], [ true, %2 ], [ %66, %55 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %67
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i64 0
  %83 = load i32, i32* %13, align 4
  %84 = call i64 @fts5ExprSynonymRowid(%struct.TYPE_15__* %82, i32 %83, i32 0)
  store i64 %84, i64* %9, align 8
  br label %94

85:                                               ; preds = %67
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %85, %78
  br label %95

95:                                               ; preds = %186, %94
  store i32 1, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %182, %95
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %185

102:                                              ; preds = %96
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %105, i64 %107
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %14, align 8
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %178, %102
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %181

116:                                              ; preds = %110
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i64 %121
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %15, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %116
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i64 @fts5ExprSynonymRowid(%struct.TYPE_15__* %128, i32 %129, i32 0)
  store i64 %130, i64* %16, align 8
  %131 = load i64, i64* %16, align 8
  %132 = load i64, i64* %9, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %178

135:                                              ; preds = %127
  store i32 0, i32* %12, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i64 @fts5ExprSynonymAdvanceto(%struct.TYPE_15__* %136, i32 %137, i64* %9, i32* %8)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  store i32 0, i32* %142, align 8
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %3, align 4
  br label %220

146:                                              ; preds = %135
  br label %177

147:                                              ; preds = %116
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  store %struct.TYPE_14__* %155, %struct.TYPE_14__** %17, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %9, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %166, label %161

161:                                              ; preds = %147
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161, %147
  br label %178

167:                                              ; preds = %161
  store i32 0, i32* %12, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 1
  %172 = call i64 @fts5ExprAdvanceto(%struct.TYPE_14__* %168, i32 %169, i64* %9, i32* %8, i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %3, align 4
  br label %220

176:                                              ; preds = %167
  br label %177

177:                                              ; preds = %176, %146
  br label %178

178:                                              ; preds = %177, %166, %134
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %11, align 4
  br label %110

181:                                              ; preds = %110
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  br label %96

185:                                              ; preds = %96
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %12, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %95, label %189

189:                                              ; preds = %186
  %190 = load i64, i64* %9, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 2
  store i64 %190, i64* %192, align 8
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %195 = call i64 @fts5ExprNearTest(i32* %8, %struct.TYPE_19__* %193, %struct.TYPE_17__* %194)
  %196 = icmp eq i64 0, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %189
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* @SQLITE_OK, align 4
  %200 = icmp eq i32 %198, %199
  br label %201

201:                                              ; preds = %197, %189
  %202 = phi i1 [ false, %189 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %201
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 0
  br label %215

215:                                              ; preds = %210, %201
  %216 = phi i1 [ true, %201 ], [ %214, %210 ]
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  %219 = load i32, i32* %8, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %215, %174, %140
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fts5ExprSynonymRowid(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @fts5ExprSynonymAdvanceto(%struct.TYPE_15__*, i32, i64*, i32*) #1

declare dso_local i64 @fts5ExprAdvanceto(%struct.TYPE_14__*, i32, i64*, i32*, i32*) #1

declare dso_local i64 @fts5ExprNearTest(i32*, %struct.TYPE_19__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
