; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708SpuConvert.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708SpuConvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, double, i32, double, i64, i32*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { double, double }
%struct.TYPE_13__ = type { %struct.TYPE_13__* }

@CEA708_WA_DIRECTION_BT = common dso_local global i64 0, align 8
@CEA708_SCREEN_COLS_169 = common dso_local global float 0.000000e+00, align 4
@CEA708_SCREEN_ROWS = common dso_local global float 0.000000e+00, align 4
@CEA708_FONT_TO_LINE_HEIGHT_RATIO = common dso_local global float 0.000000e+00, align 4
@UPDT_REGION_ORIGIN_X_IS_RATIO = common dso_local global i32 0, align 4
@UPDT_REGION_ORIGIN_Y_IS_RATIO = common dso_local global i32 0, align 4
@CEA708_ROW_HEIGHT_STANDARD = common dso_local global i32 0, align 4
@CEA708SpuConvert.vlc_subpicture_aligns = internal constant [141 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 129, i32 130, i32 128, i32 129, i32 130, i32 0, i32 131, i32 131, i32 131], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*)* @CEA708SpuConvert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CEA708SpuConvert(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = call i64 @CEA708_Window_RowCount(%struct.TYPE_15__* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  br label %244

18:                                               ; preds = %13
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = icmp eq %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = call %struct.TYPE_14__* (...) @SubpictureUpdaterSysRegionNew()
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %4, align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %244

25:                                               ; preds = %21, %18
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CEA708_WA_DIRECTION_BT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %25
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %5, align 4
  br label %60

51:                                               ; preds = %32
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %51, %47
  br label %90

61:                                               ; preds = %25
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %5, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %61
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %6, align 4
  br label %89

80:                                               ; preds = %61
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %80, %76
  br label %90

90:                                               ; preds = %89, %60
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 4
  store %struct.TYPE_13__** %92, %struct.TYPE_13__*** %7, align 8
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %132, %90
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %135

98:                                               ; preds = %94
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 7
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %98
  br label %132

108:                                              ; preds = %98
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 7
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  %121 = zext i1 %120 to i32
  %122 = call %struct.TYPE_13__* @CEA708RowToSegments(i32 %115, i32 %121)
  %123 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  store %struct.TYPE_13__* %122, %struct.TYPE_13__** %123, align 8
  %124 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = icmp ne %struct.TYPE_13__* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %108
  %128 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  store %struct.TYPE_13__** %130, %struct.TYPE_13__*** %7, align 8
  br label %131

131:                                              ; preds = %127, %108
  br label %132

132:                                              ; preds = %131, %107
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %94

135:                                              ; preds = %94
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %177

140:                                              ; preds = %135
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 3
  %143 = load double, double* %142, align 8
  %144 = fdiv double %143, 1.000000e+02
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  store double %144, double* %147, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  switch i32 %150, label %168 [
    i32 133, label %151
    i32 134, label %151
    i32 132, label %151
    i32 139, label %159
    i32 140, label %159
    i32 138, label %159
  ]

151:                                              ; preds = %140, %140, %140
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 5
  %154 = load double, double* %153, align 8
  %155 = fdiv double %154, 1.000000e+02
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  store double %155, double* %158, align 8
  br label %176

159:                                              ; preds = %140, %140, %140
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 5
  %162 = load double, double* %161, align 8
  %163 = fdiv double %162, 1.000000e+02
  %164 = fsub double 1.000000e+00, %163
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  store double %164, double* %167, align 8
  br label %176

168:                                              ; preds = %140
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 5
  %171 = load double, double* %170, align 8
  %172 = fdiv double %171, 1.000000e+02
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  store double %172, double* %175, align 8
  br label %176

176:                                              ; preds = %168, %159, %151
  br label %200

177:                                              ; preds = %135
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 3
  %180 = load double, double* %179, align 8
  %181 = fptrunc double %180 to float
  %182 = load float, float* @CEA708_SCREEN_COLS_169, align 4
  %183 = fdiv float %181, %182
  %184 = fpext float %183 to double
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  store double %184, double* %187, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 5
  %190 = load double, double* %189, align 8
  %191 = fptrunc double %190 to float
  %192 = load float, float* @CEA708_SCREEN_ROWS, align 4
  %193 = load float, float* @CEA708_FONT_TO_LINE_HEIGHT_RATIO, align 4
  %194 = fmul float %192, %193
  %195 = fdiv float %191, %194
  %196 = fpext float %195 to double
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  store double %196, double* %199, align 8
  br label %200

200:                                              ; preds = %177, %176
  %201 = load i32, i32* @UPDT_REGION_ORIGIN_X_IS_RATIO, align 4
  %202 = load i32, i32* @UPDT_REGION_ORIGIN_Y_IS_RATIO, align 4
  %203 = or i32 %201, %202
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp sle i32 %210, %213
  br i1 %214, label %215, label %227

215:                                              ; preds = %200
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @CEA708_ROW_HEIGHT_STANDARD, align 4
  %220 = mul nsw i32 %218, %219
  %221 = sitofp i32 %220 to double
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = load double, double* %224, align 8
  %226 = fadd double %225, %221
  store double %226, double* %224, align 8
  br label %227

227:                                              ; preds = %215, %200
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = icmp sle i32 %230, 138
  br i1 %231, label %232, label %241

232:                                              ; preds = %227
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [141 x i32], [141 x i32]* @CEA708SpuConvert.vlc_subpicture_aligns, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  br label %241

241:                                              ; preds = %232, %227
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 2
  store i32 131, i32* %243, align 8
  br label %244

244:                                              ; preds = %241, %24, %17
  ret void
}

declare dso_local i64 @CEA708_Window_RowCount(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @SubpictureUpdaterSysRegionNew(...) #1

declare dso_local %struct.TYPE_13__* @CEA708RowToSegments(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
