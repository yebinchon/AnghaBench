; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_ParseCommandLine.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpmux.c_ParseCommandLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i8*, i8*, i64, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i8*, i32 }
%struct.TYPE_6__ = type { i32, i8** }

@.str = private unnamed_addr constant [5 x i8] c"-set\00", align 1
@ACTION_IS_NIL = common dso_local global i64 0, align 8
@ACTION_SET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Multiple actions specified.\0A\00", align 1
@ErrParse = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"-duration\00", align 1
@ACTION_DURATION = common dso_local global i64 0, align 8
@FEATURETYPE_IS_NIL = common dso_local global i64 0, align 8
@FEATURE_DURATION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"ERROR: Multiple features specified.\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-get\00", align 1
@ACTION_GET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"-strip\00", align 1
@ACTION_STRIP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"-frame\00", align 1
@FEATURE_ANMF = common dso_local global i64 0, align 8
@SUBTYPE_ANMF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"-loop\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"-bgcolor\00", align 1
@SUBTYPE_LOOP = common dso_local global i32 0, align 4
@SUBTYPE_BGCOLOR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"-info\00", align 1
@NIL_ACTION = common dso_local global i64 0, align 8
@ACTION_INFO = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%d.%d.%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"ERROR at '%s': Multiple input files specified.\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"ERROR: Unknown option: '%s'.\0A\00", align 1
@.str.18 = private unnamed_addr constant [57 x i8] c"ERROR: Action must be specified before other arguments.\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"exif\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"xmp\00", align 1
@FEATURE_ICCP = common dso_local global i64 0, align 8
@FEATURE_EXIF = common dso_local global i64 0, align 8
@FEATURE_XMP = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32**)* @ParseCommandLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseCommandLine(%struct.TYPE_8__* %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i8**, i8*** %19, align 8
  store i8** %20, i8*** %9, align 8
  %21 = load i32**, i32*** %4, align 8
  %22 = icmp ne i32** %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32**, i32*** %4, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  %26 = bitcast i32** %25 to i8**
  br label %29

27:                                               ; preds = %2
  %28 = load i8**, i8*** %9, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i8** [ %26, %23 ], [ %28, %27 ]
  store i8** %30, i8*** %10, align 8
  br label %31

31:                                               ; preds = %623, %29
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %624

35:                                               ; preds = %31
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %40
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %11, align 8
  %42 = load i8**, i8*** %9, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 45
  br i1 %50, label %51, label %476

51:                                               ; preds = %35
  %52 = load i8**, i8*** %9, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %51
  %60 = load i64, i64* @ACTION_IS_NIL, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i64, i64* @ACTION_SET, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @ErrParse, align 4
  %68 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %475

72:                                               ; preds = %51
  %73 = load i8**, i8*** %9, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %127, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @ErrParse, align 4
  %82 = call i32 @CHECK_NUM_ARGS_AT_LEAST(i32 2, i32 %81)
  %83 = load i64, i64* @ACTION_IS_NIL, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ACTION_DURATION, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85, %80
  %92 = load i64, i64* @ACTION_DURATION, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %98

95:                                               ; preds = %85
  %96 = load i32, i32* @ErrParse, align 4
  %97 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i64, i64* @FEATURETYPE_IS_NIL, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @FEATURE_DURATION, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101, %98
  %108 = load i64, i64* @FEATURE_DURATION, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %114

111:                                              ; preds = %101
  %112 = load i32, i32* @ErrParse, align 4
  %113 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %107
  %115 = load i8**, i8*** %9, align 8
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 2
  store i32 %126, i32* %5, align 4
  br label %474

127:                                              ; preds = %72
  %128 = load i8**, i8*** %9, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %148, label %135

135:                                              ; preds = %127
  %136 = load i64, i64* @ACTION_IS_NIL, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i64, i64* @ACTION_GET, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  br label %145

142:                                              ; preds = %135
  %143 = load i32, i32* @ErrParse, align 4
  %144 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %142, %138
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %473

148:                                              ; preds = %127
  %149 = load i8**, i8*** %9, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %171, label %156

156:                                              ; preds = %148
  %157 = load i64, i64* @ACTION_IS_NIL, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i64, i64* @ACTION_STRIP, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 4
  store i64 0, i64* %164, align 8
  br label %168

165:                                              ; preds = %156
  %166 = load i32, i32* @ErrParse, align 4
  %167 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %165, %159
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %5, align 4
  br label %472

171:                                              ; preds = %148
  %172 = load i8**, i8*** %9, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %237, label %179

179:                                              ; preds = %171
  %180 = load i32, i32* @ErrParse, align 4
  %181 = call i32 @CHECK_NUM_ARGS_AT_LEAST(i32 3, i32 %180)
  %182 = load i64, i64* @ACTION_IS_NIL, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %179
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @ACTION_SET, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %184, %179
  %191 = load i64, i64* @ACTION_SET, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  br label %197

194:                                              ; preds = %184
  %195 = load i32, i32* @ErrParse, align 4
  %196 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %194, %190
  %198 = load i64, i64* @FEATURETYPE_IS_NIL, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %197
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @FEATURE_ANMF, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %200, %197
  %207 = load i64, i64* @FEATURE_ANMF, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  store i64 %207, i64* %209, align 8
  br label %213

210:                                              ; preds = %200
  %211 = load i32, i32* @ErrParse, align 4
  %212 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %210, %206
  %214 = load i32, i32* @SUBTYPE_ANMF, align 4
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  %217 = load i8**, i8*** %9, align 8
  %218 = load i32, i32* %5, align 4
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %217, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  store i8* %222, i8** %224, align 8
  %225 = load i8**, i8*** %9, align 8
  %226 = load i32, i32* %5, align 4
  %227 = add nsw i32 %226, 2
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %225, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  store i8* %230, i8** %232, align 8
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, 3
  store i32 %236, i32* %5, align 4
  br label %471

237:                                              ; preds = %171
  %238 = load i8**, i8*** %9, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @strcmp(i8* %242, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %237
  %246 = load i8**, i8*** %9, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %246, i64 %248
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @strcmp(i8* %250, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %315, label %253

253:                                              ; preds = %245, %237
  %254 = load i32, i32* @ErrParse, align 4
  %255 = call i32 @CHECK_NUM_ARGS_AT_LEAST(i32 2, i32 %254)
  %256 = load i64, i64* @ACTION_IS_NIL, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %253
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @ACTION_SET, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %258, %253
  %265 = load i64, i64* @ACTION_SET, align 8
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  store i64 %265, i64* %267, align 8
  br label %271

268:                                              ; preds = %258
  %269 = load i32, i32* @ErrParse, align 4
  %270 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %268, %264
  %272 = load i64, i64* @FEATURETYPE_IS_NIL, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %271
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @FEATURE_ANMF, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %274, %271
  %281 = load i64, i64* @FEATURE_ANMF, align 8
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  store i64 %281, i64* %283, align 8
  br label %287

284:                                              ; preds = %274
  %285 = load i32, i32* @ErrParse, align 4
  %286 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %285)
  br label %287

287:                                              ; preds = %284, %280
  %288 = load i8**, i8*** %9, align 8
  %289 = load i32, i32* %5, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8*, i8** %288, i64 %290
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @strcmp(i8* %292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %287
  %296 = load i32, i32* @SUBTYPE_LOOP, align 4
  br label %299

297:                                              ; preds = %287
  %298 = load i32, i32* @SUBTYPE_BGCOLOR, align 4
  br label %299

299:                                              ; preds = %297, %295
  %300 = phi i32 [ %296, %295 ], [ %298, %297 ]
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 8
  %303 = load i8**, i8*** %9, align 8
  %304 = load i32, i32* %5, align 4
  %305 = add nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8*, i8** %303, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 0
  store i8* %308, i8** %310, align 8
  %311 = load i32, i32* %6, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %6, align 4
  %313 = load i32, i32* %5, align 4
  %314 = add nsw i32 %313, 2
  store i32 %314, i32* %5, align 4
  br label %470

315:                                              ; preds = %245
  %316 = load i8**, i8*** %9, align 8
  %317 = load i32, i32* %5, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8*, i8** %316, i64 %318
  %320 = load i8*, i8** %319, align 8
  %321 = call i32 @strcmp(i8* %320, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %336, label %323

323:                                              ; preds = %315
  %324 = load i32, i32* @ErrParse, align 4
  %325 = call i32 @CHECK_NUM_ARGS_AT_LEAST(i32 2, i32 %324)
  %326 = load i8**, i8*** %10, align 8
  %327 = load i32, i32* %5, align 4
  %328 = add nsw i32 %327, 1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8*, i8** %326, i64 %329
  %331 = load i8*, i8** %330, align 8
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 2
  store i8* %331, i8** %333, align 8
  %334 = load i32, i32* %5, align 4
  %335 = add nsw i32 %334, 2
  store i32 %335, i32* %5, align 4
  br label %469

336:                                              ; preds = %315
  %337 = load i8**, i8*** %9, align 8
  %338 = load i32, i32* %5, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8*, i8** %337, i64 %339
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @strcmp(i8* %341, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %372, label %344

344:                                              ; preds = %336
  %345 = load i32, i32* @ErrParse, align 4
  %346 = call i32 @CHECK_NUM_ARGS_EXACTLY(i32 2, i32 %345)
  %347 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @NIL_ACTION, align 8
  %351 = icmp ne i64 %349, %350
  br i1 %351, label %352, label %355

352:                                              ; preds = %344
  %353 = load i32, i32* @ErrParse, align 4
  %354 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %353)
  br label %369

355:                                              ; preds = %344
  %356 = load i64, i64* @ACTION_INFO, align 8
  %357 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 0
  store i64 %356, i64* %358, align 8
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 4
  store i64 0, i64* %360, align 8
  %361 = load i8**, i8*** %10, align 8
  %362 = load i32, i32* %5, align 4
  %363 = add nsw i32 %362, 1
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8*, i8** %361, i64 %364
  %366 = load i8*, i8** %365, align 8
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 3
  store i8* %366, i8** %368, align 8
  br label %369

369:                                              ; preds = %355, %352
  %370 = load i32, i32* %5, align 4
  %371 = add nsw i32 %370, 2
  store i32 %371, i32* %5, align 4
  br label %468

372:                                              ; preds = %336
  %373 = load i8**, i8*** %9, align 8
  %374 = load i32, i32* %5, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8*, i8** %373, i64 %375
  %377 = load i8*, i8** %376, align 8
  %378 = call i32 @strcmp(i8* %377, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %372
  %381 = load i8**, i8*** %9, align 8
  %382 = load i32, i32* %5, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i8*, i8** %381, i64 %383
  %385 = load i8*, i8** %384, align 8
  %386 = call i32 @strcmp(i8* %385, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %395, label %388

388:                                              ; preds = %380, %372
  %389 = call i32 (...) @PrintHelp()
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %391 = call i32 @DeleteConfig(%struct.TYPE_8__* %390)
  %392 = load i32**, i32*** %4, align 8
  %393 = call i32 @LOCAL_FREE(i32** %392)
  %394 = call i32 @exit(i32 0) #3
  unreachable

395:                                              ; preds = %380
  %396 = load i8**, i8*** %9, align 8
  %397 = load i32, i32* %5, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8*, i8** %396, i64 %398
  %400 = load i8*, i8** %399, align 8
  %401 = call i32 @strcmp(i8* %400, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %419, label %403

403:                                              ; preds = %395
  %404 = call i32 (...) @WebPGetMuxVersion()
  store i32 %404, i32* %12, align 4
  %405 = load i32, i32* %12, align 4
  %406 = ashr i32 %405, 16
  %407 = and i32 %406, 255
  %408 = load i32, i32* %12, align 4
  %409 = ashr i32 %408, 8
  %410 = and i32 %409, 255
  %411 = load i32, i32* %12, align 4
  %412 = and i32 %411, 255
  %413 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %407, i32 %410, i32 %412)
  %414 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %415 = call i32 @DeleteConfig(%struct.TYPE_8__* %414)
  %416 = load i32**, i32*** %4, align 8
  %417 = call i32 @LOCAL_FREE(i32** %416)
  %418 = call i32 @exit(i32 0) #3
  unreachable

419:                                              ; preds = %395
  %420 = load i8**, i8*** %9, align 8
  %421 = load i32, i32* %5, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i8*, i8** %420, i64 %422
  %424 = load i8*, i8** %423, align 8
  %425 = call i32 @strcmp(i8* %424, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %457, label %427

427:                                              ; preds = %419
  %428 = load i32, i32* %5, align 4
  %429 = load i32, i32* %8, align 4
  %430 = sub nsw i32 %429, 1
  %431 = icmp slt i32 %428, %430
  br i1 %431, label %432, label %456

432:                                              ; preds = %427
  %433 = load i32, i32* %5, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %5, align 4
  %435 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 3
  %437 = load i8*, i8** %436, align 8
  %438 = icmp eq i8* %437, null
  br i1 %438, label %439, label %447

439:                                              ; preds = %432
  %440 = load i8**, i8*** %10, align 8
  %441 = load i32, i32* %5, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i8*, i8** %440, i64 %442
  %444 = load i8*, i8** %443, align 8
  %445 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i32 0, i32 3
  store i8* %444, i8** %446, align 8
  br label %455

447:                                              ; preds = %432
  %448 = load i8**, i8*** %9, align 8
  %449 = load i32, i32* %5, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i8*, i8** %448, i64 %450
  %452 = load i8*, i8** %451, align 8
  %453 = load i32, i32* @ErrParse, align 4
  %454 = call i32 @ERROR_GOTO2(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i8* %452, i32 %453)
  br label %455

455:                                              ; preds = %447, %439
  br label %456

456:                                              ; preds = %455, %427
  br label %624

457:                                              ; preds = %419
  %458 = load i8**, i8*** %9, align 8
  %459 = load i32, i32* %5, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i8*, i8** %458, i64 %460
  %462 = load i8*, i8** %461, align 8
  %463 = load i32, i32* @ErrParse, align 4
  %464 = call i32 @ERROR_GOTO2(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i8* %462, i32 %463)
  br label %465

465:                                              ; preds = %457
  br label %466

466:                                              ; preds = %465
  br label %467

467:                                              ; preds = %466
  br label %468

468:                                              ; preds = %467, %369
  br label %469

469:                                              ; preds = %468, %323
  br label %470

470:                                              ; preds = %469, %299
  br label %471

471:                                              ; preds = %470, %213
  br label %472

472:                                              ; preds = %471, %168
  br label %473

473:                                              ; preds = %472, %145
  br label %474

474:                                              ; preds = %473, %114
  br label %475

475:                                              ; preds = %474, %69
  br label %623

476:                                              ; preds = %35
  %477 = load i64, i64* @ACTION_IS_NIL, align 8
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %482

479:                                              ; preds = %476
  %480 = load i32, i32* @ErrParse, align 4
  %481 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0), i32 %480)
  br label %482

482:                                              ; preds = %479, %476
  %483 = load i8**, i8*** %9, align 8
  %484 = load i32, i32* %5, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i8*, i8** %483, i64 %485
  %487 = load i8*, i8** %486, align 8
  %488 = call i32 @strcmp(i8* %487, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %506

490:                                              ; preds = %482
  %491 = load i8**, i8*** %9, align 8
  %492 = load i32, i32* %5, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i8*, i8** %491, i64 %493
  %495 = load i8*, i8** %494, align 8
  %496 = call i32 @strcmp(i8* %495, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %506

498:                                              ; preds = %490
  %499 = load i8**, i8*** %9, align 8
  %500 = load i32, i32* %5, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i8*, i8** %499, i64 %501
  %503 = load i8*, i8** %502, align 8
  %504 = call i32 @strcmp(i8* %503, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %565, label %506

506:                                              ; preds = %498, %490, %482
  %507 = load i64, i64* @FEATURETYPE_IS_NIL, align 8
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %537

509:                                              ; preds = %506
  %510 = load i8**, i8*** %9, align 8
  %511 = load i32, i32* %5, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i8*, i8** %510, i64 %512
  %514 = load i8*, i8** %513, align 8
  %515 = call i32 @strcmp(i8* %514, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0))
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %519, label %517

517:                                              ; preds = %509
  %518 = load i64, i64* @FEATURE_ICCP, align 8
  br label %533

519:                                              ; preds = %509
  %520 = load i8**, i8*** %9, align 8
  %521 = load i32, i32* %5, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i8*, i8** %520, i64 %522
  %524 = load i8*, i8** %523, align 8
  %525 = call i32 @strcmp(i8* %524, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %529, label %527

527:                                              ; preds = %519
  %528 = load i64, i64* @FEATURE_EXIF, align 8
  br label %531

529:                                              ; preds = %519
  %530 = load i64, i64* @FEATURE_XMP, align 8
  br label %531

531:                                              ; preds = %529, %527
  %532 = phi i64 [ %528, %527 ], [ %530, %529 ]
  br label %533

533:                                              ; preds = %531, %517
  %534 = phi i64 [ %518, %517 ], [ %532, %531 ]
  %535 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %536 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %535, i32 0, i32 1
  store i64 %534, i64* %536, align 8
  br label %540

537:                                              ; preds = %506
  %538 = load i32, i32* @ErrParse, align 4
  %539 = call i32 @ERROR_GOTO1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %538)
  br label %540

540:                                              ; preds = %537, %533
  %541 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %542 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = load i64, i64* @ACTION_SET, align 8
  %545 = icmp eq i64 %543, %544
  br i1 %545, label %546, label %561

546:                                              ; preds = %540
  %547 = load i32, i32* @ErrParse, align 4
  %548 = call i32 @CHECK_NUM_ARGS_AT_LEAST(i32 2, i32 %547)
  %549 = load i8**, i8*** %10, align 8
  %550 = load i32, i32* %5, align 4
  %551 = add nsw i32 %550, 1
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i8*, i8** %549, i64 %552
  %554 = load i8*, i8** %553, align 8
  %555 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %556 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %555, i32 0, i32 1
  store i8* %554, i8** %556, align 8
  %557 = load i32, i32* %6, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %6, align 4
  %559 = load i32, i32* %5, align 4
  %560 = add nsw i32 %559, 2
  store i32 %560, i32* %5, align 4
  br label %564

561:                                              ; preds = %540
  %562 = load i32, i32* %5, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %5, align 4
  br label %564

564:                                              ; preds = %561, %546
  br label %622

565:                                              ; preds = %498
  %566 = load i8**, i8*** %9, align 8
  %567 = load i32, i32* %5, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i8*, i8** %566, i64 %568
  %570 = load i8*, i8** %569, align 8
  %571 = call i32 @strcmp(i8* %570, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %597, label %573

573:                                              ; preds = %565
  %574 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %575 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %574, i32 0, i32 0
  %576 = load i64, i64* %575, align 8
  %577 = load i64, i64* @ACTION_GET, align 8
  %578 = icmp eq i64 %576, %577
  br i1 %578, label %579, label %597

579:                                              ; preds = %573
  %580 = load i32, i32* @ErrParse, align 4
  %581 = call i32 @CHECK_NUM_ARGS_AT_LEAST(i32 2, i32 %580)
  %582 = load i64, i64* @FEATURE_ANMF, align 8
  %583 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %584 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %583, i32 0, i32 1
  store i64 %582, i64* %584, align 8
  %585 = load i8**, i8*** %9, align 8
  %586 = load i32, i32* %5, align 4
  %587 = add nsw i32 %586, 1
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i8*, i8** %585, i64 %588
  %590 = load i8*, i8** %589, align 8
  %591 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %592 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %591, i32 0, i32 0
  store i8* %590, i8** %592, align 8
  %593 = load i32, i32* %6, align 4
  %594 = add nsw i32 %593, 1
  store i32 %594, i32* %6, align 4
  %595 = load i32, i32* %5, align 4
  %596 = add nsw i32 %595, 2
  store i32 %596, i32* %5, align 4
  br label %621

597:                                              ; preds = %573, %565
  %598 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %599 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %598, i32 0, i32 3
  %600 = load i8*, i8** %599, align 8
  %601 = icmp eq i8* %600, null
  br i1 %601, label %602, label %610

602:                                              ; preds = %597
  %603 = load i8**, i8*** %10, align 8
  %604 = load i32, i32* %5, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i8*, i8** %603, i64 %605
  %607 = load i8*, i8** %606, align 8
  %608 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %609 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %608, i32 0, i32 3
  store i8* %607, i8** %609, align 8
  br label %618

610:                                              ; preds = %597
  %611 = load i8**, i8*** %9, align 8
  %612 = load i32, i32* %5, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i8*, i8** %611, i64 %613
  %615 = load i8*, i8** %614, align 8
  %616 = load i32, i32* @ErrParse, align 4
  %617 = call i32 @ERROR_GOTO2(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i8* %615, i32 %616)
  br label %618

618:                                              ; preds = %610, %602
  %619 = load i32, i32* %5, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %5, align 4
  br label %621

621:                                              ; preds = %618, %579
  br label %622

622:                                              ; preds = %621, %564
  br label %623

623:                                              ; preds = %622, %475
  br label %31

624:                                              ; preds = %456, %31
  br label %625

625:                                              ; preds = %624
  %626 = load i32, i32* %7, align 4
  ret i32 %626
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ERROR_GOTO1(i8*, i32) #1

declare dso_local i32 @CHECK_NUM_ARGS_AT_LEAST(i32, i32) #1

declare dso_local i32 @CHECK_NUM_ARGS_EXACTLY(i32, i32) #1

declare dso_local i32 @PrintHelp(...) #1

declare dso_local i32 @DeleteConfig(%struct.TYPE_8__*) #1

declare dso_local i32 @LOCAL_FREE(i32**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @WebPGetMuxVersion(...) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @ERROR_GOTO2(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
