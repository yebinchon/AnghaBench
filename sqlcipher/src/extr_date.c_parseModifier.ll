; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_date.c_parseModifier.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_date.c_parseModifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, double, double, i32 }
%struct.TYPE_13__ = type { i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@sqlite3UpperToLower = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"unixepoch\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"utc\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"weekday \00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"start of \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@aXformType = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, %struct.TYPE_13__*)* @parseModifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseModifier(i32* %0, i8* %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  store i32 1, i32* %9, align 4
  %20 = load i32*, i32** @sqlite3UpperToLower, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %526 [
    i32 108, label %27
    i32 117, label %48
    i32 119, label %127
    i32 115, label %185
    i32 43, label %248
    i32 45, label %248
    i32 48, label %248
    i32 49, label %248
    i32 50, label %248
    i32 51, label %248
    i32 52, label %248
    i32 53, label %248
    i32 54, label %248
    i32 55, label %248
    i32 56, label %248
    i32 57, label %248
  ]

27:                                               ; preds = %4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @sqlite3_stricmp(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @sqlite3NotPureFunc(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = call i32 @computeJD(%struct.TYPE_13__* %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @localtimeOffset(%struct.TYPE_13__* %38, i32* %39, i32* %9)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_13__* %45)
  br label %47

47:                                               ; preds = %35, %31, %27
  br label %527

48:                                               ; preds = %4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @sqlite3_stricmp(i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %48
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load double, double* %59, align 8
  %61 = fmul double %60, 1.000000e+03
  %62 = fadd double %61, 0x42E7F907CA644000
  store double %62, double* %10, align 8
  %63 = load double, double* %10, align 8
  %64 = fcmp oge double %63, 0.000000e+00
  br i1 %64, label %65, label %79

65:                                               ; preds = %57
  %66 = load double, double* %10, align 8
  %67 = fcmp olt double %66, 0x42FA6401072FE000
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_13__* %69)
  %71 = load double, double* %10, align 8
  %72 = fptosi double %71 to i32
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 9
  store i32 0, i32* %78, align 4
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %68, %65, %57
  br label %126

80:                                               ; preds = %52, %48
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @sqlite3_stricmp(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %125

84:                                               ; preds = %80
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @sqlite3NotPureFunc(i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %125

88:                                               ; preds = %84
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %88
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %95 = call i32 @computeJD(%struct.TYPE_13__* %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @localtimeOffset(%struct.TYPE_13__* %96, i32* %97, i32* %9)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @SQLITE_OK, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %93
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %109 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_13__* %108)
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @localtimeOffset(%struct.TYPE_13__* %111, i32* %112, i32* %9)
  %114 = sub nsw i32 %110, %113
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %102, %93
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 3
  store i32 1, i32* %121, align 4
  br label %124

122:                                              ; preds = %88
  %123 = load i32, i32* @SQLITE_OK, align 4
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %122, %119
  br label %125

125:                                              ; preds = %124, %84, %80
  br label %126

126:                                              ; preds = %125, %79
  br label %527

127:                                              ; preds = %4
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @sqlite3_strnicmp(i8* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %184

131:                                              ; preds = %127
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 8
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 8
  %136 = call i32 @sqlite3Strlen30(i8* %135)
  %137 = load i32, i32* @SQLITE_UTF8, align 4
  %138 = call i32 @sqlite3AtoF(i8* %133, double* %10, i32 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %184

140:                                              ; preds = %131
  %141 = load double, double* %10, align 8
  %142 = fptosi double %141 to i32
  store i32 %142, i32* %7, align 4
  %143 = sitofp i32 %142 to double
  %144 = load double, double* %10, align 8
  %145 = fcmp oeq double %143, %144
  br i1 %145, label %146, label %184

146:                                              ; preds = %140
  %147 = load i32, i32* %7, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %184

149:                                              ; preds = %146
  %150 = load double, double* %10, align 8
  %151 = fcmp olt double %150, 7.000000e+00
  br i1 %151, label %152, label %184

152:                                              ; preds = %149
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %154 = call i32 @computeYMD_HMS(%struct.TYPE_13__* %153)
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 8
  store i32 0, i32* %156, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  store i32 0, i32* %158, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %160 = call i32 @computeJD(%struct.TYPE_13__* %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 129600000
  %165 = sdiv i32 %164, 86400000
  %166 = srem i32 %165, 7
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %152
  %171 = load i32, i32* %12, align 4
  %172 = sub nsw i32 %171, 7
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %170, %152
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %12, align 4
  %176 = sub nsw i32 %174, %175
  %177 = mul nsw i32 %176, 86400000
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %183 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_13__* %182)
  store i32 0, i32* %9, align 4
  br label %184

184:                                              ; preds = %173, %149, %146, %140, %131, %127
  br label %527

185:                                              ; preds = %4
  %186 = load i8*, i8** %6, align 8
  %187 = call i32 @sqlite3_strnicmp(i8* %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 9)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %527

190:                                              ; preds = %185
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %206, label %195

195:                                              ; preds = %190
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 12
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %195
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %200
  br label %527

206:                                              ; preds = %200, %195, %190
  %207 = load i8*, i8** %6, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 9
  store i8* %208, i8** %6, align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %210 = call i32 @computeYMD(%struct.TYPE_13__* %209)
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 4
  store i32 1, i32* %212, align 8
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 10
  store i32 0, i32* %214, align 8
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 11
  store i32 0, i32* %216, align 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  store double 0.000000e+00, double* %218, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 9
  store i32 0, i32* %220, align 4
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 8
  store i32 0, i32* %222, align 8
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 2
  store i32 0, i32* %224, align 8
  %225 = load i8*, i8** %6, align 8
  %226 = call i32 @sqlite3_stricmp(i8* %225, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %206
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 5
  store i32 1, i32* %230, align 4
  store i32 0, i32* %9, align 4
  br label %247

231:                                              ; preds = %206
  %232 = load i8*, i8** %6, align 8
  %233 = call i32 @sqlite3_stricmp(i8* %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 6
  store i32 1, i32* %237, align 8
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 5
  store i32 1, i32* %239, align 4
  store i32 0, i32* %9, align 4
  br label %246

240:                                              ; preds = %231
  %241 = load i8*, i8** %6, align 8
  %242 = call i32 @sqlite3_stricmp(i8* %241, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %240
  store i32 0, i32* %9, align 4
  br label %245

245:                                              ; preds = %244, %240
  br label %246

246:                                              ; preds = %245, %235
  br label %247

247:                                              ; preds = %246, %228
  br label %527

248:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  store i32 1, i32* %7, align 4
  br label %249

249:                                              ; preds = %277, %248
  %250 = load i8*, i8** %6, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %274

257:                                              ; preds = %249
  %258 = load i8*, i8** %6, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp ne i32 %263, 58
  br i1 %264, label %265, label %274

265:                                              ; preds = %257
  %266 = load i8*, i8** %6, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = call i32 @sqlite3Isspace(i8 signext %270)
  %272 = icmp ne i32 %271, 0
  %273 = xor i1 %272, true
  br label %274

274:                                              ; preds = %265, %257, %249
  %275 = phi i1 [ false, %257 ], [ false, %249 ], [ %273, %265 ]
  br i1 %275, label %276, label %280

276:                                              ; preds = %274
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %7, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %7, align 4
  br label %249

280:                                              ; preds = %274
  %281 = load i8*, i8** %6, align 8
  %282 = load i32, i32* %7, align 4
  %283 = load i32, i32* @SQLITE_UTF8, align 4
  %284 = call i32 @sqlite3AtoF(i8* %281, double* %10, i32 %282, i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %280
  store i32 1, i32* %9, align 4
  br label %527

287:                                              ; preds = %280
  %288 = load i8*, i8** %6, align 8
  %289 = load i32, i32* %7, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %288, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp eq i32 %293, 58
  br i1 %294, label %295, label %344

295:                                              ; preds = %287
  %296 = load i8*, i8** %6, align 8
  store i8* %296, i8** %15, align 8
  %297 = load i8*, i8** %15, align 8
  %298 = load i8, i8* %297, align 1
  %299 = call i32 @sqlite3Isdigit(i8 signext %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %295
  %302 = load i8*, i8** %15, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %15, align 8
  br label %304

304:                                              ; preds = %301, %295
  %305 = call i32 @memset(%struct.TYPE_13__* %16, i32 0, i32 64)
  %306 = load i8*, i8** %15, align 8
  %307 = call i32 @parseHhMmSs(i8* %306, %struct.TYPE_13__* %16)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  br label %527

310:                                              ; preds = %304
  %311 = call i32 @computeJD(%struct.TYPE_13__* %16)
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = sub nsw i32 %313, 43200000
  store i32 %314, i32* %312, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = sdiv i32 %316, 86400000
  store i32 %317, i32* %17, align 4
  %318 = load i32, i32* %17, align 4
  %319 = mul nsw i32 %318, 86400000
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sub nsw i32 %321, %319
  store i32 %322, i32* %320, align 8
  %323 = load i8*, i8** %6, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 0
  %325 = load i8, i8* %324, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp eq i32 %326, 45
  br i1 %327, label %328, label %333

328:                                              ; preds = %310
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = sub nsw i32 0, %330
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 %331, i32* %332, align 8
  br label %333

333:                                              ; preds = %328, %310
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %335 = call i32 @computeJD(%struct.TYPE_13__* %334)
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %337 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_13__* %336)
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = add nsw i32 %342, %339
  store i32 %343, i32* %341, align 8
  store i32 0, i32* %9, align 4
  br label %527

344:                                              ; preds = %287
  %345 = load i32, i32* %7, align 4
  %346 = load i8*, i8** %6, align 8
  %347 = sext i32 %345 to i64
  %348 = getelementptr inbounds i8, i8* %346, i64 %347
  store i8* %348, i8** %6, align 8
  br label %349

349:                                              ; preds = %354, %344
  %350 = load i8*, i8** %6, align 8
  %351 = load i8, i8* %350, align 1
  %352 = call i32 @sqlite3Isspace(i8 signext %351)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %349
  %355 = load i8*, i8** %6, align 8
  %356 = getelementptr inbounds i8, i8* %355, i32 1
  store i8* %356, i8** %6, align 8
  br label %349

357:                                              ; preds = %349
  %358 = load i8*, i8** %6, align 8
  %359 = call i32 @sqlite3Strlen30(i8* %358)
  store i32 %359, i32* %7, align 4
  %360 = load i32, i32* %7, align 4
  %361 = icmp sgt i32 %360, 10
  br i1 %361, label %365, label %362

362:                                              ; preds = %357
  %363 = load i32, i32* %7, align 4
  %364 = icmp slt i32 %363, 3
  br i1 %364, label %365, label %366

365:                                              ; preds = %362, %357
  br label %527

366:                                              ; preds = %362
  %367 = load i32*, i32** @sqlite3UpperToLower, align 8
  %368 = load i8*, i8** %6, align 8
  %369 = load i32, i32* %7, align 4
  %370 = sub nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %368, i64 %371
  %373 = load i8, i8* %372, align 1
  %374 = sext i8 %373 to i64
  %375 = getelementptr inbounds i32, i32* %367, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = icmp eq i32 %376, 115
  br i1 %377, label %378, label %381

378:                                              ; preds = %366
  %379 = load i32, i32* %7, align 4
  %380 = add nsw i32 %379, -1
  store i32 %380, i32* %7, align 4
  br label %381

381:                                              ; preds = %378, %366
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %383 = call i32 @computeJD(%struct.TYPE_13__* %382)
  store i32 1, i32* %9, align 4
  %384 = load double, double* %10, align 8
  %385 = fcmp olt double %384, 0.000000e+00
  %386 = zext i1 %385 to i64
  %387 = select i1 %385, double -5.000000e-01, double 5.000000e-01
  store double %387, double* %13, align 8
  store i32 0, i32* %14, align 4
  br label %388

388:                                              ; preds = %520, %381
  %389 = load i32, i32* %14, align 4
  %390 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %391 = call i32 @ArraySize(%struct.TYPE_12__* %390)
  %392 = icmp slt i32 %389, %391
  br i1 %392, label %393, label %523

393:                                              ; preds = %388
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %395 = load i32, i32* %14, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* %7, align 4
  %401 = icmp eq i32 %399, %400
  br i1 %401, label %402, label %519

402:                                              ; preds = %393
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %404 = load i32, i32* %14, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %406, i32 0, i32 1
  %408 = load i8*, i8** %407, align 8
  %409 = load i8*, i8** %6, align 8
  %410 = load i32, i32* %7, align 4
  %411 = call i32 @sqlite3_strnicmp(i8* %408, i8* %409, i32 %410)
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %519

413:                                              ; preds = %402
  %414 = load double, double* %10, align 8
  %415 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %416 = load i32, i32* %14, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 2
  %420 = load double, double* %419, align 8
  %421 = fneg double %420
  %422 = fcmp ogt double %414, %421
  br i1 %422, label %423, label %519

423:                                              ; preds = %413
  %424 = load double, double* %10, align 8
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %426 = load i32, i32* %14, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 2
  %430 = load double, double* %429, align 8
  %431 = fcmp olt double %424, %430
  br i1 %431, label %432, label %519

432:                                              ; preds = %423
  %433 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %434 = load i32, i32* %14, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 4
  %438 = load i32, i32* %437, align 8
  switch i32 %438, label %501 [
    i32 1, label %439
    i32 2, label %484
  ]

439:                                              ; preds = %432
  %440 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %441 = call i32 @computeYMD_HMS(%struct.TYPE_13__* %440)
  %442 = load double, double* %10, align 8
  %443 = fptosi double %442 to i32
  %444 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %444, i32 0, i32 6
  %446 = load i32, i32* %445, align 8
  %447 = add nsw i32 %446, %443
  store i32 %447, i32* %445, align 8
  %448 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %448, i32 0, i32 6
  %450 = load i32, i32* %449, align 8
  %451 = icmp sgt i32 %450, 0
  br i1 %451, label %452, label %458

452:                                              ; preds = %439
  %453 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %454 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %453, i32 0, i32 6
  %455 = load i32, i32* %454, align 8
  %456 = sub nsw i32 %455, 1
  %457 = sdiv i32 %456, 12
  br label %464

458:                                              ; preds = %439
  %459 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %460 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %459, i32 0, i32 6
  %461 = load i32, i32* %460, align 8
  %462 = sub nsw i32 %461, 12
  %463 = sdiv i32 %462, 12
  br label %464

464:                                              ; preds = %458, %452
  %465 = phi i32 [ %457, %452 ], [ %463, %458 ]
  store i32 %465, i32* %18, align 4
  %466 = load i32, i32* %18, align 4
  %467 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %468 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i32 0, i32 7
  %469 = load i32, i32* %468, align 4
  %470 = add nsw i32 %469, %466
  store i32 %470, i32* %468, align 4
  %471 = load i32, i32* %18, align 4
  %472 = mul nsw i32 %471, 12
  %473 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %474 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %473, i32 0, i32 6
  %475 = load i32, i32* %474, align 8
  %476 = sub nsw i32 %475, %472
  store i32 %476, i32* %474, align 8
  %477 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %477, i32 0, i32 2
  store i32 0, i32* %478, align 8
  %479 = load double, double* %10, align 8
  %480 = fptosi double %479 to i32
  %481 = sitofp i32 %480 to double
  %482 = load double, double* %10, align 8
  %483 = fsub double %482, %481
  store double %483, double* %10, align 8
  br label %501

484:                                              ; preds = %432
  %485 = load double, double* %10, align 8
  %486 = fptosi double %485 to i32
  store i32 %486, i32* %19, align 4
  %487 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %488 = call i32 @computeYMD_HMS(%struct.TYPE_13__* %487)
  %489 = load i32, i32* %19, align 4
  %490 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %491 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %490, i32 0, i32 7
  %492 = load i32, i32* %491, align 4
  %493 = add nsw i32 %492, %489
  store i32 %493, i32* %491, align 4
  %494 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %495 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %494, i32 0, i32 2
  store i32 0, i32* %495, align 8
  %496 = load double, double* %10, align 8
  %497 = fptosi double %496 to i32
  %498 = sitofp i32 %497 to double
  %499 = load double, double* %10, align 8
  %500 = fsub double %499, %498
  store double %500, double* %10, align 8
  br label %501

501:                                              ; preds = %432, %484, %464
  %502 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %503 = call i32 @computeJD(%struct.TYPE_13__* %502)
  %504 = load double, double* %10, align 8
  %505 = load %struct.TYPE_12__*, %struct.TYPE_12__** @aXformType, align 8
  %506 = load i32, i32* %14, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %505, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %508, i32 0, i32 3
  %510 = load double, double* %509, align 8
  %511 = fmul double %504, %510
  %512 = load double, double* %13, align 8
  %513 = fadd double %511, %512
  %514 = fptosi double %513 to i32
  %515 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %516 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = add nsw i32 %517, %514
  store i32 %518, i32* %516, align 8
  store i32 0, i32* %9, align 4
  br label %523

519:                                              ; preds = %423, %413, %402, %393
  br label %520

520:                                              ; preds = %519
  %521 = load i32, i32* %14, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %14, align 4
  br label %388

523:                                              ; preds = %501, %388
  %524 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %525 = call i32 @clearYMD_HMS_TZ(%struct.TYPE_13__* %524)
  br label %527

526:                                              ; preds = %4
  br label %527

527:                                              ; preds = %526, %523, %365, %333, %309, %286, %247, %205, %189, %184, %126, %47
  %528 = load i32, i32* %9, align 4
  ret i32 %528
}

declare dso_local i32 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @sqlite3NotPureFunc(i32*) #1

declare dso_local i32 @computeJD(%struct.TYPE_13__*) #1

declare dso_local i32 @localtimeOffset(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @clearYMD_HMS_TZ(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3_strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3AtoF(i8*, double*, i32, i32) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @computeYMD_HMS(%struct.TYPE_13__*) #1

declare dso_local i32 @computeYMD(%struct.TYPE_13__*) #1

declare dso_local i32 @sqlite3Isspace(i8 signext) #1

declare dso_local i32 @sqlite3Isdigit(i8 signext) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @parseHhMmSs(i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @ArraySize(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
