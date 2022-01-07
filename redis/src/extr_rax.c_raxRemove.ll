; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rax.c_raxRemove.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rax.c_raxRemove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_29__*, i32, i32 }
%struct.TYPE_29__ = type { i32, i64, i32, %struct.TYPE_29__**, i64 }
%struct.TYPE_28__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"### Delete: %.*s\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Key deleted in node without children. Cleanup needed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Freeing child %p [%.*s] key:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Unlinking child %p from parent %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"After removing %.*s:\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Compression may be needed\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Seek start node\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Going up to\00", align 1
@RAX_NODE_MAX_SIZE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"New node\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Compressed %d nodes, %d total bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raxRemove(%struct.TYPE_30__* %0, i8* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_28__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca %struct.TYPE_29__**, align 8
  %19 = alloca %struct.TYPE_29__*, align 8
  %20 = alloca %struct.TYPE_29__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_29__**, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_29__*, align 8
  %26 = alloca %struct.TYPE_29__**, align 8
  %27 = alloca %struct.TYPE_29__*, align 8
  %28 = alloca %struct.TYPE_29__**, align 8
  %29 = alloca %struct.TYPE_29__**, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %32)
  %34 = call i32 @raxStackInit(%struct.TYPE_28__* %11)
  store i32 0, i32* %12, align 4
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @raxLowWalk(%struct.TYPE_30__* %35, i8* %36, i64 %37, %struct.TYPE_29__** %10, i32* null, i32* %12, %struct.TYPE_28__* %11)
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %4
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50, %47, %4
  %56 = call i32 @raxStackFree(%struct.TYPE_28__* %11)
  store i32 0, i32* %5, align 4
  br label %375

57:                                               ; preds = %50
  %58 = load i8**, i8*** %9, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %62 = call i8* @raxGetData(%struct.TYPE_29__* %61)
  %63 = load i8**, i8*** %9, align 8
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %60, %57
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 4
  store i32 0, i32* %14, align 4
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %164

75:                                               ; preds = %64
  %76 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %15, align 8
  br label %77

77:                                               ; preds = %120, %75
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %79 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %80, align 8
  %82 = icmp ne %struct.TYPE_29__* %78, %81
  br i1 %82, label %83, label %121

83:                                               ; preds = %77
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_29__* %84, %struct.TYPE_29__** %15, align 8
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %86 = bitcast %struct.TYPE_29__* %85 to i8*
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %91, align 8
  %93 = bitcast %struct.TYPE_29__** %92 to i8*
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %86, i32 %89, i8* %93, i64 %96)
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %99 = call i32 @rax_free(%struct.TYPE_29__* %98)
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %101, align 8
  %104 = call %struct.TYPE_29__* @raxStackPop(%struct.TYPE_28__* %11)
  store %struct.TYPE_29__* %104, %struct.TYPE_29__** %10, align 8
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %83
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %114, %83
  br label %121

120:                                              ; preds = %114, %109
  br label %77

121:                                              ; preds = %119, %77
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %123 = icmp ne %struct.TYPE_29__* %122, null
  br i1 %123, label %124, label %163

124:                                              ; preds = %121
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %126 = bitcast %struct.TYPE_29__* %125 to i8*
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %128 = bitcast %struct.TYPE_29__* %127 to i8*
  %129 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %126, i8* %128)
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %132 = call %struct.TYPE_29__* @raxRemoveChild(%struct.TYPE_29__* %130, %struct.TYPE_29__* %131)
  store %struct.TYPE_29__* %132, %struct.TYPE_29__** %16, align 8
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %135 = icmp ne %struct.TYPE_29__* %133, %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %124
  %137 = call %struct.TYPE_29__* @raxStackPeek(%struct.TYPE_28__* %11)
  store %struct.TYPE_29__* %137, %struct.TYPE_29__** %17, align 8
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %139 = icmp eq %struct.TYPE_29__* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 0
  store %struct.TYPE_29__** %142, %struct.TYPE_29__*** %18, align 8
  br label %147

143:                                              ; preds = %136
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %146 = call %struct.TYPE_29__** @raxFindParentLink(%struct.TYPE_29__* %144, %struct.TYPE_29__* %145)
  store %struct.TYPE_29__** %146, %struct.TYPE_29__*** %18, align 8
  br label %147

147:                                              ; preds = %143, %140
  %148 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %18, align 8
  %149 = call i32 @memcpy(%struct.TYPE_29__** %148, %struct.TYPE_29__** %16, i32 8)
  br label %150

