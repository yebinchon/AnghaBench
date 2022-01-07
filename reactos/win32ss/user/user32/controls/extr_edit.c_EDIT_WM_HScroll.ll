; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_HScroll.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_HScroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"SB_LINELEFT\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"SB_LINERIGHT\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SB_PAGELEFT\0A\00", align 1
@HSCROLL_FRACTION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"SB_PAGERIGHT\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"SB_LEFT\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"SB_RIGHT\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SB_THUMBTRACK %d\0A\00", align 1
@EF_HSCROLL_TRACK = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"SB_THUMBPOSITION %d\0A\00", align 1
@GWL_STYLE = common dso_local global i32 0, align 4
@EN_HSCROLL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"SB_ENDSCROLL\0A\00", align 1
@SB_HORZ = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"EM_GETTHUMB: returning %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"EM_LINESCROLL16\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"undocumented WM_HSCROLL action %d (0x%04x), please report\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @EDIT_WM_HScroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_WM_HScroll(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ES_MULTILINE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %392

24:                                               ; preds = %3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %392

32:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %36, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %341 [
    i32 134, label %43
    i32 133, label %55
    i32 132, label %69
    i32 131, label %89
    i32 135, label %111
    i32 130, label %124
    i32 128, label %143
    i32 129, label %209
    i32 136, label %287
    i32 138, label %289
    i32 137, label %338
  ]

43:                                               ; preds = %32
  %44 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %49, %43
  br label %345

55:                                               ; preds = %32
  %56 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %64, %55
  br label %345

69:                                               ; preds = %32
  %70 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 0, %76
  %78 = load i32, i32* @HSCROLL_FRACTION, align 4
  %79 = sdiv i32 %77, %78
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sdiv i32 %79, %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %83, %86
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %75, %69
  br label %345

89:                                               ; preds = %32
  %90 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %93, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %89
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @HSCROLL_FRACTION, align 4
  %101 = sdiv i32 %99, %100
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sdiv i32 %101, %104
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %105, %108
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %98, %89
  br label %345

111:                                              ; preds = %32
  %112 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 0, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %117, %111
  br label %345

124:                                              ; preds = %32
  %125 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %128, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %124
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %136, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %133, %124
  br label %345

143:                                              ; preds = %32
  %144 = load i32, i32* %7, align 4
  %145 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @EF_HSCROLL_TRACK, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @WS_HSCROLL, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %143
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %159, %162
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %8, align 4
  br label %208

165:                                              ; preds = %143
  %166 = load i32, i32* %7, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %7, align 4
  %170 = icmp sgt i32 %169, 100
  br i1 %170, label %171, label %172

171:                                              ; preds = %168, %165
  store i32 0, i32* %4, align 4
  br label %392

172:                                              ; preds = %168
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %176, %180
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = sub nsw i64 %186, %188
  %190 = mul nsw i64 %183, %189
  %191 = sdiv i64 %190, 100
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %11, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %172
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = sub nsw i64 %199, %202
  br label %205

204:                                              ; preds = %172
  br label %205

205:                                              ; preds = %204, %197
  %206 = phi i64 [ %203, %197 ], [ 0, %204 ]
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %205, %157
  br label %345

209:                                              ; preds = %32
  %210 = load i32, i32* %7, align 4
  %211 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @EF_HSCROLL_TRACK, align 4
  %213 = xor i32 %212, -1
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, %213
  store i32 %217, i32* %215, align 4
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @GWL_STYLE, align 4
  %222 = call i32 @GetWindowLongW(i32 %220, i32 %221)
  %223 = load i32, i32* @WS_HSCROLL, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %209
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = sub nsw i64 %228, %231
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %8, align 4
  br label %277

234:                                              ; preds = %209
  %235 = load i32, i32* %7, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* %7, align 4
  %239 = icmp sgt i32 %238, 100
  br i1 %239, label %240, label %241

240:                                              ; preds = %237, %234
  store i32 0, i32* %4, align 4
  br label %392

241:                                              ; preds = %237
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %245, %249
  store i32 %250, i32* %12, align 4
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = sub nsw i64 %255, %257
  %259 = mul nsw i64 %252, %258
  %260 = sdiv i64 %259, 100
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %13, align 4
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %241
  %267 = load i32, i32* %13, align 4
  %268 = sext i32 %267 to i64
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = sub nsw i64 %268, %271
  br label %274

