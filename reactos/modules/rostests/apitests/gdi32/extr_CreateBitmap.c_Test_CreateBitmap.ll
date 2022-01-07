; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateBitmap.c_Test_CreateBitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/gdi32/extr_CreateBitmap.c_Test_CreateBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"should get a 1x1 bitmap\0A\00", align 1
@DEFAULT_BITMAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"should fail\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"should get a 1x2 bitmap\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"result = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"bmType = %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"bmWidth = %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"bmHeight = %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"bmPlanes = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"bmBitsPixel = %d ExpectedBitsPixel= %d \0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"bmBits = %p\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"should get a 1x2 bitmap %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Expected failure for 33 bpp\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_CreateBitmap() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i64 @CreateBitmap(i32 0, i32 0, i32 0, i32 0, i32* null)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %1, align 8
  %15 = load i32, i32* @DEFAULT_BITMAP, align 4
  %16 = call i64 @GetStockObject(i32 %15)
  %17 = icmp eq i64 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* %1, align 8
  %21 = call i32 @GetObject(i64 %20, i32 28, %struct.TYPE_3__* %2)
  %22 = call i32 @ok_int(i32 %21, i32 28)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ok_int(i32 %24, i32 0)
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ok_int(i32 %27, i32 1)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ok_int(i32 %30, i32 1)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ok_int(i32 %33, i32 2)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ok_int(i32 %36, i32 1)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ok_int(i32 %39, i32 1)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ok_ptr(i32 %42, i32 0)
  %44 = load i64, i64* %1, align 8
  %45 = call i32 @DeleteObject(i64 %44)
  %46 = call i64 @CreateBitmap(i32 1, i32 2, i32 1, i32 33, i32* null)
  store i64 %46, i64* %1, align 8
  %47 = load i64, i64* %1, align 8
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %143, %0
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %52, 32
  br i1 %53, label %54, label %146

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = icmp sle i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  br label %83

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = icmp sle i32 %59, 4
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 4, i32* %8, align 4
  br label %82

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = icmp sle i32 %63, 8
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 8, i32* %8, align 4
  br label %81

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = icmp sle i32 %67, 16
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 16, i32* %8, align 4
  br label %80

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = icmp sle i32 %71, 24
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 24, i32* %8, align 4
  br label %79

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = icmp sle i32 %75, 32
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 32, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %74
  br label %79

79:                                               ; preds = %78, %73
  br label %80

80:                                               ; preds = %79, %69
  br label %81

81:                                               ; preds = %80, %65
  br label %82

82:                                               ; preds = %81, %61
  br label %83

83:                                               ; preds = %82, %57
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @CreateBitmap(i32 1, i32 2, i32 1, i32 %84, i32* null)
  store i64 %85, i64* %1, align 8
  %86 = load i64, i64* %1, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i64, i64* %1, align 8
  %91 = call i32 @GetObject(i64 %90, i32 28, %struct.TYPE_3__* %2)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp sgt i32 %92, 0
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %6, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  %107 = zext i1 %106 to i32
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 2
  %114 = zext i1 %113 to i32
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 1
  %121 = zext i1 %120 to i32
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %131, i32 %132)
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %139)
  %141 = load i64, i64* %1, align 8
  %142 = call i32 @DeleteObject(i64 %141)
  br label %143

143:                                              ; preds = %83
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %51

146:                                              ; preds = %51
  %147 = call i64 @CreateBitmap(i32 1, i32 2, i32 1, i32 1, i32* null)
  store i64 %147, i64* %1, align 8
  %148 = load i64, i64* %1, align 8
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i64, i64* %1, align 8
  %153 = call i32 @GetObject(i64 %152, i32 28, %struct.TYPE_3__* %2)
  %154 = call i32 @ok_int(i32 %153, i32 28)
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ok_int(i32 %156, i32 0)
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @ok_int(i32 %159, i32 1)
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ok_int(i32 %162, i32 2)
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ok_int(i32 %165, i32 2)
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @ok_int(i32 %168, i32 1)
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @ok_int(i32 %171, i32 1)
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ok_ptr(i32 %174, i32 0)
  %176 = load i64, i64* %1, align 8
  %177 = call i32 @DeleteObject(i64 %176)
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %254, %146
  %179 = load i32, i32* %4, align 4
  %180 = icmp sle i32 %179, 32
  br i1 %180, label %181, label %257

