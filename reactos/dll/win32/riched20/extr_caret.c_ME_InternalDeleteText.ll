; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_InternalDeleteText.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_InternalDeleteText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, %struct.TYPE_41__*, i32 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_33__*, %struct.TYPE_40__* }
%struct.TYPE_33__ = type { i64, %struct.TYPE_37__ }
%struct.TYPE_37__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32, i32, i32, %struct.TYPE_36__*, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_40__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i32, i32, %struct.TYPE_40__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MERF_ENDPARA = common dso_local global i32 0, align 4
@diParagraph = common dso_local global i32 0, align 4
@diParagraphOrEnd = common dso_local global i32 0, align 4
@MEPF_ROWSTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Deleting %d (remaining %d) chars at %d in %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Post deletion string: %s (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Shift value: %d\0A\00", align 1
@diRunOrParagraphOrEnd = common dso_local global i32 0, align 4
@diRun = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Removing empty run\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ME_InternalDeleteText(%struct.TYPE_38__* %0, %struct.TYPE_41__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_41__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_41__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_40__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_39__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_40__*, align 8
  %21 = alloca %struct.TYPE_40__*, align 8
  %22 = alloca %struct.TYPE_41__, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_41__*, align 8
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %6, align 8
  store %struct.TYPE_41__* %1, %struct.TYPE_41__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %26 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %27 = bitcast %struct.TYPE_41__* %10 to i8*
  %28 = bitcast %struct.TYPE_41__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  %29 = load %struct.TYPE_41__*, %struct.TYPE_41__** %7, align 8
  %30 = call i32 @ME_GetCursorOfs(%struct.TYPE_41__* %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %32 = call i32 @ME_GetTextLength(%struct.TYPE_38__* %31)
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %36, %37
  %39 = call i32 @min(i32 %35, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %4
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %43, %4
  %46 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 2
  %47 = load %struct.TYPE_40__*, %struct.TYPE_40__** %46, align 8
  store %struct.TYPE_40__* %47, %struct.TYPE_40__** %15, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %52 = call i32 @ME_ProtectPartialTableDeletion(%struct.TYPE_38__* %51, %struct.TYPE_41__* %10, i32* %8)
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %5, align 4
  br label %430

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %417, %207, %185, %58
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %418

62:                                               ; preds = %59
  %63 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %64, %65
  %67 = call i32 @ME_CursorFromCharOfs(%struct.TYPE_38__* %63, i32 %66, %struct.TYPE_41__* %10)
  %68 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %101, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 2
  %82 = load %struct.TYPE_40__*, %struct.TYPE_40__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %80, %86
  %88 = icmp eq i32 %74, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %71
  %90 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32 @ME_PrevRun(%struct.TYPE_40__** %90, %struct.TYPE_33__** %91, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 0
  store i32 %99, i32* %100, align 8
  br label %101

101:                                              ; preds = %89, %71, %62
  %102 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %104, i32 0, i32 0
  store %struct.TYPE_39__* %105, %struct.TYPE_39__** %17, align 8
  %106 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MERF_ENDPARA, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %211

112:                                              ; preds = %101
  %113 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %18, align 4
  %119 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %119, align 8
  %121 = load i32, i32* @diParagraph, align 4
  %122 = call i8* @ME_FindItemFwd(%struct.TYPE_33__* %120, i32 %121)
  %123 = icmp ne i8* %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %112
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %5, align 4
  br label %430

126:                                              ; preds = %112
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %18, align 4
  %133 = icmp sle i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br label %139

139:                                              ; preds = %134, %130, %126
  %140 = phi i1 [ false, %130 ], [ false, %126 ], [ %138, %134 ]
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %19, align 4
  %142 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %192, label %146

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %147, align 8
  %149 = load i32, i32* @diParagraphOrEnd, align 4
  %150 = call i8* @ME_FindItemFwd(%struct.TYPE_33__* %148, i32 %149)
  %151 = bitcast i8* %150 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %151, %struct.TYPE_40__** %20, align 8
  %152 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_40__*, %struct.TYPE_40__** %155, align 8
  store %struct.TYPE_40__* %156, %struct.TYPE_40__** %21, align 8
  %157 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %158 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %159 = icmp eq %struct.TYPE_40__* %157, %158
  br i1 %159, label %160, label %191

160:                                              ; preds = %146
  %161 = load %struct.TYPE_40__*, %struct.TYPE_40__** %20, align 8
  %162 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @MEPF_ROWSTART, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %191

169:                                              ; preds = %160
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.TYPE_40__*, %struct.TYPE_40__** %21, align 8
  %172 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp sgt i32 %170, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %169
  %178 = load i32, i32* %18, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i32, i32* %18, align 4
  br label %185

183:                                              ; preds = %177
  %184 = load i32, i32* %8, align 4
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i32 [ %182, %181 ], [ %184, %183 ]
  %187 = load i32, i32* %8, align 4
  %188 = sub nsw i32 %187, %186
  store i32 %188, i32* %8, align 4
  br label %59

189:                                              ; preds = %169
  %190 = load i32, i32* @TRUE, align 4
  store i32 %190, i32* %19, align 4
  br label %191

191:                                              ; preds = %189, %160, %146
  br label %192

192:                                              ; preds = %191, %139
  %193 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 2
  %195 = load %struct.TYPE_40__*, %struct.TYPE_40__** %194, align 8
  %196 = load i32, i32* %19, align 4
  %197 = call i32 @ME_JoinParagraphs(%struct.TYPE_38__* %193, %struct.TYPE_40__* %195, i32 %196)
  %198 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %199 = call i32 @ME_CheckCharOffsets(%struct.TYPE_38__* %198)
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %192
  %204 = load i32, i32* %18, align 4
  br label %207

205:                                              ; preds = %192
  %206 = load i32, i32* %8, align 4
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  %209 = load i32, i32* %8, align 4
  %210 = sub nsw i32 %209, %208
  store i32 %210, i32* %8, align 4
  br label %59

211:                                              ; preds = %101
  %212 = load i32, i32* %8, align 4
  %213 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @min(i32 %212, i32 %214)
  store i32 %215, i32* %23, align 4
  %216 = load i32, i32* %23, align 4
  %217 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sub nsw i32 %218, %216
  store i32 %219, i32* %217, align 8
  %220 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  %222 = load %struct.TYPE_33__*, %struct.TYPE_33__** %221, align 8
  %223 = load i32, i32* @diParagraph, align 4
  %224 = call i32 @ME_FindItemBack(%struct.TYPE_33__* %222, i32 %223)
  %225 = call i32 @mark_para_rewrap(%struct.TYPE_38__* %220, i32 %224)
  %226 = bitcast %struct.TYPE_41__* %22 to i8*
  %227 = bitcast %struct.TYPE_41__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %226, i8* align 8 %227, i64 24, i1 false)
  %228 = load i32, i32* %23, align 4
  %229 = load i32, i32* %8, align 4
  %230 = sub nsw i32 %229, %228
  store i32 %230, i32* %8, align 4
  %231 = load i32, i32* %23, align 4
  %232 = load i32, i32* %13, align 4
  %233 = sub nsw i32 %232, %231
  store i32 %233, i32* %13, align 4
  %234 = load i32, i32* %23, align 4
  %235 = load i32, i32* %8, align 4
  %236 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %239 = call i32 @debugstr_run(%struct.TYPE_39__* %238)
  %240 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %234, i32 %235, i32 %237, i32 %239, i32 %242)
  %244 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %245, %246
  %248 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @get_text(%struct.TYPE_39__* %248, i32 %250)
  %252 = load i32, i32* %23, align 4
  %253 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %257 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @add_undo_insert_run(%struct.TYPE_38__* %244, i32 %247, i32 %251, i32 %252, i32 %255, i32 %258)
  %260 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %261 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %260, i32 0, i32 3
  %262 = load %struct.TYPE_36__*, %struct.TYPE_36__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %266 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %267, %269
  %271 = load i32, i32* %23, align 4
  %272 = call i32 @ME_StrDeleteV(i32 %264, i32 %270, i32 %271)
  %273 = load i32, i32* %23, align 4
  %274 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %275 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = sub nsw i32 %276, %273
  store i32 %277, i32* %275, align 4
  %278 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %279 = call i32 @debugstr_run(%struct.TYPE_39__* %278)
  %280 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %281 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %279, i32 %282)
  %284 = load i32, i32* %13, align 4
  %285 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %284)
  store i32 -1, i32* %24, align 4
  br label %286

286:                                              ; preds = %382, %211
  %287 = load i32, i32* %24, align 4
  %288 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp slt i32 %287, %290
  br i1 %291, label %292, label %385

292:                                              ; preds = %286
  %293 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_41__*, %struct.TYPE_41__** %294, align 8
  %296 = load i32, i32* %24, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %295, i64 %297
  store %struct.TYPE_41__* %298, %struct.TYPE_41__** %25, align 8
  %299 = load i32, i32* %24, align 4
  %300 = icmp eq i32 %299, -1
  br i1 %300, label %301, label %302

301:                                              ; preds = %292
  store %struct.TYPE_41__* %10, %struct.TYPE_41__** %25, align 8
  br label %302

302:                                              ; preds = %301, %292
  %303 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %304 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_33__*, %struct.TYPE_33__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %22, i32 0, i32 1
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %306, align 8
  %308 = icmp eq %struct.TYPE_33__* %305, %307
  br i1 %308, label %309, label %381

309:                                              ; preds = %302
  %310 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %311 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %22, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp sgt i32 %312, %314
  br i1 %315, label %316, label %352

316:                                              ; preds = %309
  %317 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %318 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %22, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sub nsw i32 %319, %321
  %323 = load i32, i32* %23, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %330

325:                                              ; preds = %316
  %326 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %22, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %329 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %328, i32 0, i32 0
  store i32 %327, i32* %329, align 8
  br label %336

330:                                              ; preds = %316
  %331 = load i32, i32* %23, align 4
  %332 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %333 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = sub nsw i32 %334, %331
  store i32 %335, i32* %333, align 8
  br label %336

336:                                              ; preds = %330, %325
  %337 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %338 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = icmp sge i32 %339, 0
  %341 = zext i1 %340 to i32
  %342 = call i32 @assert(i32 %341)
  %343 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %344 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %347 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp sle i32 %345, %348
  %350 = zext i1 %349 to i32
  %351 = call i32 @assert(i32 %350)
  br label %352

352:                                              ; preds = %336, %309
  %353 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %354 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %357 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = icmp eq i32 %355, %358
  br i1 %359, label %360, label %380

360:                                              ; preds = %352
  %361 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %362 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %361, i32 0, i32 1
  %363 = load %struct.TYPE_33__*, %struct.TYPE_33__** %362, align 8
  %364 = load i32, i32* @diRunOrParagraphOrEnd, align 4
  %365 = call i8* @ME_FindItemFwd(%struct.TYPE_33__* %363, i32 %364)
  %366 = bitcast i8* %365 to %struct.TYPE_33__*
  %367 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %368 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %367, i32 0, i32 1
  store %struct.TYPE_33__* %366, %struct.TYPE_33__** %368, align 8
  %369 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %370 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %369, i32 0, i32 1
  %371 = load %struct.TYPE_33__*, %struct.TYPE_33__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @diRun, align 8
  %375 = icmp eq i64 %373, %374
  %376 = zext i1 %375 to i32
  %377 = call i32 @assert(i32 %376)
  %378 = load %struct.TYPE_41__*, %struct.TYPE_41__** %25, align 8
  %379 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %378, i32 0, i32 0
  store i32 0, i32* %379, align 8
  br label %380

380:                                              ; preds = %360, %352
  br label %381

381:                                              ; preds = %380, %302
  br label %382

382:                                              ; preds = %381
  %383 = load i32, i32* %24, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %24, align 4
  br label %286

385:                                              ; preds = %286
  %386 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  %387 = load %struct.TYPE_33__*, %struct.TYPE_33__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %22, i32 0, i32 1
  %389 = load %struct.TYPE_33__*, %struct.TYPE_33__** %388, align 8
  %390 = icmp eq %struct.TYPE_33__* %387, %389
  br i1 %390, label %391, label %396

391:                                              ; preds = %385
  %392 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  %393 = load %struct.TYPE_33__*, %struct.TYPE_33__** %392, align 8
  %394 = load i32, i32* %13, align 4
  %395 = call i32 @ME_SkipAndPropagateCharOffset(%struct.TYPE_33__* %393, i32 %394)
  br label %401

396:                                              ; preds = %385
  %397 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %10, i32 0, i32 1
  %398 = load %struct.TYPE_33__*, %struct.TYPE_33__** %397, align 8
  %399 = load i32, i32* %13, align 4
  %400 = call i32 @ME_PropagateCharOffset(%struct.TYPE_33__* %398, i32 %399)
  br label %401

401:                                              ; preds = %396, %391
  %402 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %22, i32 0, i32 1
  %403 = load %struct.TYPE_33__*, %struct.TYPE_33__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %417, label %409

409:                                              ; preds = %401
  %410 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %411 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %22, i32 0, i32 1
  %412 = load %struct.TYPE_33__*, %struct.TYPE_33__** %411, align 8
  %413 = call i32 @ME_Remove(%struct.TYPE_33__* %412)
  %414 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %22, i32 0, i32 1
  %415 = load %struct.TYPE_33__*, %struct.TYPE_33__** %414, align 8
  %416 = call i32 @ME_DestroyDisplayItem(%struct.TYPE_33__* %415)
  br label %417

417:                                              ; preds = %409, %401
  store i32 0, i32* %13, align 4
  br label %59

418:                                              ; preds = %59
  %419 = load i32, i32* %16, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %428

421:                                              ; preds = %418
  %422 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %423 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %424 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %425, i32 0, i32 2
  %427 = call i32 @ME_SetDefaultParaFormat(%struct.TYPE_38__* %422, i32* %426)
  br label %428

428:                                              ; preds = %421, %418
  %429 = load i32, i32* @TRUE, align 4
  store i32 %429, i32* %5, align 4
  br label %430

430:                                              ; preds = %428, %124, %55
  %431 = load i32, i32* %5, align 4
  ret i32 %431
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ME_GetCursorOfs(%struct.TYPE_41__*) #2

declare dso_local i32 @ME_GetTextLength(%struct.TYPE_38__*) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @ME_ProtectPartialTableDeletion(%struct.TYPE_38__*, %struct.TYPE_41__*, i32*) #2

declare dso_local i32 @ME_CursorFromCharOfs(%struct.TYPE_38__*, i32, %struct.TYPE_41__*) #2

declare dso_local i32 @ME_PrevRun(%struct.TYPE_40__**, %struct.TYPE_33__**, i32) #2

declare dso_local i8* @ME_FindItemFwd(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @ME_JoinParagraphs(%struct.TYPE_38__*, %struct.TYPE_40__*, i32) #2

declare dso_local i32 @ME_CheckCharOffsets(%struct.TYPE_38__*) #2

declare dso_local i32 @mark_para_rewrap(%struct.TYPE_38__*, i32) #2

declare dso_local i32 @ME_FindItemBack(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @TRACE(i8*, ...) #2

declare dso_local i32 @debugstr_run(%struct.TYPE_39__*) #2

declare dso_local i32 @add_undo_insert_run(%struct.TYPE_38__*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @get_text(%struct.TYPE_39__*, i32) #2

declare dso_local i32 @ME_StrDeleteV(i32, i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @ME_SkipAndPropagateCharOffset(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @ME_PropagateCharOffset(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @ME_Remove(%struct.TYPE_33__*) #2

declare dso_local i32 @ME_DestroyDisplayItem(%struct.TYPE_33__*) #2

declare dso_local i32 @ME_SetDefaultParaFormat(%struct.TYPE_38__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
