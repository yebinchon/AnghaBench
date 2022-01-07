; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_MoveCursorChars.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_MoveCursorChars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_15__* }

@diRun = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ME_MoveCursorChars(i32* %0, %struct.TYPE_16__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, %13
  store i64 %17, i64* %15, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %181

22:                                               ; preds = %4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %48, %38
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = load i32, i32* @diRun, align 4
  %44 = call i8* @ME_FindItemBack(%struct.TYPE_15__* %42, i32 %43)
  %45 = bitcast i8* %44 to %struct.TYPE_15__*
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %47, align 8
  br label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %51, %58
  br i1 %59, label %39, label %60

60:                                               ; preds = %48
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %5, align 4
  br label %349

73:                                               ; preds = %22
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sle i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %73
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %8, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = call i32 @ME_SetCursorToStart(i32* %97, %struct.TYPE_16__* %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %5, align 4
  br label %349

101:                                              ; preds = %73
  br label %102

102:                                              ; preds = %112, %101
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  store %struct.TYPE_15__* %109, %struct.TYPE_15__** %111, align 8
  br label %112

112:                                              ; preds = %102
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp slt i64 %115, %122
  br i1 %123, label %102, label %124

124:                                              ; preds = %112
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %134, %131
  store i64 %135, i64* %133, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = load i32, i32* @diRun, align 4
  %144 = call i8* @ME_FindItemBack(%struct.TYPE_15__* %142, i32 %143)
  %145 = bitcast i8* %144 to %struct.TYPE_15__*
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %147, align 8
  br label %148

148:                                              ; preds = %160, %124
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp slt i64 %151, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %148
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = load i32, i32* @diRun, align 4
  %165 = call i8* @ME_FindItemBack(%struct.TYPE_15__* %163, i32 %164)
  %166 = bitcast i8* %165 to %struct.TYPE_15__*
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  store %struct.TYPE_15__* %166, %struct.TYPE_15__** %168, align 8
  br label %148

169:                                              ; preds = %148
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %179, %176
  store i64 %180, i64* %178, align 8
  br label %347

181:                                              ; preds = %4
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp sge i64 %184, %191
  br i1 %192, label %193, label %346

193:                                              ; preds = %181
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %195 = call i32 @ME_GetCursorOfs(%struct.TYPE_16__* %194)
  store i32 %195, i32* %11, align 4
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  store %struct.TYPE_15__* %202, %struct.TYPE_15__** %10, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp slt i64 %204, %209
  br i1 %210, label %211, label %246

211:                                              ; preds = %193
  br label %212

212:                                              ; preds = %232, %211
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = sub nsw i64 %222, %219
  store i64 %223, i64* %221, align 8
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %225, align 8
  %227 = load i32, i32* @diRun, align 4
  %228 = call i8* @ME_FindItemFwd(%struct.TYPE_15__* %226, i32 %227)
  %229 = bitcast i8* %228 to %struct.TYPE_15__*
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  store %struct.TYPE_15__* %229, %struct.TYPE_15__** %231, align 8
  br label %232

232:                                              ; preds = %212
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp sge i64 %235, %242
  br i1 %243, label %212, label %244

244:                                              ; preds = %232
  %245 = load i32, i32* %8, align 4
  store i32 %245, i32* %5, align 4
  br label %349

246:                                              ; preds = %193
  %247 = load i32, i32* %11, align 4
  %248 = load i32*, i32** %6, align 8
  %249 = call i32 @ME_GetTextLength(i32* %248)
  %250 = load i64, i64* %9, align 8
  %251 = icmp ne i64 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i32 1, i32 0
  %254 = add nsw i32 %249, %253
  %255 = icmp sge i32 %247, %254
  br i1 %255, label %256, label %273

256:                                              ; preds = %246
  %257 = load i32*, i32** %6, align 8
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %259 = load i64, i64* %9, align 8
  %260 = call i32 @ME_SetCursorToEnd(i32* %257, %struct.TYPE_16__* %258, i64 %259)
  %261 = load i32, i32* %11, align 4
  %262 = load i32*, i32** %6, align 8
  %263 = call i32 @ME_GetTextLength(i32* %262)
  %264 = load i64, i64* %9, align 8
  %265 = icmp ne i64 %264, 0
  %266 = zext i1 %265 to i64
  %267 = select i1 %265, i32 1, i32 0
  %268 = add nsw i32 %263, %267
  %269 = sub nsw i32 %261, %268
  %270 = load i32, i32* %8, align 4
  %271 = sub nsw i32 %270, %269
  store i32 %271, i32* %8, align 4
  %272 = load i32, i32* %8, align 4
  store i32 %272, i32* %5, align 4
  br label %349

273:                                              ; preds = %246
  br label %274

274:                                              ; preds = %283, %273
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 2
  store %struct.TYPE_15__* %275, %struct.TYPE_15__** %277, align 8
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %281, align 8
  store %struct.TYPE_15__* %282, %struct.TYPE_15__** %10, align 8
  br label %283

283:                                              ; preds = %274
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = icmp sge i64 %285, %290
  br i1 %291, label %274, label %292

292:                                              ; preds = %283
  %293 = load i32, i32* %11, align 4
  %294 = sext i32 %293 to i64
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = sub nsw i64 %294, %301
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 0
  store i64 %302, i64* %304, align 8
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 2
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %306, align 8
  %308 = load i32, i32* @diRun, align 4
  %309 = call i8* @ME_FindItemFwd(%struct.TYPE_15__* %307, i32 %308)
  %310 = bitcast i8* %309 to %struct.TYPE_15__*
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 1
  store %struct.TYPE_15__* %310, %struct.TYPE_15__** %312, align 8
  br label %313

313:                                              ; preds = %325, %292
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = icmp sge i64 %316, %323
  br i1 %324, label %325, label %345

325:                                              ; preds = %313
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = sub nsw i64 %335, %332
  store i64 %336, i64* %334, align 8
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %338, align 8
  %340 = load i32, i32* @diRun, align 4
  %341 = call i8* @ME_FindItemFwd(%struct.TYPE_15__* %339, i32 %340)
  %342 = bitcast i8* %341 to %struct.TYPE_15__*
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 1
  store %struct.TYPE_15__* %342, %struct.TYPE_15__** %344, align 8
  br label %313

345:                                              ; preds = %313
  br label %346

346:                                              ; preds = %345, %181
  br label %347

347:                                              ; preds = %346, %169
  %348 = load i32, i32* %8, align 4
  store i32 %348, i32* %5, align 4
  br label %349

349:                                              ; preds = %347, %256, %244, %89, %60
  %350 = load i32, i32* %5, align 4
  ret i32 %350
}

declare dso_local i8* @ME_FindItemBack(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ME_SetCursorToStart(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @ME_GetCursorOfs(%struct.TYPE_16__*) #1

declare dso_local i8* @ME_FindItemFwd(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ME_GetTextLength(i32*) #1

declare dso_local i32 @ME_SetCursorToEnd(i32*, %struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
