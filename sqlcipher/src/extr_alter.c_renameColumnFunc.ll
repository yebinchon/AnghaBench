; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_alter.c_renameColumnFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_alter.c_renameColumnFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_48__ = type { i64, i64 }
%struct.TYPE_49__ = type { i32, i32, %struct.TYPE_51__*, %struct.TYPE_46__, i32, i32, %struct.TYPE_40__* }
%struct.TYPE_51__ = type { i32, i32, i8*, %struct.TYPE_42__*, %struct.TYPE_41__*, i32, %struct.TYPE_47__*, i32* }
%struct.TYPE_42__ = type { i32, i8*, %struct.TYPE_43__*, %struct.TYPE_42__* }
%struct.TYPE_43__ = type { i32, i8* }
%struct.TYPE_41__ = type { i32, i32, %struct.TYPE_41__* }
%struct.TYPE_47__ = type { i8* }
%struct.TYPE_46__ = type { %struct.TYPE_49__* }
%struct.TYPE_40__ = type { i32, i64, %struct.TYPE_44__*, %struct.TYPE_51__*, %struct.TYPE_41__*, %struct.TYPE_51__* }
%struct.TYPE_44__ = type { i32, %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i32*, i32, %struct.TYPE_45__*, i64, %struct.TYPE_50__* }
%struct.TYPE_45__ = type { i32* }

