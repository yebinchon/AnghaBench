; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_set_decode_area.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_set_decode_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_21__, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i64, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_16__, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@J2K_STATE_TPHSOT = common dso_local global i64 0, align 8
@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Need to decode the main header before begin to decode the remaining codestream.\0A\00", align 1
@OPJ_FALSE = common dso_local global i64 0, align 8
@EVT_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"No decoded area parameters, set the decoded area to the whole image\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Left position of the decoded area (region_x0=%d) should be >= 0.\0A\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"Left position of the decoded area (region_x0=%d) is outside the image area (Xsiz=%d).\0A\00", align 1
@EVT_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [88 x i8] c"Left position of the decoded area (region_x0=%d) is outside the image area (XOsiz=%d).\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"Up position of the decoded area (region_y0=%d) should be >= 0.\0A\00", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"Up position of the decoded area (region_y0=%d) is outside the image area (Ysiz=%d).\0A\00", align 1
@.str.7 = private unnamed_addr constant [86 x i8] c"Up position of the decoded area (region_y0=%d) is outside the image area (YOsiz=%d).\0A\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"Right position of the decoded area (region_x1=%d) should be > 0.\0A\00", align 1
@.str.9 = private unnamed_addr constant [89 x i8] c"Right position of the decoded area (region_x1=%d) is outside the image area (XOsiz=%d).\0A\00", align 1
@.str.10 = private unnamed_addr constant [88 x i8] c"Right position of the decoded area (region_x1=%d) is outside the image area (Xsiz=%d).\0A\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"Bottom position of the decoded area (region_y1=%d) should be > 0.\0A\00", align 1
@.str.12 = private unnamed_addr constant [90 x i8] c"Bottom position of the decoded area (region_y1=%d) is outside the image area (YOsiz=%d).\0A\00", align 1
@.str.13 = private unnamed_addr constant [89 x i8] c"Bottom position of the decoded area (region_y1=%d) is outside the image area (Ysiz=%d).\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Setting decoding area to %d,%d,%d,%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @opj_j2k_set_decode_area(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i64 %2, i64 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %16, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %17, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %46

30:                                               ; preds = %7
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %60

46:                                               ; preds = %36, %30, %7
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @J2K_STATE_TPHSOT, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* @EVT_ERROR, align 4
  %57 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %55, i32 %56, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %58 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %58, i64* %8, align 8
  br label %443

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %45
  store i64 0, i64* %19, align 8
  br label %61

61:                                               ; preds = %80, %60
  %62 = load i64, i64* %19, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = load i64, i64* %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %67
  %81 = load i64, i64* %19, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %19, align 8
  br label %61

83:                                               ; preds = %61
  %84 = load i64, i64* %11, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %144, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %144, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* %13, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %144, label %92

92:                                               ; preds = %89
  %93 = load i64, i64* %14, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %144, label %95

95:                                               ; preds = %92
  %96 = load i32*, i32** %15, align 8
  %97 = load i32, i32* @EVT_INFO, align 4
  %98 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %96, i32 %97, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 3
  store i32 %109, i32* %113, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 4
  store i32 %116, i32* %120, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 3
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 4
  store i64 %138, i64* %140, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = call i64 @opj_j2k_update_image_dimensions(%struct.TYPE_20__* %141, i32* %142)
  store i64 %143, i64* %8, align 8
  br label %443

144:                                              ; preds = %92, %89, %86, %83
  %145 = load i64, i64* %11, align 8
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i32*, i32** %15, align 8
  %149 = load i32, i32* @EVT_ERROR, align 4
  %150 = load i64, i64* %11, align 8
  %151 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %148, i32 %149, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %150)
  %152 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %152, i64* %8, align 8
  br label %443

153:                                              ; preds = %144
  %154 = load i64, i64* %11, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp ugt i64 %154, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %153
  %160 = load i32*, i32** %15, align 8
  %161 = load i32, i32* @EVT_ERROR, align 4
  %162 = load i64, i64* %11, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %160, i32 %161, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i64 %162, i64 %165)
  %167 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %167, i64* %8, align 8
  br label %443

168:                                              ; preds = %153
  %169 = load i64, i64* %11, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ult i64 %169, %172
  br i1 %173, label %174, label %191

