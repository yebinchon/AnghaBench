; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shdocvw/extr_shdocvw.c_test_URLSubRegQueryA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shdocvw/extr_shdocvw.c_test_URLSubRegQueryA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@regpath_iemain = common dso_local global i32 0, align 4
@default_page_url = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"got 0x%x (expected E_FAIL or S_OK)\0A\00", align 1
@start_page = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"got 0x%x and %d (expected S_OK)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"got 0x%x and %d (expected S_OK and %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"got 0x%x and %d (expected S_OK and 0)\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"got 0x%x and %d (expected S_OK and INTERNET_MAX_URL_LENGTH - 1)\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"got 0x%x (expected S_OK)\0A\00", align 1
@does_not_exist = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"got 0x%x (expected E_FAIL)\0A\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@regpath_shellfolders = common dso_local global i32 0, align 4
@appdata = common dso_local global i32 0, align 4
@common_appdata = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_URLSubRegQueryA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_URLSubRegQueryA() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = sub i64 %7, 1
  %11 = trunc i64 %10 to i32
  %12 = call i32 @memset(i8* %9, i8 signext 35, i32 %11)
  %13 = sub i64 %7, 1
  %14 = getelementptr inbounds i8, i8* %9, i64 %13
  store i8 0, i8* %14, align 1
  %15 = load i32, i32* @regpath_iemain, align 4
  %16 = load i32, i32* @default_page_url, align 4
  %17 = load i32, i32* @REG_SZ, align 4
  %18 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %19 = call i64 @pURLSubRegQueryA(i32 %15, i32 %16, i32 %17, i8* %9, i32 %18, i32 -1)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @E_FAIL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %0
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %0
  %28 = phi i1 [ true, %0 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %3, align 8
  %31 = call i32 (i32, i8*, i64, ...) @ok(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = sub i64 %7, 1
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(i8* %9, i8 signext 35, i32 %33)
  %35 = sub i64 %7, 1
  %36 = getelementptr inbounds i8, i8* %9, i64 %35
  store i8 0, i8* %36, align 1
  %37 = load i32, i32* @regpath_iemain, align 4
  %38 = load i32, i32* @start_page, align 4
  %39 = load i32, i32* @REG_SZ, align 4
  %40 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %41 = call i64 @pURLSubRegQueryA(i32 %37, i32 %38, i32 %39, i8* %9, i32 %40, i32 -1)
  store i64 %41, i64* %3, align 8
  %42 = call i32 @lstrlenA(i8* %9)
  store i32 %42, i32* %5, align 4
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i32, i8*, i64, ...) @ok(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %47, i32 %48)
  %50 = sub i64 %7, 1
  %51 = trunc i64 %50 to i32
  %52 = call i32 @memset(i8* %9, i8 signext 35, i32 %51)
  %53 = sub i64 %7, 1
  %54 = getelementptr inbounds i8, i8* %9, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* @regpath_iemain, align 4
  %56 = load i32, i32* @start_page, align 4
  %57 = load i32, i32* @REG_SZ, align 4
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i64 @pURLSubRegQueryA(i32 %55, i32 %56, i32 %57, i8* %9, i32 %59, i32 -1)
  store i64 %60, i64* %3, align 8
  %61 = call i32 @lstrlenA(i8* %9)
  store i32 %61, i32* %4, align 4
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %27
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %66, %67
  br label %69

69:                                               ; preds = %65, %27
  %70 = phi i1 [ false, %27 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (i32, i8*, i64, ...) @ok(i32 %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %72, i32 %73, i32 %74)
  %76 = sub i64 %7, 1
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memset(i8* %9, i8 signext 35, i32 %77)
  %79 = sub i64 %7, 1
  %80 = getelementptr inbounds i8, i8* %9, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load i32, i32* @regpath_iemain, align 4
  %82 = load i32, i32* @start_page, align 4
  %83 = load i32, i32* @REG_SZ, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i64 @pURLSubRegQueryA(i32 %81, i32 %82, i32 %83, i8* %9, i32 %84, i32 -1)
  store i64 %85, i64* %3, align 8
  %86 = call i32 @lstrlenA(i8* %9)
  store i32 %86, i32* %4, align 4
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* @S_OK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %69
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp eq i32 %91, %93
  br label %95

95:                                               ; preds = %90, %69
  %96 = phi i1 [ false, %69 ], [ %94, %90 ]
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = sub nsw i32 %100, 1
  %102 = call i32 (i32, i8*, i64, ...) @ok(i32 %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %98, i32 %99, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %105, label %134

105:                                              ; preds = %95
  %106 = sub i64 %7, 1
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memset(i8* %9, i8 signext 35, i32 %107)
  %109 = sub i64 %7, 1
  %110 = getelementptr inbounds i8, i8* %9, i64 %109
  store i8 0, i8* %110, align 1
  %111 = load i32, i32* @regpath_iemain, align 4
  %112 = load i32, i32* @start_page, align 4
  %113 = load i32, i32* @REG_SZ, align 4
  %114 = load i32, i32* %5, align 4
  %115 = sub nsw i32 %114, 1
  %116 = call i64 @pURLSubRegQueryA(i32 %111, i32 %112, i32 %113, i8* %9, i32 %115, i32 -1)
  store i64 %116, i64* %3, align 8
  %117 = call i32 @lstrlenA(i8* %9)
  store i32 %117, i32* %4, align 4
  %118 = load i64, i64* %3, align 8
  %119 = load i64, i64* @S_OK, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %105
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %5, align 4
  %124 = sub nsw i32 %123, 2
  %125 = icmp eq i32 %122, %124
  br label %126

126:                                              ; preds = %121, %105
  %127 = phi i1 [ false, %105 ], [ %125, %121 ]
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %5, align 4
  %132 = sub nsw i32 %131, 2
  %133 = call i32 (i32, i8*, i64, ...) @ok(i32 %128, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %129, i32 %130, i32 %132)
  br label %134

134:                                              ; preds = %126, %95
  %135 = sub i64 %7, 1
  %136 = trunc i64 %135 to i32
  %137 = call i32 @memset(i8* %9, i8 signext 35, i32 %136)
  %138 = sub i64 %7, 1
  %139 = getelementptr inbounds i8, i8* %9, i64 %138
  store i8 0, i8* %139, align 1
  %140 = load i32, i32* @regpath_iemain, align 4
  %141 = load i32, i32* @start_page, align 4
  %142 = load i32, i32* @REG_SZ, align 4
  %143 = call i64 @pURLSubRegQueryA(i32 %140, i32 %141, i32 %142, i8* %9, i32 1, i32 -1)
  store i64 %143, i64* %3, align 8
  %144 = call i32 @lstrlenA(i8* %9)
  store i32 %144, i32* %4, align 4
  %145 = load i64, i64* %3, align 8
  %146 = load i64, i64* @S_OK, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %134
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  br label %152

152:                                              ; preds = %148, %134
  %153 = phi i1 [ false, %134 ], [ %151, %148 ]
  %154 = zext i1 %153 to i32
  %155 = load i64, i64* %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = call i32 (i32, i8*, i64, ...) @ok(i32 %154, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %155, i32 %156)
  %158 = sub i64 %7, 1
  %159 = trunc i64 %158 to i32
  %160 = call i32 @memset(i8* %9, i8 signext 35, i32 %159)
  %161 = sub i64 %7, 1
  %162 = getelementptr inbounds i8, i8* %9, i64 %161
  store i8 0, i8* %162, align 1
  %163 = load i32, i32* @regpath_iemain, align 4
  %164 = load i32, i32* @start_page, align 4
  %165 = load i32, i32* @REG_SZ, align 4
  %166 = call i64 @pURLSubRegQueryA(i32 %163, i32 %164, i32 %165, i8* %9, i32 0, i32 -1)
  store i64 %166, i64* %3, align 8
  %167 = call i32 @lstrlenA(i8* %9)
  store i32 %167, i32* %4, align 4
  %168 = load i64, i64* %3, align 8
  %169 = load i64, i64* @S_OK, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %152
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %174 = sub nsw i32 %173, 1
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %182, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* %4, align 4
  %178 = icmp eq i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i64 @broken(i32 %179)
  %181 = icmp ne i64 %180, 0
  br label %182

182:                                              ; preds = %176, %171
  %183 = phi i1 [ true, %171 ], [ %181, %176 ]
  br label %184

184:                                              ; preds = %182, %152
  %185 = phi i1 [ false, %152 ], [ %183, %182 ]
  %186 = zext i1 %185 to i32
  %187 = load i64, i64* %3, align 8
  %188 = load i32, i32* %4, align 4
  %189 = call i32 (i32, i8*, i64, ...) @ok(i32 %186, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i64 %187, i32 %188)
  %190 = load i32, i32* @regpath_iemain, align 4
  %191 = load i32, i32* @start_page, align 4
  %192 = load i32, i32* @REG_SZ, align 4
  %193 = call i64 @pURLSubRegQueryA(i32 %190, i32 %191, i32 %192, i8* null, i32 0, i32 -1)
  store i64 %193, i64* %3, align 8
  %194 = load i64, i64* %3, align 8
  %195 = load i64, i64* @S_OK, align 8
  %196 = icmp eq i64 %194, %195
  %197 = zext i1 %196 to i32
  %198 = load i64, i64* %3, align 8
  %199 = call i32 (i32, i8*, i64, ...) @ok(i32 %197, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %198)
  %200 = load i32, i32* @regpath_iemain, align 4
  %201 = load i32, i32* @start_page, align 4
  %202 = load i32, i32* @REG_SZ, align 4
  %203 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %204 = call i64 @pURLSubRegQueryA(i32 %200, i32 %201, i32 %202, i8* null, i32 %203, i32 -1)
  store i64 %204, i64* %3, align 8
  %205 = load i64, i64* %3, align 8
  %206 = load i64, i64* @S_OK, align 8
  %207 = icmp eq i64 %205, %206
  %208 = zext i1 %207 to i32
  %209 = load i64, i64* %3, align 8
  %210 = call i32 (i32, i8*, i64, ...) @ok(i32 %208, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %209)
  %211 = sub i64 %7, 1
  %212 = trunc i64 %211 to i32
  %213 = call i32 @memset(i8* %9, i8 signext 35, i32 %212)
  %214 = sub i64 %7, 1
  %215 = getelementptr inbounds i8, i8* %9, i64 %214
  store i8 0, i8* %215, align 1
  %216 = load i32, i32* @regpath_iemain, align 4
  %217 = load i32, i32* @does_not_exist, align 4
  %218 = load i32, i32* @REG_SZ, align 4
  %219 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %220 = call i64 @pURLSubRegQueryA(i32 %216, i32 %217, i32 %218, i8* %9, i32 %219, i32 -1)
  store i64 %220, i64* %3, align 8
  %221 = load i64, i64* %3, align 8
  %222 = load i64, i64* @E_FAIL, align 8
  %223 = icmp eq i64 %221, %222
  %224 = zext i1 %223 to i32
  %225 = load i64, i64* %3, align 8
  %226 = call i32 (i32, i8*, i64, ...) @ok(i32 %224, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i64 %225)
  %227 = sub i64 %7, 1
  %228 = trunc i64 %227 to i32
  %229 = call i32 @memset(i8* %9, i8 signext 35, i32 %228)
  %230 = sub i64 %7, 1
  %231 = getelementptr inbounds i8, i8* %9, i64 %230
  store i8 0, i8* %231, align 1
  %232 = load i32, i32* @regpath_iemain, align 4
  %233 = load i32, i32* @start_page, align 4
  %234 = load i32, i32* @REG_DWORD, align 4
  %235 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %236 = call i64 @pURLSubRegQueryA(i32 %232, i32 %233, i32 %234, i8* %9, i32 %235, i32 -1)
  store i64 %236, i64* %3, align 8
  %237 = call i32 @lstrlenA(i8* %9)
  store i32 %237, i32* %4, align 4
  %238 = load i64, i64* %3, align 8
  %239 = load i64, i64* @S_OK, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %184
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* %5, align 4
  %244 = icmp eq i32 %242, %243
  br label %245

245:                                              ; preds = %241, %184
  %246 = phi i1 [ false, %184 ], [ %244, %241 ]
  %247 = zext i1 %246 to i32
  %248 = load i64, i64* %3, align 8
  %249 = load i32, i32* %4, align 4
  %250 = load i32, i32* %5, align 4
  %251 = call i32 (i32, i8*, i64, ...) @ok(i32 %247, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %248, i32 %249, i32 %250)
  %252 = sub i64 %7, 1
  %253 = trunc i64 %252 to i32
  %254 = call i32 @memset(i8* %9, i8 signext 35, i32 %253)
  %255 = sub i64 %7, 1
  %256 = getelementptr inbounds i8, i8* %9, i64 %255
  store i8 0, i8* %256, align 1
  %257 = load i32, i32* @regpath_shellfolders, align 4
  %258 = load i32, i32* @appdata, align 4
  %259 = load i32, i32* @REG_SZ, align 4
  %260 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %261 = call i64 @pURLSubRegQueryA(i32 %257, i32 %258, i32 %259, i8* %9, i32 %260, i32 -1)
  store i64 %261, i64* %3, align 8
  %262 = call i32 @lstrlenA(i8* %9)
  store i32 %262, i32* %4, align 4
  %263 = load i64, i64* %3, align 8
  %264 = load i64, i64* @S_OK, align 8
  %265 = icmp eq i64 %263, %264
  %266 = zext i1 %265 to i32
  %267 = load i64, i64* %3, align 8
  %268 = load i32, i32* %4, align 4
  %269 = call i32 (i32, i8*, i64, ...) @ok(i32 %266, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %267, i32 %268)
  %270 = sub i64 %7, 1
  %271 = trunc i64 %270 to i32
  %272 = call i32 @memset(i8* %9, i8 signext 35, i32 %271)
  %273 = sub i64 %7, 1
  %274 = getelementptr inbounds i8, i8* %9, i64 %273
  store i8 0, i8* %274, align 1
  %275 = load i32, i32* @regpath_shellfolders, align 4
  %276 = load i32, i32* @common_appdata, align 4
  %277 = load i32, i32* @REG_SZ, align 4
  %278 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %279 = call i64 @pURLSubRegQueryA(i32 %275, i32 %276, i32 %277, i8* %9, i32 %278, i32 -1)
  store i64 %279, i64* %3, align 8
  %280 = call i32 @lstrlenA(i8* %9)
  store i32 %280, i32* %4, align 4
  %281 = load i64, i64* %3, align 8
  %282 = load i64, i64* @S_OK, align 8
  %283 = icmp eq i64 %281, %282
  %284 = zext i1 %283 to i32
  %285 = load i64, i64* %3, align 8
  %286 = load i32, i32* %4, align 4
  %287 = call i32 (i32, i8*, i64, ...) @ok(i32 %284, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %285, i32 %286)
  %288 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %288)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i64 @pURLSubRegQueryA(i32, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i32 @lstrlenA(i8*) #2

declare dso_local i64 @broken(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