150:                                              ; preds = %147, %124
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  store i32 1, i32* %14, align 4
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  store %struct.TYPE_29__* %161, %struct.TYPE_29__** %10, align 8
  br label %162

162:                                              ; preds = %160, %155, %150
  br label %163

163:                                              ; preds = %162, %121
  br label %171

164:                                              ; preds = %64
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i32 1, i32* %14, align 4
  br label %170

170:                                              ; preds = %169, %164
  br label %171

171:                                              ; preds = %170, %163
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 0, i32* %14, align 4
  br label %179

179:                                              ; preds = %178, %174, %171
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %373

182:                                              ; preds = %179
  %183 = load i64, i64* %8, align 8
  %184 = trunc i64 %183 to i32
  %185 = load i8*, i8** %7, align 8
  %186 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %184, i8* %185)
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %188 = call i32 @debugnode(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_29__* %187)
  %189 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %190

190:                                              ; preds = %182, %210
  %191 = call %struct.TYPE_29__* @raxStackPop(%struct.TYPE_28__* %11)
  store %struct.TYPE_29__* %191, %struct.TYPE_29__** %19, align 8
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %193 = icmp ne %struct.TYPE_29__* %192, null
  br i1 %193, label %194, label %209

194:                                              ; preds = %190
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %209, label %199

199:                                              ; preds = %194
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %210, label %204

204:                                              ; preds = %199
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 1
  br i1 %208, label %209, label %210

209:                                              ; preds = %204, %194, %190
  br label %214

210:                                              ; preds = %204, %199
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  store %struct.TYPE_29__* %211, %struct.TYPE_29__** %10, align 8
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %213 = call i32 @debugnode(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_29__* %212)
  br label %190

214:                                              ; preds = %209
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_29__* %215, %struct.TYPE_29__** %20, align 8
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  store i64 %219, i64* %21, align 8
  store i32 1, i32* %22, align 4
  br label %220

220:                                              ; preds = %255, %214
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %264

225:                                              ; preds = %220
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %227 = call %struct.TYPE_29__** @raxNodeLastChildPtr(%struct.TYPE_29__* %226)
  store %struct.TYPE_29__** %227, %struct.TYPE_29__*** %23, align 8
  %228 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %23, align 8
  %229 = call i32 @memcpy(%struct.TYPE_29__** %10, %struct.TYPE_29__** %228, i32 8)
  %230 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %225
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %234
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 1
  br i1 %243, label %244, label %245

244:                                              ; preds = %239, %225
  br label %264

245:                                              ; preds = %239, %234
  %246 = load i64, i64* %21, align 8
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = sext i32 %249 to i64
  %251 = add i64 %246, %250
  %252 = load i64, i64* @RAX_NODE_MAX_SIZE, align 8
  %253 = icmp ugt i64 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %245
  br label %264

255:                                              ; preds = %245
  %256 = load i32, i32* %22, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %22, align 4
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* %21, align 8
  %263 = add i64 %262, %261
  store i64 %263, i64* %21, align 8
  br label %220

264:                                              ; preds = %254, %244, %220
  %265 = load i32, i32* %22, align 4
  %266 = icmp sgt i32 %265, 1
  br i1 %266, label %267, label %372

267:                                              ; preds = %264
  %268 = load i64, i64* %21, align 8
  %269 = add i64 40, %268
  %270 = load i64, i64* %21, align 8
  %271 = call i32 @raxPadding(i64 %270)
  %272 = sext i32 %271 to i64
  %273 = add i64 %269, %272
  %274 = add i64 %273, 8
  store i64 %274, i64* %24, align 8
  %275 = load i64, i64* %24, align 8
  %276 = call %struct.TYPE_29__* @rax_malloc(i64 %275)
  store %struct.TYPE_29__* %276, %struct.TYPE_29__** %25, align 8
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %278 = icmp eq %struct.TYPE_29__* %277, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %267
  %280 = call i32 @raxStackFree(%struct.TYPE_28__* %11)
  store i32 1, i32* %5, align 4
  br label %375

281:                                              ; preds = %267
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %283 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %282, i32 0, i32 1
  store i64 0, i64* %283, align 8
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %285 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %284, i32 0, i32 4
  store i64 0, i64* %285, align 8
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 0
  store i32 1, i32* %287, align 8
  %288 = load i64, i64* %21, align 8
  %289 = trunc i64 %288 to i32
  %290 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %291 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 8
  %292 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %293, align 8
  store i64 0, i64* %21, align 8
  %296 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  store %struct.TYPE_29__* %296, %struct.TYPE_29__** %10, align 8
  br label %297