174:                                              ; preds = %168
  %175 = load i32*, i32** %15, align 8
  %176 = load i32, i32* @EVT_WARNING, align 4
  %177 = load i64, i64* %11, align 8
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %175, i32 %176, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.4, i64 0, i64 0), i64 %177, i64 %180)
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  br label %208

191:                                              ; preds = %168
  %192 = load i64, i64* %11, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = sub i64 %192, %195
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = udiv i64 %196, %199
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 1
  store i64 %200, i64* %204, align 8
  %205 = load i64, i64* %11, align 8
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 1
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %191, %174
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  %211 = load i64, i64* %12, align 8
  %212 = icmp slt i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %210
  %214 = load i32*, i32** %15, align 8
  %215 = load i32, i32* @EVT_ERROR, align 4
  %216 = load i64, i64* %12, align 8
  %217 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %214, i32 %215, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i64 %216)
  %218 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %218, i64* %8, align 8
  br label %443

219:                                              ; preds = %210
  %220 = load i64, i64* %12, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = icmp ugt i64 %220, %223
  br i1 %224, label %225, label %234

225:                                              ; preds = %219
  %226 = load i32*, i32** %15, align 8
  %227 = load i32, i32* @EVT_ERROR, align 4
  %228 = load i64, i64* %12, align 8
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %226, i32 %227, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i64 %228, i64 %231)
  %233 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %233, i64* %8, align 8
  br label %443

234:                                              ; preds = %219
  %235 = load i64, i64* %12, align 8
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = icmp ult i64 %235, %238
  br i1 %239, label %240, label %257

240:                                              ; preds = %234
  %241 = load i32*, i32** %15, align 8
  %242 = load i32, i32* @EVT_WARNING, align 4
  %243 = load i64, i64* %12, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %241, i32 %242, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.7, i64 0, i64 0), i64 %243, i64 %246)
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 2
  store i64 0, i64* %251, align 8
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 2
  store i64 %254, i64* %256, align 8
  br label %274

257:                                              ; preds = %234
  %258 = load i64, i64* %12, align 8
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = sub i64 %258, %261
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = udiv i64 %262, %265
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 2
  store i64 %266, i64* %270, align 8
  %271 = load i64, i64* %12, align 8
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 2
  store i64 %271, i64* %273, align 8
  br label %274

274:                                              ; preds = %257, %240
  br label %275

275:                                              ; preds = %274
  br label %276

276:                                              ; preds = %275
  %277 = load i64, i64* %13, align 8
  %278 = icmp sle i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %276
  %280 = load i32*, i32** %15, align 8
  %281 = load i32, i32* @EVT_ERROR, align 4
  %282 = load i64, i64* %13, align 8
  %283 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %280, i32 %281, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i64 %282)
  %284 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %284, i64* %8, align 8
  br label %443

285:                                              ; preds = %276
  %286 = load i64, i64* %13, align 8
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = icmp ult i64 %286, %289
  br i1 %290, label %291, label %300

291:                                              ; preds = %285
  %292 = load i32*, i32** %15, align 8
  %293 = load i32, i32* @EVT_ERROR, align 4
  %294 = load i64, i64* %13, align 8
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %292, i32 %293, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.9, i64 0, i64 0), i64 %294, i64 %297)
  %299 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %299, i64* %8, align 8
  br label %443

300:                                              ; preds = %285
  %301 = load i64, i64* %13, align 8
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = icmp ugt i64 %301, %304
  br i1 %305, label %306, label %326

306:                                              ; preds = %300
  %307 = load i32*, i32** %15, align 8
  %308 = load i32, i32* @EVT_WARNING, align 4
  %309 = load i64, i64* %13, align 8
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %307, i32 %308, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.10, i64 0, i64 0), i64 %309, i64 %312)
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 3
  store i32 %316, i32* %320, align 8
  %321 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 3
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 3
  store i64 %323, i64* %325, align 8
  br label %344

326:                                              ; preds = %300
  %327 = load i64, i64* %13, align 8
  %328 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = sub nsw i64 %327, %330
  %332 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %333 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %332, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  %335 = call i64 @opj_int_ceildiv(i64 %331, i64 %334)
  %336 = trunc i64 %335 to i32
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 3
  store i32 %336, i32* %340, align 8
  %341 = load i64, i64* %13, align 8
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 3
  store i64 %341, i64* %343, align 8
  br label %344