273:                                              ; preds = %241
  br label %274

274:                                              ; preds = %273, %266
  %275 = phi i64 [ %272, %266 ], [ 0, %273 ]
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %8, align 4
  br label %277

277:                                              ; preds = %274, %226
  %278 = load i32, i32* %8, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %286, label %280

280:                                              ; preds = %277
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %282 = call i32 @EDIT_UpdateScrollInfo(%struct.TYPE_8__* %281)
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %284 = load i32, i32* @EN_HSCROLL, align 4
  %285 = call i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_8__* %283, i32 %284)
  br label %286

286:                                              ; preds = %280, %277
  br label %345

287:                                              ; preds = %32
  %288 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %345

289:                                              ; preds = %32
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @GWL_STYLE, align 4
  %294 = call i32 @GetWindowLongW(i32 %292, i32 %293)
  %295 = load i32, i32* @WS_HSCROLL, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %289
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @SB_HORZ, align 4
  %303 = call i32 @GetScrollPos(i32 %301, i32 %302)
  store i32 %303, i32* %14, align 4
  br label %334

304:                                              ; preds = %289
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 4
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = sub nsw i32 %308, %312
  store i32 %313, i32* %15, align 4
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 3
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %330

318:                                              ; preds = %304
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = mul nsw i64 %321, 100
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = load i32, i32* %15, align 4
  %327 = sext i32 %326 to i64
  %328 = sub nsw i64 %325, %327
  %329 = sdiv i64 %322, %328
  br label %331

330:                                              ; preds = %304
  br label %331

331:                                              ; preds = %330, %318
  %332 = phi i64 [ %329, %318 ], [ 0, %330 ]
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %14, align 4
  br label %334

334:                                              ; preds = %331, %298
  %335 = load i32, i32* %14, align 4
  %336 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %335)
  %337 = load i32, i32* %14, align 4
  store i32 %337, i32* %4, align 4
  br label %392

338:                                              ; preds = %32
  %339 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %340 = load i32, i32* %7, align 4
  store i32 %340, i32* %8, align 4
  br label %345

341:                                              ; preds = %32
  %342 = load i32, i32* %6, align 4
  %343 = load i32, i32* %6, align 4
  %344 = call i32 @ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0), i32 %342, i32 %343)
  store i32 0, i32* %4, align 4
  br label %392

345:                                              ; preds = %338, %287, %286, %208, %142, %123, %110, %88, %68, %54
  %346 = load i32, i32* %8, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %391

348:                                              ; preds = %345
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 4
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %352, %356
  store i32 %357, i32* %16, align 4
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = load i32, i32* %8, align 4
  %362 = sext i32 %361 to i64
  %363 = add nsw i64 %360, %362
  %364 = load i32, i32* %16, align 4
  %365 = sext i32 %364 to i64
  %366 = add nsw i64 %363, %365
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 3
  %369 = load i64, i64* %368, align 8
  %370 = icmp sgt i64 %366, %369
  br i1 %370, label %371, label %383

371:                                              ; preds = %348
  %372 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 3
  %374 = load i64, i64* %373, align 8
  %375 = load i32, i32* %16, align 4
  %376 = sext i32 %375 to i64
  %377 = sub nsw i64 %374, %376
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = sub nsw i64 %377, %380
  %382 = trunc i64 %381 to i32
  store i32 %382, i32* %8, align 4
  br label %383

383:                                              ; preds = %371, %348
  %384 = load i32, i32* %8, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %388 = load i32, i32* %8, align 4
  %389 = call i32 @EDIT_EM_LineScroll_internal(%struct.TYPE_8__* %387, i32 %388, i32 0)
  br label %390

390:                                              ; preds = %386, %383
  br label %391

391:                                              ; preds = %390, %345
  store i32 0, i32* %4, align 4
  br label %392

392:                                              ; preds = %391, %341, %334, %240, %171, %31, %23
  %393 = load i32, i32* %4, align 4
  ret i32 %393
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @GetWindowLongW(i32, i32) #1

declare dso_local i32 @EDIT_UpdateScrollInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @EDIT_NOTIFY_PARENT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @GetScrollPos(i32, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

declare dso_local i32 @EDIT_EM_LineScroll_internal(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