297:                                              ; preds = %347, %281
  %298 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %348

302:                                              ; preds = %297
  %303 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %304 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %303, i32 0, i32 3
  %305 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %304, align 8
  %306 = load i64, i64* %21, align 8
  %307 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %305, i64 %306
  %308 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %308, i32 0, i32 3
  %310 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %309, align 8
  %311 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @memcpy(%struct.TYPE_29__** %307, %struct.TYPE_29__** %310, i32 %313)
  %315 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = load i64, i64* %21, align 8
  %320 = add i64 %319, %318
  store i64 %320, i64* %21, align 8
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %322 = call %struct.TYPE_29__** @raxNodeLastChildPtr(%struct.TYPE_29__* %321)
  store %struct.TYPE_29__** %322, %struct.TYPE_29__*** %26, align 8
  %323 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_29__* %323, %struct.TYPE_29__** %27, align 8
  %324 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %26, align 8
  %325 = call i32 @memcpy(%struct.TYPE_29__** %10, %struct.TYPE_29__** %324, i32 8)
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %327 = call i32 @rax_free(%struct.TYPE_29__* %326)
  %328 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %329, align 8
  %332 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %346, label %336

336:                                              ; preds = %302
  %337 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %338 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %347, label %341

341:                                              ; preds = %336
  %342 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = icmp ne i32 %344, 1
  br i1 %345, label %346, label %347

346:                                              ; preds = %341, %302
  br label %348

347:                                              ; preds = %341, %336
  br label %297

348:                                              ; preds = %346, %297
  %349 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %350 = call i32 @debugnode(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_29__* %349)
  %351 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %352 = call %struct.TYPE_29__** @raxNodeLastChildPtr(%struct.TYPE_29__* %351)
  store %struct.TYPE_29__** %352, %struct.TYPE_29__*** %28, align 8
  %353 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %28, align 8
  %354 = call i32 @memcpy(%struct.TYPE_29__** %353, %struct.TYPE_29__** %10, i32 8)
  %355 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %356 = icmp ne %struct.TYPE_29__* %355, null
  br i1 %356, label %357, label %363

357:                                              ; preds = %348
  %358 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %359 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %360 = call %struct.TYPE_29__** @raxFindParentLink(%struct.TYPE_29__* %358, %struct.TYPE_29__* %359)
  store %struct.TYPE_29__** %360, %struct.TYPE_29__*** %29, align 8
  %361 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %29, align 8
  %362 = call i32 @memcpy(%struct.TYPE_29__** %361, %struct.TYPE_29__** %25, i32 8)
  br label %367

363:                                              ; preds = %348
  %364 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  %365 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %365, i32 0, i32 0
  store %struct.TYPE_29__* %364, %struct.TYPE_29__** %366, align 8
  br label %367

367:                                              ; preds = %363, %357
  %368 = load i32, i32* %22, align 4
  %369 = load i64, i64* %21, align 8
  %370 = trunc i64 %369 to i32
  %371 = call i32 (i8*, ...) @debugf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %368, i32 %370)
  br label %372

372:                                              ; preds = %367, %264
  br label %373

373:                                              ; preds = %372, %179
  %374 = call i32 @raxStackFree(%struct.TYPE_28__* %11)
  store i32 1, i32* %5, align 4
  br label %375

375:                                              ; preds = %373, %279, %55
  %376 = load i32, i32* %5, align 4
  ret i32 %376
}

declare dso_local i32 @debugf(i8*, ...) #1

declare dso_local i32 @raxStackInit(%struct.TYPE_28__*) #1

declare dso_local i64 @raxLowWalk(%struct.TYPE_30__*, i8*, i64, %struct.TYPE_29__**, i32*, i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @raxStackFree(%struct.TYPE_28__*) #1

declare dso_local i8* @raxGetData(%struct.TYPE_29__*) #1

declare dso_local i32 @rax_free(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @raxStackPop(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @raxRemoveChild(%struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @raxStackPeek(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__** @raxFindParentLink(%struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_29__**, %struct.TYPE_29__**, i32) #1

declare dso_local i32 @debugnode(i8*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__** @raxNodeLastChildPtr(%struct.TYPE_29__*) #1

declare dso_local i32 @raxPadding(i64) #1

declare dso_local %struct.TYPE_29__* @rax_malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