344:                                              ; preds = %326, %306
  br label %345

345:                                              ; preds = %344
  br label %346

346:                                              ; preds = %345
  %347 = load i64, i64* %14, align 8
  %348 = icmp sle i64 %347, 0
  br i1 %348, label %349, label %355

349:                                              ; preds = %346
  %350 = load i32*, i32** %15, align 8
  %351 = load i32, i32* @EVT_ERROR, align 4
  %352 = load i64, i64* %14, align 8
  %353 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %350, i32 %351, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0), i64 %352)
  %354 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %354, i64* %8, align 8
  br label %443

355:                                              ; preds = %346
  %356 = load i64, i64* %14, align 8
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = icmp ult i64 %356, %359
  br i1 %360, label %361, label %370

361:                                              ; preds = %355
  %362 = load i32*, i32** %15, align 8
  %363 = load i32, i32* @EVT_ERROR, align 4
  %364 = load i64, i64* %14, align 8
  %365 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %366 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %362, i32 %363, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.12, i64 0, i64 0), i64 %364, i64 %367)
  %369 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %369, i64* %8, align 8
  br label %443

370:                                              ; preds = %355
  br label %371

371:                                              ; preds = %370
  %372 = load i64, i64* %14, align 8
  %373 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %374 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %373, i32 0, i32 4
  %375 = load i64, i64* %374, align 8
  %376 = icmp ugt i64 %372, %375
  br i1 %376, label %377, label %397

377:                                              ; preds = %371
  %378 = load i32*, i32** %15, align 8
  %379 = load i32, i32* @EVT_WARNING, align 4
  %380 = load i64, i64* %14, align 8
  %381 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %382 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %381, i32 0, i32 4
  %383 = load i64, i64* %382, align 8
  %384 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %378, i32 %379, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.13, i64 0, i64 0), i64 %380, i64 %383)
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %390, i32 0, i32 4
  store i32 %387, i32* %391, align 4
  %392 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 4
  %394 = load i64, i64* %393, align 8
  %395 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 4
  store i64 %394, i64* %396, align 8
  br label %415

397:                                              ; preds = %371
  %398 = load i64, i64* %14, align 8
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %400 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %399, i32 0, i32 4
  %401 = load i64, i64* %400, align 8
  %402 = sub nsw i64 %398, %401
  %403 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %404 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %403, i32 0, i32 5
  %405 = load i64, i64* %404, align 8
  %406 = call i64 @opj_int_ceildiv(i64 %402, i64 %405)
  %407 = trunc i64 %406 to i32
  %408 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %409 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 4
  store i32 %407, i32* %411, align 4
  %412 = load i64, i64* %14, align 8
  %413 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %414 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %413, i32 0, i32 4
  store i64 %412, i64* %414, align 8
  br label %415

415:                                              ; preds = %397, %377
  %416 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %417 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %418, i32 0, i32 5
  store i32 1, i32* %419, align 8
  %420 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %421 = load i32*, i32** %15, align 8
  %422 = call i64 @opj_j2k_update_image_dimensions(%struct.TYPE_20__* %420, i32* %421)
  store i64 %422, i64* %18, align 8
  %423 = load i64, i64* %18, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %441

425:                                              ; preds = %415
  %426 = load i32*, i32** %15, align 8
  %427 = load i32, i32* @EVT_INFO, align 4
  %428 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %429 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %428, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %432 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %431, i32 0, i32 2
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %435 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %434, i32 0, i32 3
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %438 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %437, i32 0, i32 4
  %439 = load i64, i64* %438, align 8
  %440 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %426, i32 %427, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i64 %430, i64 %433, i64 %436, i64 %439)
  br label %441

441:                                              ; preds = %425, %415
  %442 = load i64, i64* %18, align 8
  store i64 %442, i64* %8, align 8
  br label %443

443:                                              ; preds = %441, %361, %349, %291, %279, %225, %213, %159, %147, %95, %54
  %444 = load i64, i64* %8, align 8
  ret i64 %444
}

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, ...) #1

declare dso_local i64 @opj_j2k_update_image_dimensions(%struct.TYPE_20__*, i32*) #1

declare dso_local i64 @opj_int_ceildiv(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
