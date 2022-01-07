; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3SnippetText.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3SnippetText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_11__ = type { i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, i32 (i32*)* }

@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__*, i32, i32, i32, i8*, i8*, i8*, i32*)* @fts3SnippetText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3SnippetText(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6, i8* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_11__*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %20, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %27, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %28, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %29, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %29, align 4
  %57 = call i64 @sqlite3_column_text(i32 %55, i32 %56)
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %22, align 8
  %59 = load i8*, i8** %22, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %9
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %29, align 4
  %66 = call i64 @sqlite3_column_type(i32 %64, i32 %65)
  %67 = load i64, i64* @SQLITE_NULL, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %70, i32* %10, align 4
  br label %262

71:                                               ; preds = %61
  %72 = load i32, i32* @SQLITE_OK, align 4
  store i32 %72, i32* %10, align 4
  br label %262

73:                                               ; preds = %9
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %29, align 4
  %78 = call i32 @sqlite3_column_bytes(i32 %76, i32 %77)
  store i32 %78, i32* %23, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %30, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %22, align 8
  %92 = load i32, i32* %23, align 4
  %93 = call i32 @sqlite3Fts3OpenTokenizer(%struct.TYPE_15__* %87, i32 %90, i8* %91, i32 %92, i32** %31)
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* @SQLITE_OK, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %73
  %98 = load i32, i32* %21, align 4
  store i32 %98, i32* %10, align 4
  br label %262

99:                                               ; preds = %73
  br label %100

100:                                              ; preds = %253, %179, %129, %99
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* @SQLITE_OK, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %255

104:                                              ; preds = %100
  store i32 -1, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, i32 (i32*, i8**, i32*, i32*, i32*, i32*)** %106, align 8
  %108 = load i32*, i32** %31, align 8
  %109 = call i32 %107(i32* %108, i8** %32, i32* %33, i32* %34, i32* %35, i32* %24)
  store i32 %109, i32* %21, align 4
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* @SQLITE_OK, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %104
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* @SQLITE_DONE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load i32*, i32** %19, align 8
  %119 = load i8*, i8** %22, align 8
  %120 = load i32, i32* %25, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = call i32 @fts3StringAppend(i32* %118, i8* %122, i32 -1)
  store i32 %123, i32* %21, align 4
  br label %124

124:                                              ; preds = %117, %113
  br label %255

125:                                              ; preds = %104
  %126 = load i32, i32* %24, align 4
  %127 = load i32, i32* %27, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %100

130:                                              ; preds = %125
  %131 = load i32, i32* %26, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %181, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %23, align 4
  %135 = load i32, i32* %34, align 4
  %136 = sub nsw i32 %134, %135
  store i32 %136, i32* %37, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load i8*, i8** %22, align 8
  %143 = load i32, i32* %34, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i32, i32* %37, align 4
  %147 = call i32 @fts3SnippetShift(%struct.TYPE_13__* %137, i32 %140, i32 %141, i8* %145, i32 %146, i32* %27, i32* %28)
  store i32 %147, i32* %21, align 4
  store i32 1, i32* %26, align 4
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* @SQLITE_OK, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %133
  %152 = load i32, i32* %27, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %13, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154, %151
  %158 = load i32*, i32** %19, align 8
  %159 = load i8*, i8** %18, align 8
  %160 = call i32 @fts3StringAppend(i32* %158, i8* %159, i32 -1)
  store i32 %160, i32* %21, align 4
  br label %170

161:                                              ; preds = %154
  %162 = load i32, i32* %34, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load i32*, i32** %19, align 8
  %166 = load i8*, i8** %22, align 8
  %167 = load i32, i32* %34, align 4
  %168 = call i32 @fts3StringAppend(i32* %165, i8* %166, i32 %167)
  store i32 %168, i32* %21, align 4
  br label %169

169:                                              ; preds = %164, %161
  br label %170

170:                                              ; preds = %169, %157
  br label %171

171:                                              ; preds = %170, %133
  %172 = load i32, i32* %21, align 4
  %173 = load i32, i32* @SQLITE_OK, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* %24, align 4
  %177 = load i32, i32* %27, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175, %171
  br label %100

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %180, %130
  %182 = load i32, i32* %24, align 4
  %183 = load i32, i32* %27, align 4
  %184 = load i32, i32* %15, align 4
  %185 = add nsw i32 %183, %184
  %186 = icmp sge i32 %182, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %181
  %188 = load i32, i32* %14, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i32*, i32** %19, align 8
  %192 = load i8*, i8** %18, align 8
  %193 = call i32 @fts3StringAppend(i32* %191, i8* %192, i32 -1)
  store i32 %193, i32* %21, align 4
  br label %194

194:                                              ; preds = %190, %187
  br label %255

195:                                              ; preds = %181
  %196 = load i32, i32* %28, align 4
  %197 = load i32, i32* %24, align 4
  %198 = load i32, i32* %27, align 4
  %199 = sub nsw i32 %197, %198
  %200 = shl i32 1, %199
  %201 = and i32 %196, %200
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i32
  store i32 %203, i32* %36, align 4
  %204 = load i32, i32* %24, align 4
  %205 = load i32, i32* %27, align 4
  %206 = icmp sgt i32 %204, %205
  br i1 %206, label %207, label %217

207:                                              ; preds = %195
  %208 = load i32*, i32** %19, align 8
  %209 = load i8*, i8** %22, align 8
  %210 = load i32, i32* %25, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i32, i32* %34, align 4
  %214 = load i32, i32* %25, align 4
  %215 = sub nsw i32 %213, %214
  %216 = call i32 @fts3StringAppend(i32* %208, i8* %212, i32 %215)
  store i32 %216, i32* %21, align 4
  br label %217

217:                                              ; preds = %207, %195
  %218 = load i32, i32* %21, align 4
  %219 = load i32, i32* @SQLITE_OK, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %217
  %222 = load i32, i32* %36, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load i32*, i32** %19, align 8
  %226 = load i8*, i8** %16, align 8
  %227 = call i32 @fts3StringAppend(i32* %225, i8* %226, i32 -1)
  store i32 %227, i32* %21, align 4
  br label %228

228:                                              ; preds = %224, %221, %217
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* @SQLITE_OK, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %242

232:                                              ; preds = %228
  %233 = load i32*, i32** %19, align 8
  %234 = load i8*, i8** %22, align 8
  %235 = load i32, i32* %34, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i32, i32* %35, align 4
  %239 = load i32, i32* %34, align 4
  %240 = sub nsw i32 %238, %239
  %241 = call i32 @fts3StringAppend(i32* %233, i8* %237, i32 %240)
  store i32 %241, i32* %21, align 4
  br label %242

242:                                              ; preds = %232, %228
  %243 = load i32, i32* %21, align 4
  %244 = load i32, i32* @SQLITE_OK, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %242
  %247 = load i32, i32* %36, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %246
  %250 = load i32*, i32** %19, align 8
  %251 = load i8*, i8** %17, align 8
  %252 = call i32 @fts3StringAppend(i32* %250, i8* %251, i32 -1)
  store i32 %252, i32* %21, align 4
  br label %253

253:                                              ; preds = %249, %246, %242
  %254 = load i32, i32* %35, align 4
  store i32 %254, i32* %25, align 4
  br label %100

255:                                              ; preds = %194, %124, %100
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 1
  %258 = load i32 (i32*)*, i32 (i32*)** %257, align 8
  %259 = load i32*, i32** %31, align 8
  %260 = call i32 %258(i32* %259)
  %261 = load i32, i32* %21, align 4
  store i32 %261, i32* %10, align 4
  br label %262

262:                                              ; preds = %255, %97, %71, %69
  %263 = load i32, i32* %10, align 4
  ret i32 %263
}

declare dso_local i64 @sqlite3_column_text(i32, i32) #1

declare dso_local i64 @sqlite3_column_type(i32, i32) #1

declare dso_local i32 @sqlite3_column_bytes(i32, i32) #1

declare dso_local i32 @sqlite3Fts3OpenTokenizer(%struct.TYPE_15__*, i32, i8*, i32, i32**) #1

declare dso_local i32 @fts3StringAppend(i32*, i8*, i32) #1

declare dso_local i32 @fts3SnippetShift(%struct.TYPE_13__*, i32, i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
