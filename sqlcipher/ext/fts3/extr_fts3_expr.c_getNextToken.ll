; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_expr.c_getNextToken.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_expr.c_getNextToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, i32 (i32*)* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i8*, i32, i32 }

@sqlite3_fts3_enable_parentheses = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@FTSQUERY_PHRASE = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i8*, i32, %struct.TYPE_15__**, i32*)* @getNextToken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getNextToken(%struct.TYPE_13__* %0, i32 %1, i8* %2, i32 %3, %struct.TYPE_15__** %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_15__** %4, %struct.TYPE_15__*** %11, align 8
  store i32* %5, i32** %12, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %13, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %18, align 4
  br label %31

31:                                               ; preds = %65, %6
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  %36 = load i64, i64* @sqlite3_fts3_enable_parentheses, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %18, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 40
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 41
  br i1 %53, label %54, label %55

54:                                               ; preds = %46, %38
  br label %68

55:                                               ; preds = %46, %35
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 34
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %68

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %18, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %18, align 4
  br label %31

68:                                               ; preds = %63, %54, %31
  %69 = load i32, i32* %18, align 4
  %70 = load i32*, i32** %12, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %18, align 4
  %77 = call i32 @sqlite3Fts3OpenTokenizer(%struct.TYPE_12__* %71, i32 %74, i8* %75, i32 %76, i32** %16)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @SQLITE_OK, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %243

81:                                               ; preds = %68
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, i32 (i32*, i8**, i32*, i32*, i32*, i32*)** %83, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = call i32 %84(i32* %85, i8** %19, i32* %20, i32* %21, i32* %22, i32* %23)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @SQLITE_OK, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %227

90:                                               ; preds = %81
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 32, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %24, align 4
  %95 = load i32, i32* %24, align 4
  %96 = call i64 @fts3MallocZero(i32 %95)
  %97 = inttoptr i64 %96 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %97, %struct.TYPE_15__** %17, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %99 = icmp ne %struct.TYPE_15__* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %90
  %101 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %101, i32* %15, align 4
  br label %224

102:                                              ; preds = %90
  %103 = load i32, i32* @FTSQUERY_PHRASE, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i64 1
  %108 = bitcast %struct.TYPE_15__* %107 to %struct.TYPE_14__*
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %110, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %20, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  store i32 %120, i32* %127, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i64 1
  %132 = bitcast %struct.TYPE_14__* %131 to i8*
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  store i8* %132, i8** %139, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load i8*, i8** %19, align 8
  %149 = load i32, i32* %20, align 4
  %150 = call i32 @memcpy(i8* %147, i8* %148, i32 %149)
  %151 = load i32, i32* %22, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %172

154:                                              ; preds = %102
  %155 = load i8*, i8** %9, align 8
  %156 = load i32, i32* %22, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 42
  br i1 %161, label %162, label %172

162:                                              ; preds = %154
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  store i32 1, i32* %169, align 8
  %170 = load i32, i32* %22, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %22, align 4
  br label %172

172:                                              ; preds = %162, %154, %102
  br label %173

173:                                              ; preds = %172, %222
  %174 = load i64, i64* @sqlite3_fts3_enable_parentheses, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %193, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %21, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %176
  %180 = load i8*, i8** %9, align 8
  %181 = load i32, i32* %21, align 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 45
  br i1 %187, label %188, label %193

188:                                              ; preds = %179
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  store i32 1, i32* %190, align 8
  %191 = load i32, i32* %21, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %21, align 4
  br label %222

193:                                              ; preds = %179, %176, %173
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %220

198:                                              ; preds = %193
  %199 = load i32, i32* %21, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %220

201:                                              ; preds = %198
  %202 = load i8*, i8** %9, align 8
  %203 = load i32, i32* %21, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 94
  br i1 %209, label %210, label %220

210:                                              ; preds = %201
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i64 0
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 3
  store i32 1, i32* %217, align 4
  %218 = load i32, i32* %21, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %21, align 4
  br label %221

220:                                              ; preds = %201, %198, %193
  br label %223

221:                                              ; preds = %210
  br label %222

222:                                              ; preds = %221, %188
  br label %173

223:                                              ; preds = %220
  br label %224

224:                                              ; preds = %223, %100
  %225 = load i32, i32* %22, align 4
  %226 = load i32*, i32** %12, align 8
  store i32 %225, i32* %226, align 4
  br label %237

227:                                              ; preds = %81
  %228 = load i32, i32* %18, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* @SQLITE_DONE, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i32, i32* @SQLITE_OK, align 4
  store i32 %235, i32* %15, align 4
  br label %236

236:                                              ; preds = %234, %230, %227
  br label %237

237:                                              ; preds = %236, %224
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 1
  %240 = load i32 (i32*)*, i32 (i32*)** %239, align 8
  %241 = load i32*, i32** %16, align 8
  %242 = call i32 %240(i32* %241)
  br label %243

243:                                              ; preds = %237, %68
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %245 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %11, align 8
  store %struct.TYPE_15__* %244, %struct.TYPE_15__** %245, align 8
  %246 = load i32, i32* %15, align 4
  ret i32 %246
}

declare dso_local i32 @sqlite3Fts3OpenTokenizer(%struct.TYPE_12__*, i32, i8*, i32, i32**) #1

declare dso_local i64 @fts3MallocZero(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