@renameColumnExprCb = common dso_local global i32 0, align 4
@renameColumnSelectCb = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @renameColumnFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renameColumnFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_48__*, align 8
  %8 = alloca %struct.TYPE_49__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_40__, align 8
  %19 = alloca %struct.TYPE_49__, align 8
  %20 = alloca %struct.TYPE_41__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_51__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_42__*, align 8
  %27 = alloca %struct.TYPE_50__*, align 8
  %28 = alloca %struct.TYPE_51__*, align 8
  %29 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call %struct.TYPE_48__* @sqlite3_context_db_handle(i32* %30)
  store %struct.TYPE_48__* %31, %struct.TYPE_48__** %7, align 8
  %32 = load i32**, i32*** %6, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @sqlite3_value_text(i32* %34)
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %9, align 8
  %37 = load i32**, i32*** %6, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @sqlite3_value_text(i32* %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %10, align 8
  %42 = load i32**, i32*** %6, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 4
  %44 = load i32*, i32** %43, align 8
  %45 = call i64 @sqlite3_value_text(i32* %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %11, align 8
  %47 = load i32**, i32*** %6, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 5
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @sqlite3_value_int(i32* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32**, i32*** %6, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 6
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @sqlite3_value_text(i32* %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %13, align 8
  %56 = load i32**, i32*** %6, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 7
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @sqlite3_value_int(i32* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32**, i32*** %6, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 8
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @sqlite3_value_int(i32* %62)
  store i32 %63, i32* %15, align 4
  %64 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %23, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @UNUSED_PARAMETER(i32 %67)
  %69 = load i8*, i8** %9, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %3
  br label %484

72:                                               ; preds = %3
  %73 = load i8*, i8** %11, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %484

76:                                               ; preds = %72
  %77 = load i8*, i8** %13, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %484

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %484

84:                                               ; preds = %80
  %85 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %86 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_48__* %85)
  %87 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call %struct.TYPE_51__* @sqlite3FindTable(%struct.TYPE_48__* %87, i8* %88, i8* %89)
  store %struct.TYPE_51__* %90, %struct.TYPE_51__** %22, align 8
  %91 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %92 = icmp eq %struct.TYPE_51__* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %96 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93, %84
  %100 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %101 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_48__* %100)
  br label %484

102:                                              ; preds = %93
  %103 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %104 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %103, i32 0, i32 6
  %105 = load %struct.TYPE_47__*, %struct.TYPE_47__** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %16, align 8
  %111 = call i32 @memset(%struct.TYPE_49__* %8, i32 0, i32 40)
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %114 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %102
  br label %120

118:                                              ; preds = %102
  %119 = load i32, i32* %12, align 4
  br label %120

120:                                              ; preds = %118, %117
  %121 = phi i32 [ -1, %117 ], [ %119, %118 ]
  %122 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %8, i32 0, i32 0
  store i32 %121, i32* %122, align 8
  %123 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @renameParseSql(%struct.TYPE_40__* %18, i8* %125, i32 0, %struct.TYPE_48__* %126, i8* %127, i32 %128)
  store i32 %129, i32* %17, align 4
  %130 = call i32 @memset(%struct.TYPE_49__* %19, i32 0, i32 40)
  %131 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %19, i32 0, i32 6
  store %struct.TYPE_40__* %18, %struct.TYPE_40__** %131, align 8
  %132 = load i32, i32* @renameColumnExprCb, align 4
  %133 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %19, i32 0, i32 5
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* @renameColumnSelectCb, align 4
  %135 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %19, i32 0, i32 4
  store i32 %134, i32* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %19, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %136, i32 0, i32 0
  store %struct.TYPE_49__* %8, %struct.TYPE_49__** %137, align 8
  %138 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %139 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %8, i32 0, i32 2
  store %struct.TYPE_51__* %138, %struct.TYPE_51__** %139, align 8
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* @SQLITE_OK, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %120
  br label %451

144:                                              ; preds = %120
  %145 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 5
  %146 = load %struct.TYPE_51__*, %struct.TYPE_51__** %145, align 8
  %147 = icmp ne %struct.TYPE_51__* %146, null
  br i1 %147, label %148, label %342

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 5
  %150 = load %struct.TYPE_51__*, %struct.TYPE_51__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %150, i32 0, i32 7
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %24, align 8
  %153 = load i32*, i32** %24, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %186

155:                                              ; preds = %148
  %156 = load i32, i32* @SQLITE_OK, align 4
  %157 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 0
  store i32 %156, i32* %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 5
  %159 = load %struct.TYPE_51__*, %struct.TYPE_51__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %159, i32 0, i32 7
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @sqlite3SelectPrep(%struct.TYPE_40__* %18, i32* %161, i32 0)
  %163 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %155
  %168 = load i32, i32* @SQLITE_NOMEM, align 4
  br label %172

169:                                              ; preds = %155
  %170 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  br label %172

172:                                              ; preds = %169, %167
  %173 = phi i32 [ %168, %167 ], [ %171, %169 ]
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* @SQLITE_OK, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32*, i32** %24, align 8
  %179 = call i32 @sqlite3WalkSelect(%struct.TYPE_49__* %19, i32* %178)
  br label %180

180:                                              ; preds = %177, %172
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* @SQLITE_OK, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  br label %451

185:                                              ; preds = %180
  br label %341

186:                                              ; preds = %148
  %187 = load i8*, i8** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 5
  %189 = load %struct.TYPE_51__*, %struct.TYPE_51__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %189, i32 0, i32 2
  %191 = load i8*, i8** %190, align 8
  %192 = call i64 @sqlite3_stricmp(i8* %187, i8* %191)
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %25, align 4
  %194 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 5
  %195 = load %struct.TYPE_51__*, %struct.TYPE_51__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %195, i32 0, i32 7
  %197 = load i32*, i32** %196, align 8
  %198 = icmp eq i32* %197, null
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  %201 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 5
  %202 = load %struct.TYPE_51__*, %struct.TYPE_51__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %8, i32 0, i32 2
  store %struct.TYPE_51__* %202, %struct.TYPE_51__** %203, align 8
  %204 = load i32, i32* %25, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %264

206:                                              ; preds = %186
  %207 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 5
  %208 = load %struct.TYPE_51__*, %struct.TYPE_51__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %208, i32 0, i32 6
  %210 = load %struct.TYPE_47__*, %struct.TYPE_47__** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @renameTokenFind(%struct.TYPE_40__* %18, %struct.TYPE_49__* %8, i8* %215)
  %217 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %8, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %206
  %221 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 5
  %222 = load %struct.TYPE_51__*, %struct.TYPE_51__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %222, i32 0, i32 1
  %224 = bitcast i32* %223 to i8*
  %225 = call i32 @renameTokenFind(%struct.TYPE_40__* %18, %struct.TYPE_49__* %8, i8* %224)
  br label %226

226:                                              ; preds = %220, %206
  %227 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 5
  %228 = load %struct.TYPE_51__*, %struct.TYPE_51__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @sqlite3WalkExprList(%struct.TYPE_49__* %19, i32 %230)
  %232 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 5
  %233 = load %struct.TYPE_51__*, %struct.TYPE_51__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %233, i32 0, i32 4
  %235 = load %struct.TYPE_41__*, %struct.TYPE_41__** %234, align 8
  store %struct.TYPE_41__* %235, %struct.TYPE_41__** %20, align 8
  br label %236

236:                                              ; preds = %244, %226
  %237 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %238 = icmp ne %struct.TYPE_41__* %237, null
  br i1 %238, label %239, label %248

239:                                              ; preds = %236
  %240 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %241 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @sqlite3WalkExprList(%struct.TYPE_49__* %19, i32 %242)
  br label %244

244:                                              ; preds = %239
  %245 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %246 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_41__*, %struct.TYPE_41__** %246, align 8
  store %struct.TYPE_41__* %247, %struct.TYPE_41__** %20, align 8
  br label %236

248:                                              ; preds = %236
  %249 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 4
  %250 = load %struct.TYPE_41__*, %struct.TYPE_41__** %249, align 8
  store %struct.TYPE_41__* %250, %struct.TYPE_41__** %20, align 8
  br label %251

251:                                              ; preds = %259, %248
  %252 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %253 = icmp ne %struct.TYPE_41__* %252, null
  br i1 %253, label %254, label %263

254:                                              ; preds = %251
  %255 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %256 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @sqlite3WalkExprList(%struct.TYPE_49__* %19, i32 %257)
  br label %259

259:                                              ; preds = %254
  %260 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %261 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_41__*, %struct.TYPE_41__** %261, align 8
  store %struct.TYPE_41__* %262, %struct.TYPE_41__** %20, align 8
  br label %251

263:                                              ; preds = %251
  br label %264

264:                                              ; preds = %263, %186
  %265 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 5
  %266 = load %struct.TYPE_51__*, %struct.TYPE_51__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %266, i32 0, i32 3
  %268 = load %struct.TYPE_42__*, %struct.TYPE_42__** %267, align 8
  store %struct.TYPE_42__* %268, %struct.TYPE_42__** %26, align 8
  br label %269

269:                                              ; preds = %336, %264
  %270 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %271 = icmp ne %struct.TYPE_42__* %270, null
  br i1 %271, label %272, label %340

272:                                              ; preds = %269
  store i32 0, i32* %21, align 4
  br label %273

273:                                              ; preds = %332, %272
  %274 = load i32, i32* %21, align 4
  %275 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %276 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = icmp slt i32 %274, %277
  br i1 %278, label %279, label %335

279:                                              ; preds = %273
  %280 = load i32, i32* %25, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %302

282:                                              ; preds = %279
  %283 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %284 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %283, i32 0, i32 2
  %285 = load %struct.TYPE_43__*, %struct.TYPE_43__** %284, align 8
  %286 = load i32, i32* %21, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %12, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %302

293:                                              ; preds = %282
  %294 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %295 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_43__*, %struct.TYPE_43__** %295, align 8
  %297 = load i32, i32* %21, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %296, i64 %298
  %300 = bitcast %struct.TYPE_43__* %299 to i8*
  %301 = call i32 @renameTokenFind(%struct.TYPE_40__* %18, %struct.TYPE_49__* %8, i8* %300)
  br label %302

302:                                              ; preds = %293, %282, %279
  %303 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %304 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %303, i32 0, i32 1
  %305 = load i8*, i8** %304, align 8
  %306 = load i8*, i8** %11, align 8
  %307 = call i64 @sqlite3_stricmp(i8* %305, i8* %306)
  %308 = icmp eq i64 0, %307
  br i1 %308, label %309, label %331

309:                                              ; preds = %302
  %310 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %311 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_43__*, %struct.TYPE_43__** %311, align 8
  %313 = load i32, i32* %21, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %315, i32 0, i32 1
  %317 = load i8*, i8** %316, align 8
  %318 = load i8*, i8** %16, align 8
  %319 = call i64 @sqlite3_stricmp(i8* %317, i8* %318)
  %320 = icmp eq i64 0, %319
  br i1 %320, label %321, label %331

321:                                              ; preds = %309
  %322 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %323 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %322, i32 0, i32 2
  %324 = load %struct.TYPE_43__*, %struct.TYPE_43__** %323, align 8
  %325 = load i32, i32* %21, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %327, i32 0, i32 1
  %329 = load i8*, i8** %328, align 8
  %330 = call i32 @renameTokenFind(%struct.TYPE_40__* %18, %struct.TYPE_49__* %8, i8* %329)
  br label %331

331:                                              ; preds = %321, %309, %302
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %21, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %21, align 4
  br label %273

335:                                              ; preds = %273
  br label %336

336:                                              ; preds = %335
  %337 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %338 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %337, i32 0, i32 3
  %339 = load %struct.TYPE_42__*, %struct.TYPE_42__** %338, align 8
  store %struct.TYPE_42__* %339, %struct.TYPE_42__** %26, align 8
  br label %269

340:                                              ; preds = %269
  br label %341

341:                                              ; preds = %340, %185
  br label %440

342:                                              ; preds = %144
  %343 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 4
  %344 = load %struct.TYPE_41__*, %struct.TYPE_41__** %343, align 8
  %345 = icmp ne %struct.TYPE_41__* %344, null
  br i1 %345, label %346, label %357

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 4
  %348 = load %struct.TYPE_41__*, %struct.TYPE_41__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @sqlite3WalkExprList(%struct.TYPE_49__* %19, i32 %350)
  %352 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 4
  %353 = load %struct.TYPE_41__*, %struct.TYPE_41__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @sqlite3WalkExpr(%struct.TYPE_49__* %19, i32 %355)
  br label %439

357:                                              ; preds = %342
  %358 = load i32, i32* %15, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %361

360:                                              ; preds = %357
  br label %363

361:                                              ; preds = %357
  %362 = load i8*, i8** %10, align 8
  br label %363

363:                                              ; preds = %361, %360
  %364 = phi i8* [ null, %360 ], [ %362, %361 ]
  %365 = call i32 @renameResolveTrigger(%struct.TYPE_40__* %18, i8* %364)
  store i32 %365, i32* %17, align 4
  %366 = load i32, i32* %17, align 4
  %367 = load i32, i32* @SQLITE_OK, align 4
  %368 = icmp ne i32 %366, %367
  br i1 %368, label %369, label %370

369:                                              ; preds = %363
  br label %451

370:                                              ; preds = %363
  %371 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 2
  %372 = load %struct.TYPE_44__*, %struct.TYPE_44__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %372, i32 0, i32 1
  %374 = load %struct.TYPE_50__*, %struct.TYPE_50__** %373, align 8
  store %struct.TYPE_50__* %374, %struct.TYPE_50__** %27, align 8
  br label %375

375:                                              ; preds = %419, %370
  %376 = load %struct.TYPE_50__*, %struct.TYPE_50__** %27, align 8
  %377 = icmp ne %struct.TYPE_50__* %376, null
  br i1 %377, label %378, label %423

378:                                              ; preds = %375
  %379 = load %struct.TYPE_50__*, %struct.TYPE_50__** %27, align 8
  %380 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %379, i32 0, i32 3
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %418

383:                                              ; preds = %378
  %384 = load %struct.TYPE_50__*, %struct.TYPE_50__** %27, align 8
  %385 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %384, i32 0, i32 3
  %386 = load i64, i64* %385, align 8
  %387 = load i8*, i8** %10, align 8
  %388 = call %struct.TYPE_51__* @sqlite3LocateTable(%struct.TYPE_40__* %18, i32 0, i64 %386, i8* %387)
  store %struct.TYPE_51__* %388, %struct.TYPE_51__** %28, align 8
  %389 = load %struct.TYPE_51__*, %struct.TYPE_51__** %28, align 8
  %390 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %391 = icmp eq %struct.TYPE_51__* %389, %390
  br i1 %391, label %392, label %417

392:                                              ; preds = %383
  %393 = load %struct.TYPE_50__*, %struct.TYPE_50__** %27, align 8
  %394 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %393, i32 0, i32 2
  %395 = load %struct.TYPE_45__*, %struct.TYPE_45__** %394, align 8
  %396 = icmp ne %struct.TYPE_45__* %395, null
  br i1 %396, label %397, label %406

397:                                              ; preds = %392
  %398 = load %struct.TYPE_50__*, %struct.TYPE_50__** %27, align 8
  %399 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %398, i32 0, i32 2
  %400 = load %struct.TYPE_45__*, %struct.TYPE_45__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %400, i32 0, i32 0
  %402 = load i32*, i32** %401, align 8
  store i32* %402, i32** %29, align 8
  %403 = load i32*, i32** %29, align 8
  %404 = load i8*, i8** %16, align 8
  %405 = call i32 @renameColumnElistNames(%struct.TYPE_40__* %18, %struct.TYPE_49__* %8, i32* %403, i8* %404)
  br label %406

406:                                              ; preds = %397, %392
  %407 = load %struct.TYPE_50__*, %struct.TYPE_50__** %27, align 8
  %408 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  %410 = load i8*, i8** %16, align 8
  %411 = call i32 @renameColumnIdlistNames(%struct.TYPE_40__* %18, %struct.TYPE_49__* %8, i32 %409, i8* %410)
  %412 = load %struct.TYPE_50__*, %struct.TYPE_50__** %27, align 8
  %413 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %412, i32 0, i32 0
  %414 = load i32*, i32** %413, align 8
  %415 = load i8*, i8** %16, align 8
  %416 = call i32 @renameColumnElistNames(%struct.TYPE_40__* %18, %struct.TYPE_49__* %8, i32* %414, i8* %415)
  br label %417

417:                                              ; preds = %406, %383
  br label %418

418:                                              ; preds = %417, %378
  br label %419

419:                                              ; preds = %418
  %420 = load %struct.TYPE_50__*, %struct.TYPE_50__** %27, align 8
  %421 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %420, i32 0, i32 4
  %422 = load %struct.TYPE_50__*, %struct.TYPE_50__** %421, align 8
  store %struct.TYPE_50__* %422, %struct.TYPE_50__** %27, align 8
  br label %375

423:                                              ; preds = %375
  %424 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 3
  %425 = load %struct.TYPE_51__*, %struct.TYPE_51__** %424, align 8
  %426 = load %struct.TYPE_51__*, %struct.TYPE_51__** %22, align 8
  %427 = icmp eq %struct.TYPE_51__* %425, %426
  br i1 %427, label %428, label %435

428:                                              ; preds = %423
  %429 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 2
  %430 = load %struct.TYPE_44__*, %struct.TYPE_44__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = load i8*, i8** %16, align 8
  %434 = call i32 @renameColumnIdlistNames(%struct.TYPE_40__* %18, %struct.TYPE_49__* %8, i32 %432, i8* %433)
  br label %435

435:                                              ; preds = %428, %423
  %436 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 2
  %437 = load %struct.TYPE_44__*, %struct.TYPE_44__** %436, align 8
  %438 = call i32 @renameWalkTrigger(%struct.TYPE_49__* %19, %struct.TYPE_44__* %437)
  br label %439

439:                                              ; preds = %435, %346
  br label %440

440:                                              ; preds = %439, %341
  %441 = load i32, i32* %17, align 4
  %442 = load i32, i32* @SQLITE_OK, align 4
  %443 = icmp eq i32 %441, %442
  %444 = zext i1 %443 to i32
  %445 = call i32 @assert(i32 %444)
  %446 = load i32*, i32** %4, align 8
  %447 = load i8*, i8** %9, align 8
  %448 = load i8*, i8** %13, align 8
  %449 = load i32, i32* %14, align 4
  %450 = call i32 @renameEditSql(i32* %446, %struct.TYPE_49__* %8, i8* %447, i8* %448, i32 %449)
  store i32 %450, i32* %17, align 4
  br label %451

451:                                              ; preds = %440, %369, %184, %143
  %452 = load i32, i32* %17, align 4
  %453 = load i32, i32* @SQLITE_OK, align 4
  %454 = icmp ne i32 %452, %453
  br i1 %454, label %455, label %473

455:                                              ; preds = %451
  %456 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %18, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %468

459:                                              ; preds = %455
  %460 = load i32*, i32** %4, align 8
  %461 = load i32**, i32*** %6, align 8
  %462 = getelementptr inbounds i32*, i32** %461, i64 1
  %463 = load i32*, i32** %462, align 8
  %464 = load i32**, i32*** %6, align 8
  %465 = getelementptr inbounds i32*, i32** %464, i64 2
  %466 = load i32*, i32** %465, align 8
  %467 = call i32 @renameColumnParseError(i32* %460, i32 0, i32* %463, i32* %466, %struct.TYPE_40__* %18)
  br label %472

468:                                              ; preds = %455
  %469 = load i32*, i32** %4, align 8
  %470 = load i32, i32* %17, align 4
  %471 = call i32 @sqlite3_result_error_code(i32* %469, i32 %470)
  br label %472

472:                                              ; preds = %468, %459
  br label %473

473:                                              ; preds = %472, %451
  %474 = call i32 @renameParseCleanup(%struct.TYPE_40__* %18)
  %475 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %476 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %8, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = call i32 @renameTokenFree(%struct.TYPE_48__* %475, i32 %477)
  %479 = load i64, i64* %23, align 8
  %480 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %481 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %480, i32 0, i32 0
  store i64 %479, i64* %481, align 8
  %482 = load %struct.TYPE_48__*, %struct.TYPE_48__** %7, align 8
  %483 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_48__* %482)
  br label %484

484:                                              ; preds = %473, %99, %83, %79, %75, %71
  ret void
}

declare dso_local %struct.TYPE_48__* @sqlite3_context_db_handle(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @sqlite3BtreeEnterAll(%struct.TYPE_48__*) #1

declare dso_local %struct.TYPE_51__* @sqlite3FindTable(%struct.TYPE_48__*, i8*, i8*) #1

declare dso_local i32 @sqlite3BtreeLeaveAll(%struct.TYPE_48__*) #1

declare dso_local i32 @memset(%struct.TYPE_49__*, i32, i32) #1

declare dso_local i32 @renameParseSql(%struct.TYPE_40__*, i8*, i32, %struct.TYPE_48__*, i8*, i32) #1

declare dso_local i32 @sqlite3SelectPrep(%struct.TYPE_40__*, i32*, i32) #1

declare dso_local i32 @sqlite3WalkSelect(%struct.TYPE_49__*, i32*) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @renameTokenFind(%struct.TYPE_40__*, %struct.TYPE_49__*, i8*) #1

declare dso_local i32 @sqlite3WalkExprList(%struct.TYPE_49__*, i32) #1

declare dso_local i32 @sqlite3WalkExpr(%struct.TYPE_49__*, i32) #1

declare dso_local i32 @renameResolveTrigger(%struct.TYPE_40__*, i8*) #1

declare dso_local %struct.TYPE_51__* @sqlite3LocateTable(%struct.TYPE_40__*, i32, i64, i8*) #1

declare dso_local i32 @renameColumnElistNames(%struct.TYPE_40__*, %struct.TYPE_49__*, i32*, i8*) #1

declare dso_local i32 @renameColumnIdlistNames(%struct.TYPE_40__*, %struct.TYPE_49__*, i32, i8*) #1

declare dso_local i32 @renameWalkTrigger(%struct.TYPE_49__*, %struct.TYPE_44__*) #1

declare dso_local i32 @renameEditSql(i32*, %struct.TYPE_49__*, i8*, i8*, i32) #1

declare dso_local i32 @renameColumnParseError(i32*, i32, i32*, i32*, %struct.TYPE_40__*) #1

declare dso_local i32 @sqlite3_result_error_code(i32*, i32) #1

declare dso_local i32 @renameParseCleanup(%struct.TYPE_40__*) #1

declare dso_local i32 @renameTokenFree(%struct.TYPE_48__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