181:                                              ; preds = %178
  %182 = load i32, i32* %4, align 4
  %183 = icmp sle i32 %182, 1
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 1, i32* %5, align 4
  br label %210

185:                                              ; preds = %181
  %186 = load i32, i32* %4, align 4
  %187 = icmp sle i32 %186, 4
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 4, i32* %5, align 4
  br label %209

189:                                              ; preds = %185
  %190 = load i32, i32* %4, align 4
  %191 = icmp sle i32 %190, 8
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 8, i32* %5, align 4
  br label %208

193:                                              ; preds = %189
  %194 = load i32, i32* %4, align 4
  %195 = icmp sle i32 %194, 16
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  store i32 16, i32* %5, align 4
  br label %207

197:                                              ; preds = %193
  %198 = load i32, i32* %4, align 4
  %199 = icmp sle i32 %198, 24
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  store i32 24, i32* %5, align 4
  br label %206

201:                                              ; preds = %197
  %202 = load i32, i32* %4, align 4
  %203 = icmp sle i32 %202, 32
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i32 32, i32* %5, align 4
  br label %205

205:                                              ; preds = %204, %201
  br label %206

206:                                              ; preds = %205, %200
  br label %207

207:                                              ; preds = %206, %196
  br label %208

208:                                              ; preds = %207, %192
  br label %209

209:                                              ; preds = %208, %188
  br label %210

210:                                              ; preds = %209, %184
  %211 = load i32, i32* %4, align 4
  %212 = call i64 @CreateBitmap(i32 1, i32 2, i32 1, i32 %211, i32* null)
  store i64 %212, i64* %1, align 8
  %213 = load i64, i64* %1, align 8
  %214 = icmp ne i64 %213, 0
  %215 = zext i1 %214 to i32
  %216 = load i32, i32* %4, align 4
  %217 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %216)
  %218 = load i64, i64* %1, align 8
  %219 = call i32 @GetObject(i64 %218, i32 28, %struct.TYPE_3__* %2)
  %220 = call i32 @ok_int(i32 %219, i32 28)
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %222, %224
  %226 = add nsw i32 %225, 15
  %227 = and i32 %226, -16
  %228 = ashr i32 %227, 3
  store i32 %228, i32* %3, align 4
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @ok_int(i32 %230, i32 0)
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @ok_int(i32 %233, i32 1)
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @ok_int(i32 %236, i32 2)
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @ok_int(i32 %239, i32 1)
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %5, align 4
  %244 = call i32 @ok_int(i32 %242, i32 %243)
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %3, align 4
  %248 = call i32 @ok_int(i32 %246, i32 %247)
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 6
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @ok_ptr(i32 %250, i32 0)
  %252 = load i64, i64* %1, align 8
  %253 = call i32 @DeleteObject(i64 %252)
  br label %254

254:                                              ; preds = %210
  %255 = load i32, i32* %4, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %4, align 4
  br label %178

257:                                              ; preds = %178
  %258 = call i64 @CreateBitmap(i32 1, i32 2, i32 1, i32 33, i32* null)
  store i64 %258, i64* %1, align 8
  %259 = load i64, i64* %1, align 8
  %260 = icmp eq i64 %259, 0
  %261 = zext i1 %260 to i32
  %262 = call i32 (i32, i8*, ...) @ok(i32 %261, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i64 @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @GetObject(i64, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ok_ptr(i32, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
