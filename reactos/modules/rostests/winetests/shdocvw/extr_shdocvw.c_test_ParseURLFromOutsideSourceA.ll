; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shdocvw/extr_shdocvw.c_test_ParseURLFromOutsideSourceA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shdocvw/extr_shdocvw.c_test_ParseURLFromOutsideSourceA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@ParseURL_table = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"#%d: got %d and %d with '%s' (expected %d and %d with '%s')\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"#%d (+1): got %d and %d with '%s' (expected '!=0' and %d with '%s')\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"#%d (==): got %d and %d (expected '0' and %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"#%d (-1): got %d and %d (expected '0' and %d or %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"#%d (buffer): got %d and %d (expected '0' and %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"#%d (unknown): got %d and %d with '%s' (expected '!=0' and %d with '%s')\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ParseURLFromOutsideSourceA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ParseURLFromOutsideSourceA() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %332, %0
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %335

17:                                               ; preds = %12
  %18 = sub i64 %9, 1
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(i8* %11, i8 signext 35, i32 %19)
  %21 = sub i64 %9, 1
  %22 = getelementptr inbounds i8, i8* %11, i64 %21
  store i8 0, i8* %22, align 1
  %23 = trunc i64 %9 to i32
  store i32 %23, i32* %5, align 4
  store i32 0, i32* %3, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pParseURLFromOutsideSourceA(i32 %29, i8* %11, i32* %5, i32* %3)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = icmp eq i32 %31, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %17
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %41, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @lstrcmpA(i8* %11, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %49, %40, %17
  %60 = phi i1 [ false, %40 ], [ false, %17 ], [ %58, %49 ]
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %61, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64, i8* %11, i32 %71, i32 %77, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = icmp sgt i32 %85, 4
  br i1 %86, label %87, label %88

87:                                               ; preds = %59
  br label %332

88:                                               ; preds = %59
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %4, align 4
  %90 = sub i64 %9, 1
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memset(i8* %11, i8 signext 35, i32 %91)
  %93 = sub i64 %9, 1
  %94 = getelementptr inbounds i8, i8* %11, i64 %93
  store i8 0, i8* %94, align 1
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  store i32 0, i32* %3, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pParseURLFromOutsideSourceA(i32 %102, i8* %11, i32* %5, i32* %3)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %88
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %107, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %106
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @lstrcmpA(i8* %11, i32 %121)
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  br label %125

125:                                              ; preds = %115, %106, %88
  %126 = phi i1 [ false, %106 ], [ false, %88 ], [ %124, %115 ]
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %127, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %129, i32 %130, i8* %11, i32 %136, i32 %142)
  %144 = sub i64 %9, 1
  %145 = trunc i64 %144 to i32
  %146 = call i32 @memset(i8* %11, i8 signext 35, i32 %145)
  %147 = sub i64 %9, 1
  %148 = getelementptr inbounds i8, i8* %11, i64 %147
  store i8 0, i8* %148, align 1
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %5, align 4
  store i32 0, i32* %3, align 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @pParseURLFromOutsideSourceA(i32 %155, i8* %11, i32* %5, i32* %3)
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %125
  %160 = load i32, i32* %5, align 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  %168 = icmp eq i32 %160, %167
  br label %169

169:                                              ; preds = %159, %125
  %170 = phi i1 [ false, %125 ], [ %168, %159 ]
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %5, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  %182 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %171, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %173, i32 %174, i32 %181)
  %183 = sub i64 %9, 1
  %184 = trunc i64 %183 to i32
  %185 = call i32 @memset(i8* %11, i8 signext 35, i32 %184)
  %186 = sub i64 %9, 1
  %187 = getelementptr inbounds i8, i8* %11, i64 %186
  store i8 0, i8* %187, align 1
  %188 = load i32, i32* %4, align 4
  %189 = sub nsw i32 %188, 1
  store i32 %189, i32* %5, align 4
  store i32 0, i32* %3, align 4
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @pParseURLFromOutsideSourceA(i32 %195, i8* %11, i32* %5, i32* %3)
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %220

199:                                              ; preds = %169
  %200 = load i32, i32* %5, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %200, %206
  br i1 %207, label %218, label %208

208:                                              ; preds = %199
  %209 = load i32, i32* %5, align 4
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  %217 = icmp eq i32 %209, %216
  br label %218

218:                                              ; preds = %208, %199
  %219 = phi i1 [ true, %199 ], [ %217, %208 ]
  br label %220

220:                                              ; preds = %218, %169
  %221 = phi i1 [ false, %169 ], [ %219, %218 ]
  %222 = zext i1 %221 to i32
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* %5, align 4
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  %239 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %222, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %223, i32 %224, i32 %225, i32 %231, i32 %238)
  %240 = sub i64 %9, 1
  %241 = trunc i64 %240 to i32
  %242 = call i32 @memset(i8* %11, i8 signext 35, i32 %241)
  %243 = sub i64 %9, 1
  %244 = getelementptr inbounds i8, i8* %11, i64 %243
  store i8 0, i8* %244, align 1
  %245 = load i32, i32* %4, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %5, align 4
  store i32 0, i32* %3, align 4
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @pParseURLFromOutsideSourceA(i32 %252, i8* null, i32* %5, i32* %3)
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* %6, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %220
  %257 = load i32, i32* %5, align 4
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %257, %263
  br label %265

265:                                              ; preds = %256, %220
  %266 = phi i1 [ false, %220 ], [ %264, %256 ]
  %267 = zext i1 %266 to i32
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* %5, align 4
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %267, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %268, i32 %269, i32 %270, i32 %276)
  %278 = sub i64 %9, 1
  %279 = trunc i64 %278 to i32
  %280 = call i32 @memset(i8* %11, i8 signext 35, i32 %279)
  %281 = sub i64 %9, 1
  %282 = getelementptr inbounds i8, i8* %11, i64 %281
  store i8 0, i8* %282, align 1
  %283 = load i32, i32* %4, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %5, align 4
  store i32 0, i32* %3, align 4
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @pParseURLFromOutsideSourceA(i32 %290, i8* %11, i32* %5, i32* null)
  store i32 %291, i32* %6, align 4
  %292 = load i32, i32* %6, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %313

294:                                              ; preds = %265
  %295 = load i32, i32* %5, align 4
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %297 = load i32, i32* %7, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %295, %301
  br i1 %302, label %303, label %313

303:                                              ; preds = %294
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %305 = load i32, i32* %7, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @lstrcmpA(i8* %11, i32 %309)
  %311 = icmp ne i32 %310, 0
  %312 = xor i1 %311, true
  br label %313

313:                                              ; preds = %303, %294, %265
  %314 = phi i1 [ false, %294 ], [ false, %265 ], [ %312, %303 ]
  %315 = zext i1 %314 to i32
  %316 = load i32, i32* %7, align 4
  %317 = load i32, i32* %6, align 4
  %318 = load i32, i32* %5, align 4
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %320 = load i32, i32* %7, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ParseURL_table, align 8
  %326 = load i32, i32* %7, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %315, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %316, i32 %317, i32 %318, i8* %11, i32 %324, i32 %330)
  br label %332

332:                                              ; preds = %313, %87
  %333 = load i32, i32* %7, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %7, align 4
  br label %12

335:                                              ; preds = %12
  %336 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %336)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @pParseURLFromOutsideSourceA(i32, i8*, i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, ...) #2

declare dso_local i32 @lstrcmpA(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
