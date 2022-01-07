; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_table.c_ME_ProtectPartialTableDeletion.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_table.c_ME_ProtectPartialTableDeletion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_28__, %struct.TYPE_25__ }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i64, i32, %struct.TYPE_29__*, %struct.TYPE_24__, %struct.TYPE_29__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_29__* }

@FALSE = common dso_local global i64 0, align 8
@MERF_ENDPARA = common dso_local global i32 0, align 4
@MEPF_ROWSTART = common dso_local global i32 0, align 4
@MEPF_ROWEND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@diRun = common dso_local global i32 0, align 4
@PFM_TABLE = common dso_local global i32 0, align 4
@PFE_TABLE = common dso_local global i32 0, align 4
@MERF_TAB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_ProtectPartialTableDeletion(%struct.TYPE_27__* %0, %struct.TYPE_30__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_30__, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %20 = call i32 @ME_GetCursorOfs(%struct.TYPE_30__* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %22 = bitcast %struct.TYPE_30__* %8 to i8*
  %23 = bitcast %struct.TYPE_30__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 24, i1 false)
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %25, align 8
  store %struct.TYPE_29__* %26, %struct.TYPE_29__** %9, align 8
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @FALSE, align 8
  %31 = call i32 @ME_MoveCursorChars(%struct.TYPE_27__* %27, %struct.TYPE_30__* %8, i32 %29, i64 %30)
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 2
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %32, align 8
  store %struct.TYPE_29__* %33, %struct.TYPE_29__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 1
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MERF_ENDPARA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %3
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %44, %46
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 1
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %47, %53
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %54, %59
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %43
  %64 = load i32, i32* %11, align 4
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 1
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %64, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 5
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %77, align 8
  store %struct.TYPE_29__* %78, %struct.TYPE_29__** %10, align 8
  br label %79

79:                                               ; preds = %63, %43
  br label %80

80:                                               ; preds = %79, %3
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %259, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %90, %95
  br i1 %96, label %114, label %97

97:                                               ; preds = %85
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %102, %107
  %109 = load i32, i32* @MEPF_ROWSTART, align 4
  %110 = load i32, i32* @MEPF_ROWEND, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %258

114:                                              ; preds = %97, %85
  br label %115

115:                                              ; preds = %255, %114
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %118 = icmp ne %struct.TYPE_29__* %116, %117
  br i1 %118, label %119, label %257

119:                                              ; preds = %115
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %123, align 8
  store %struct.TYPE_29__* %124, %struct.TYPE_29__** %12, align 8
  %125 = load i64, i64* @FALSE, align 8
  store i64 %125, i64* %13, align 8
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @MEPF_ROWSTART, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %119
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  store %struct.TYPE_29__* %135, %struct.TYPE_29__** %12, align 8
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %139, align 8
  store %struct.TYPE_29__* %140, %struct.TYPE_29__** %9, align 8
  br label %165

141:                                              ; preds = %119
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %146, %151
  br i1 %152, label %162, label %153

153:                                              ; preds = %141
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @MEPF_ROWEND, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %153, %141
  %163 = load i64, i64* @TRUE, align 8
  store i64 %163, i64* %13, align 8
  br label %164

164:                                              ; preds = %162, %153
  br label %165

165:                                              ; preds = %164, %134
  br label %166

166:                                              ; preds = %224, %165
  %167 = load i64, i64* %13, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %166
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @MEPF_ROWSTART, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br label %178

178:                                              ; preds = %169, %166
  %179 = phi i1 [ false, %166 ], [ %177, %169 ]
  br i1 %179, label %180, label %225

180:                                              ; preds = %178
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %182 = call %struct.TYPE_21__* @ME_GetTableRowEnd(%struct.TYPE_29__* %181)
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %185, align 8
  store %struct.TYPE_29__* %186, %struct.TYPE_29__** %12, align 8
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = load i32*, i32** %6, align 8
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %192, %194
  %196 = icmp sgt i32 %191, %195
  br i1 %196, label %197, label %218

197:                                              ; preds = %180
  %198 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 5
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %201, align 8
  store %struct.TYPE_29__* %202, %struct.TYPE_29__** %12, align 8
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = icmp sge i32 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %197
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 5
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %214, align 8
  store %struct.TYPE_29__* %215, %struct.TYPE_29__** %12, align 8
  br label %216

216:                                              ; preds = %210, %197
  %217 = load i64, i64* @TRUE, align 8
  store i64 %217, i64* %13, align 8
  br label %224

218:                                              ; preds = %180
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %222, align 8
  store %struct.TYPE_29__* %223, %struct.TYPE_29__** %9, align 8
  br label %224

224:                                              ; preds = %218, %216
  br label %166

225:                                              ; preds = %178
  %226 = load i64, i64* %13, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %255

228:                                              ; preds = %225
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %230 = load i32, i32* @diRun, align 4
  %231 = call %struct.TYPE_29__* @ME_FindItemBack(%struct.TYPE_29__* %229, i32 %230)
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 0
  store %struct.TYPE_28__* %233, %struct.TYPE_28__** %14, align 8
  %234 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sub nsw i32 %238, %239
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %240, %243
  store i32 %244, i32* %15, align 4
  %245 = load i32, i32* %15, align 4
  %246 = call i32 @max(i32 %245, i32 0)
  store i32 %246, i32* %15, align 4
  %247 = load i32, i32* %15, align 4
  %248 = load i32*, i32** %6, align 8
  %249 = load i32, i32* %248, align 4
  %250 = icmp sle i32 %247, %249
  %251 = zext i1 %250 to i32
  %252 = call i32 @assert(i32 %251)
  %253 = load i32, i32* %15, align 4
  %254 = load i32*, i32** %6, align 8
  store i32 %253, i32* %254, align 4
  br label %257

255:                                              ; preds = %225
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  store %struct.TYPE_29__* %256, %struct.TYPE_29__** %9, align 8
  br label %115

257:                                              ; preds = %228, %115
  br label %258

258:                                              ; preds = %257, %97
  br label %414

259:                                              ; preds = %80
  %260 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %271, label %267

267:                                              ; preds = %259
  %268 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %270 = icmp eq %struct.TYPE_29__* %268, %269
  br i1 %270, label %271, label %334

271:                                              ; preds = %267, %259
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @PFM_TABLE, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %334

281:                                              ; preds = %271
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 4
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @PFE_TABLE, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %334

291:                                              ; preds = %281
  %292 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %293, align 8
  store %struct.TYPE_29__* %294, %struct.TYPE_29__** %16, align 8
  br label %295

295:                                              ; preds = %307, %291
  %296 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %297 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @MERF_TAB, align 4
  %302 = load i32, i32* @MERF_ENDPARA, align 4
  %303 = or i32 %301, %302
  %304 = and i32 %300, %303
  %305 = icmp ne i32 %304, 0
  %306 = xor i1 %305, true
  br i1 %306, label %307, label %311

307:                                              ; preds = %295
  %308 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %309 = load i32, i32* @diRun, align 4
  %310 = call %struct.TYPE_29__* @ME_FindItemFwd(%struct.TYPE_29__* %308, i32 %309)
  store %struct.TYPE_29__* %310, %struct.TYPE_29__** %16, align 8
  br label %295

311:                                              ; preds = %295
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_29__*, %struct.TYPE_29__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = sub nsw i32 %316, %323
  %325 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = sub nsw i32 %324, %327
  store i32 %328, i32* %17, align 4
  %329 = load i32*, i32** %6, align 8
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* %17, align 4
  %332 = call i32 @min(i32 %330, i32 %331)
  %333 = load i32*, i32** %6, align 8
  store i32 %332, i32* %333, align 4
  br label %407

334:                                              ; preds = %281, %271, %267
  %335 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %337, i32 0, i32 4
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @PFM_TABLE, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %406

344:                                              ; preds = %334
  %345 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %347, i32 0, i32 4
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @PFE_TABLE, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %406

354:                                              ; preds = %344
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %16, align 8
  %355 = load i32, i32* %7, align 4
  %356 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %357 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = icmp sgt i32 %355, %360
  br i1 %361, label %362, label %371

362:                                              ; preds = %354
  %363 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %364 = load i32, i32* @diRun, align 4
  %365 = call %struct.TYPE_29__* @ME_FindItemBack(%struct.TYPE_29__* %363, i32 %364)
  store %struct.TYPE_29__* %365, %struct.TYPE_29__** %16, align 8
  %366 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %367 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 3
  %370 = load %struct.TYPE_29__*, %struct.TYPE_29__** %369, align 8
  store %struct.TYPE_29__* %370, %struct.TYPE_29__** %18, align 8
  br label %371

371:                                              ; preds = %362, %354
  %372 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %373 = icmp ne %struct.TYPE_29__* %372, null
  br i1 %373, label %379, label %374

374:                                              ; preds = %371
  %375 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %376 = load i32, i32* @diRun, align 4
  %377 = call %struct.TYPE_29__* @ME_FindItemFwd(%struct.TYPE_29__* %375, i32 %376)
  store %struct.TYPE_29__* %377, %struct.TYPE_29__** %16, align 8
  %378 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_29__* %378, %struct.TYPE_29__** %18, align 8
  br label %379

379:                                              ; preds = %374, %371
  %380 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %381 = icmp ne %struct.TYPE_29__* %380, null
  br i1 %381, label %382, label %405

382:                                              ; preds = %379
  %383 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %384 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %389 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = add nsw i32 %387, %392
  %394 = load i32, i32* %7, align 4
  %395 = sub nsw i32 %393, %394
  store i32 %395, i32* %17, align 4
  %396 = load i32, i32* %17, align 4
  %397 = icmp sge i32 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %382
  %399 = load i32*, i32** %6, align 8
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* %17, align 4
  %402 = call i32 @min(i32 %400, i32 %401)
  %403 = load i32*, i32** %6, align 8
  store i32 %402, i32* %403, align 4
  br label %404

404:                                              ; preds = %398, %382
  br label %405

405:                                              ; preds = %404, %379
  br label %406

406:                                              ; preds = %405, %344, %334
  br label %407

407:                                              ; preds = %406, %311
  %408 = load i32*, i32** %6, align 8
  %409 = load i32, i32* %408, align 4
  %410 = icmp slt i32 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %407
  %412 = load i32*, i32** %6, align 8
  store i32 0, i32* %412, align 4
  br label %413

413:                                              ; preds = %411, %407
  br label %414

414:                                              ; preds = %413, %258
  ret void
}

declare dso_local i32 @ME_GetCursorOfs(%struct.TYPE_30__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ME_MoveCursorChars(%struct.TYPE_27__*, %struct.TYPE_30__*, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_21__* @ME_GetTableRowEnd(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @ME_FindItemBack(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.TYPE_29__* @ME_FindItemFwd(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
