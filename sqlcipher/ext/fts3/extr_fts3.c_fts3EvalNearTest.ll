; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalNearTest.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalNearTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTSQUERY_NEAR = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @fts3EvalNearTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3EvalNearTest(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %5, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SQLITE_OK, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %216

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FTSQUERY_NEAR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %216

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = icmp eq %struct.TYPE_10__* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FTSQUERY_NEAR, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %216

38:                                               ; preds = %30, %25
  store i32 0, i32* %7, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %6, align 8
  br label %40

40:                                               ; preds = %69, %38
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %73

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %45
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %6, align 8
  br label %40

73:                                               ; preds = %40
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = mul nsw i32 %84, 2
  %86 = call i8* @sqlite3_malloc64(i32 %85)
  store i8* %86, i8** %8, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %73
  %90 = load i32, i32* @SQLITE_NOMEM, align 4
  %91 = load i32*, i32** %4, align 8
  store i32 %90, i32* %91, align 4
  store i32 0, i32* %5, align 4
  br label %213

92:                                               ; preds = %73
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %9, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %10, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %6, align 8
  br label %107

107:                                              ; preds = %134, %92
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = icmp ne %struct.TYPE_10__* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @FTSQUERY_NEAR, align 8
  %118 = icmp eq i64 %116, %117
  br label %119

119:                                              ; preds = %113, %110, %107
  %120 = phi i1 [ false, %110 ], [ false, %107 ], [ %118, %113 ]
  br i1 %120, label %121, label %138

121:                                              ; preds = %119
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  store %struct.TYPE_9__* %126, %struct.TYPE_9__** %11, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i8*, i8** %8, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %133 = call i32 @fts3EvalNearTrim(i32 %130, i8* %131, i8** %9, i32* %10, %struct.TYPE_9__* %132)
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %121
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %6, align 8
  br label %107

138:                                              ; preds = %119
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  store i8* %146, i8** %9, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %10, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 5
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  store %struct.TYPE_10__* %156, %struct.TYPE_10__** %6, align 8
  br label %157

157:                                              ; preds = %208, %138
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %159 = icmp ne %struct.TYPE_10__* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br label %163

163:                                              ; preds = %160, %157
  %164 = phi i1 [ false, %157 ], [ %162, %160 ]
  br i1 %164, label %165, label %212

165:                                              ; preds = %163
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = icmp ne %struct.TYPE_10__* %168, null
  br i1 %169, label %170, label %178

170:                                              ; preds = %165
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 5
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %177 = icmp eq %struct.TYPE_10__* %175, %176
  br label %178

178:                                              ; preds = %170, %165
  %179 = phi i1 [ false, %165 ], [ %177, %170 ]
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  store i32 %186, i32* %13, align 4
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @FTSQUERY_NEAR, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %178
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  br label %202

198:                                              ; preds = %178
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  br label %202

202:                                              ; preds = %198, %192
  %203 = phi %struct.TYPE_9__* [ %197, %192 ], [ %201, %198 ]
  store %struct.TYPE_9__* %203, %struct.TYPE_9__** %14, align 8
  %204 = load i32, i32* %13, align 4
  %205 = load i8*, i8** %8, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %207 = call i32 @fts3EvalNearTrim(i32 %204, i8* %205, i8** %9, i32* %10, %struct.TYPE_9__* %206)
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %202
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 5
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  store %struct.TYPE_10__* %211, %struct.TYPE_10__** %6, align 8
  br label %157

212:                                              ; preds = %163
  br label %213

213:                                              ; preds = %212, %89
  %214 = load i8*, i8** %8, align 8
  %215 = call i32 @sqlite3_free(i8* %214)
  br label %216

216:                                              ; preds = %213, %30, %19, %2
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @fts3EvalNearTrim(i32, i8*, i8**, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
