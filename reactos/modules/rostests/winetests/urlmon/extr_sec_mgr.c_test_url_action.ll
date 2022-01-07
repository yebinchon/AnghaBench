; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_url_action.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_test_url_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Software\\Microsoft\\Windows\\CurrentVersion\\Internet Settings\\Zones\\3\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not open zone key\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%X\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@url9 = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i64 0, align 8
@ERROR_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"(0x%x) got 0x%x (expected E_FAIL)\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"(%x) policy=%x\0A\00", align 1
@URLZONEREG_DEFAULT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"GetZoneActionPolicy failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"(%x) policy=%x, expected %x\0A\00", align 1
@URLPOLICY_QUERY = common dso_local global i64 0, align 8
@winetest_interactive = common dso_local global i64 0, align 8
@called_securl_http = common dso_local global i32 0, align 4
@URLPOLICY_DISALLOW = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [53 x i8] c"ProcessUrlAction(%x) failed: %08x, expected S_FALSE\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"ProcessUrlAction(%x) failed: %08x\0A\00", align 1
@ParseUrl_SECURITY_URL_http = common dso_local global i32 0, align 4
@winetest_to_httpW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"IE running in Enhanced Security Configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64)* @test_url_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_url_action(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [10 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %16 = call i64 @RegOpenKeyA(i32 %15, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %326

26:                                               ; preds = %3
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @wsprintfA(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  store i64 8, i64* %8, align 8
  %30 = load i32, i32* %12, align 4
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %32 = bitcast i64* %10 to i32*
  %33 = call i64 @RegQueryValueExA(i32 %30, i8* %31, i32* null, i32* null, i32* %32, i64* %8)
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @RegCloseKey(i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 8
  br i1 %41, label %42, label %56

42:                                               ; preds = %39, %26
  %43 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %44 = call i64 @RegOpenKeyA(i32 %43, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @ERROR_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i64 8, i64* %8, align 8
  %50 = load i32, i32* %12, align 4
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %52 = bitcast i64* %10 to i32*
  %53 = call i64 @RegQueryValueExA(i32 %50, i8* %51, i32* null, i32* null, i32* %52, i64* %8)
  store i64 %53, i64* %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @RegCloseKey(i32 %54)
  br label %56

56:                                               ; preds = %42, %39
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @ERROR_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 8
  br i1 %62, label %63, label %120

63:                                               ; preds = %60, %56
  store i64 3735928559, i64* %9, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @url9, align 4
  %66 = load i64, i64* %6, align 8
  %67 = bitcast i64* %9 to i32*
  %68 = call i64 @IInternetSecurityManager_ProcessUrlAction(i32* %64, i32 %65, i64 %66, i32* %67, i32 4, i32* null, i32 0, i32 0, i32 0)
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @E_FAIL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %63
  %73 = load i64, i64* %13, align 8
  %74 = load i32, i32* @ERROR_NOT_FOUND, align 4
  %75 = call i64 @HRESULT_FROM_WIN32(i32 %74)
  %76 = icmp eq i64 %73, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @broken(i32 %77)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %72, %63
  %81 = phi i1 [ true, %63 ], [ %79, %72 ]
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %83, i64 %84)
  %86 = load i64, i64* %9, align 8
  %87 = icmp eq i64 %86, 3735928559
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %89, i64 %90)
  store i64 3735928559, i64* %9, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = bitcast i64* %9 to i32*
  %95 = load i32, i32* @URLZONEREG_DEFAULT, align 4
  %96 = call i64 @IInternetZoneManager_GetZoneActionPolicy(i32* %92, i32 3, i64 %93, i32* %94, i32 8, i32 %95)
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* @E_FAIL, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %80
  %101 = load i64, i64* %13, align 8
  %102 = load i32, i32* @ERROR_NOT_FOUND, align 4
  %103 = call i64 @HRESULT_FROM_WIN32(i32 %102)
  %104 = icmp eq i64 %101, %103
  %105 = zext i1 %104 to i32
  %106 = call i64 @broken(i32 %105)
  %107 = icmp ne i64 %106, 0
  br label %108

108:                                              ; preds = %100, %80
  %109 = phi i1 [ true, %80 ], [ %107, %100 ]
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %111, i64 %112)
  %114 = load i64, i64* %9, align 8
  %115 = icmp eq i64 %114, 3735928559
  %116 = zext i1 %115 to i32
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %117, i64 %118)
  br label %326

120:                                              ; preds = %60
  store i64 3735928559, i64* %9, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = load i64, i64* %6, align 8
  %123 = bitcast i64* %9 to i32*
  %124 = load i32, i32* @URLZONEREG_DEFAULT, align 4
  %125 = call i64 @IInternetZoneManager_GetZoneActionPolicy(i32* %121, i32 3, i64 %122, i32* %123, i32 8, i32 %124)
  store i64 %125, i64* %13, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* @S_OK, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i64, i64* %13, align 8
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %130)
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* %10, align 8
  %139 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %136, i64 %137, i64 %138)
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* @URLPOLICY_QUERY, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %326

143:                                              ; preds = %120
  %144 = load i64, i64* @winetest_interactive, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = call i32 (...) @is_ie_hardened()
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %323, label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* @called_securl_http, align 4
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %14, align 4
  store i64 3735928559, i64* %9, align 8
  %154 = load i32*, i32** %4, align 8
  %155 = load i32, i32* @url9, align 4
  %156 = load i64, i64* %6, align 8
  %157 = bitcast i64* %9 to i32*
  %158 = call i64 @IInternetSecurityManager_ProcessUrlAction(i32* %154, i32 %155, i64 %156, i32* %157, i32 4, i32* null, i32 0, i32 0, i32 0)
  store i64 %158, i64* %13, align 8
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* @URLPOLICY_DISALLOW, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %149
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* @S_FALSE, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %6, align 8
  %168 = load i64, i64* %13, align 8
  %169 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i64 %167, i64 %168)
  br label %178

170:                                              ; preds = %149
  %171 = load i64, i64* %13, align 8
  %172 = load i64, i64* @S_OK, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = load i64, i64* %6, align 8
  %176 = load i64, i64* %13, align 8
  %177 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %175, i64 %176)
  br label %178

178:                                              ; preds = %170, %162
  %179 = load i64, i64* %9, align 8
  %180 = icmp eq i64 %179, 3735928559
  %181 = zext i1 %180 to i32
  %182 = load i64, i64* %6, align 8
  %183 = load i64, i64* %9, align 8
  %184 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %182, i64 %183)
  store i64 3735928559, i64* %9, align 8
  %185 = load i32*, i32** %4, align 8
  %186 = load i32, i32* @url9, align 4
  %187 = load i64, i64* %6, align 8
  %188 = bitcast i64* %9 to i32*
  %189 = call i64 @IInternetSecurityManager_ProcessUrlAction(i32* %185, i32 %186, i64 %187, i32* %188, i32 2, i32* null, i32 0, i32 0, i32 0)
  store i64 %189, i64* %13, align 8
  %190 = load i64, i64* %10, align 8
  %191 = load i64, i64* @URLPOLICY_DISALLOW, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %178
  %194 = load i64, i64* %13, align 8
  %195 = load i64, i64* @S_FALSE, align 8
  %196 = icmp eq i64 %194, %195
  %197 = zext i1 %196 to i32
  %198 = load i64, i64* %6, align 8
  %199 = load i64, i64* %13, align 8
  %200 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i64 %198, i64 %199)
  br label %209

201:                                              ; preds = %178
  %202 = load i64, i64* %13, align 8
  %203 = load i64, i64* @S_OK, align 8
  %204 = icmp eq i64 %202, %203
  %205 = zext i1 %204 to i32
  %206 = load i64, i64* %6, align 8
  %207 = load i64, i64* %13, align 8
  %208 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %206, i64 %207)
  br label %209

209:                                              ; preds = %201, %193
  %210 = load i64, i64* %9, align 8
  %211 = icmp eq i64 %210, 3735928559
  %212 = zext i1 %211 to i32
  %213 = load i64, i64* %6, align 8
  %214 = load i64, i64* %9, align 8
  %215 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %213, i64 %214)
  store i64 3735928559, i64* %9, align 8
  %216 = load i32*, i32** %4, align 8
  %217 = load i32, i32* @url9, align 4
  %218 = load i64, i64* %6, align 8
  %219 = bitcast i64* %9 to i32*
  %220 = call i64 @IInternetSecurityManager_ProcessUrlAction(i32* %216, i32 %217, i64 %218, i32* %219, i32 8, i32* null, i32 0, i32 0, i32 0)
  store i64 %220, i64* %13, align 8
  %221 = load i64, i64* %10, align 8
  %222 = load i64, i64* @URLPOLICY_DISALLOW, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %209
  %225 = load i64, i64* %13, align 8
  %226 = load i64, i64* @S_FALSE, align 8
  %227 = icmp eq i64 %225, %226
  %228 = zext i1 %227 to i32
  %229 = load i64, i64* %6, align 8
  %230 = load i64, i64* %13, align 8
  %231 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i64 %229, i64 %230)
  br label %240

232:                                              ; preds = %209
  %233 = load i64, i64* %13, align 8
  %234 = load i64, i64* @S_OK, align 8
  %235 = icmp eq i64 %233, %234
  %236 = zext i1 %235 to i32
  %237 = load i64, i64* %6, align 8
  %238 = load i64, i64* %13, align 8
  %239 = call i32 (i32, i8*, ...) @ok(i32 %236, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %237, i64 %238)
  br label %240

240:                                              ; preds = %232, %224
  %241 = load i64, i64* %9, align 8
  %242 = load i64, i64* %10, align 8
  %243 = icmp eq i64 %241, %242
  %244 = zext i1 %243 to i32
  %245 = load i64, i64* %6, align 8
  %246 = load i64, i64* %9, align 8
  %247 = call i32 (i32, i8*, ...) @ok(i32 %244, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %245, i64 %246)
  store i64 3735928559, i64* %9, align 8
  %248 = load i32*, i32** %4, align 8
  %249 = load i32, i32* @url9, align 4
  %250 = load i64, i64* %6, align 8
  %251 = bitcast i64* %9 to i32*
  %252 = call i64 @IInternetSecurityManager_ProcessUrlAction(i32* %248, i32 %249, i64 %250, i32* %251, i32 4, i32* inttoptr (i64 3735928559 to i32*), i32 16, i32 0, i32 0)
  store i64 %252, i64* %13, align 8
  %253 = load i64, i64* %10, align 8
  %254 = load i64, i64* @URLPOLICY_DISALLOW, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %264

256:                                              ; preds = %240
  %257 = load i64, i64* %13, align 8
  %258 = load i64, i64* @S_FALSE, align 8
  %259 = icmp eq i64 %257, %258
  %260 = zext i1 %259 to i32
  %261 = load i64, i64* %6, align 8
  %262 = load i64, i64* %13, align 8
  %263 = call i32 (i32, i8*, ...) @ok(i32 %260, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i64 %261, i64 %262)
  br label %272

264:                                              ; preds = %240
  %265 = load i64, i64* %13, align 8
  %266 = load i64, i64* @S_OK, align 8
  %267 = icmp eq i64 %265, %266
  %268 = zext i1 %267 to i32
  %269 = load i64, i64* %6, align 8
  %270 = load i64, i64* %13, align 8
  %271 = call i32 (i32, i8*, ...) @ok(i32 %268, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %269, i64 %270)
  br label %272

272:                                              ; preds = %264, %256
  %273 = load i64, i64* %9, align 8
  %274 = icmp eq i64 %273, 3735928559
  %275 = zext i1 %274 to i32
  %276 = load i64, i64* %6, align 8
  %277 = load i64, i64* %9, align 8
  %278 = call i32 (i32, i8*, ...) @ok(i32 %275, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %276, i64 %277)
  store i64 3735928559, i64* %9, align 8
  %279 = load i32, i32* %14, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %272
  %282 = load i32, i32* @ParseUrl_SECURITY_URL_http, align 4
  %283 = call i32 @SET_EXPECT(i32 %282)
  br label %284

284:                                              ; preds = %281, %272
  %285 = load i32*, i32** %4, align 8
  %286 = load i32, i32* @winetest_to_httpW, align 4
  %287 = load i64, i64* %6, align 8
  %288 = bitcast i64* %9 to i32*
  %289 = call i64 @IInternetSecurityManager_ProcessUrlAction(i32* %285, i32 %286, i64 %287, i32* %288, i32 8, i32* null, i32 0, i32 0, i32 0)
  store i64 %289, i64* %13, align 8
  %290 = load i32, i32* %14, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %284
  %293 = load i32, i32* @ParseUrl_SECURITY_URL_http, align 4
  %294 = call i32 @CHECK_CALLED(i32 %293)
  br label %295

295:                                              ; preds = %292, %284
  %296 = load i64, i64* %10, align 8
  %297 = load i64, i64* @URLPOLICY_DISALLOW, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %307

299:                                              ; preds = %295
  %300 = load i64, i64* %13, align 8
  %301 = load i64, i64* @S_FALSE, align 8
  %302 = icmp eq i64 %300, %301
  %303 = zext i1 %302 to i32
  %304 = load i64, i64* %6, align 8
  %305 = load i64, i64* %13, align 8
  %306 = call i32 (i32, i8*, ...) @ok(i32 %303, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i64 %304, i64 %305)
  br label %315

307:                                              ; preds = %295
  %308 = load i64, i64* %13, align 8
  %309 = load i64, i64* @S_OK, align 8
  %310 = icmp eq i64 %308, %309
  %311 = zext i1 %310 to i32
  %312 = load i64, i64* %6, align 8
  %313 = load i64, i64* %13, align 8
  %314 = call i32 (i32, i8*, ...) @ok(i32 %311, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %312, i64 %313)
  br label %315

315:                                              ; preds = %307, %299
  %316 = load i64, i64* %9, align 8
  %317 = load i64, i64* %10, align 8
  %318 = icmp eq i64 %316, %317
  %319 = zext i1 %318 to i32
  %320 = load i64, i64* %6, align 8
  %321 = load i64, i64* %9, align 8
  %322 = call i32 (i32, i8*, ...) @ok(i32 %319, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %320, i64 %321)
  br label %325

323:                                              ; preds = %146
  %324 = call i32 @skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  br label %325

325:                                              ; preds = %323, %315
  br label %326

326:                                              ; preds = %25, %108, %325, %120
  ret void
}

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @wsprintfA(i8*, i8*, i64) #1

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @IInternetSecurityManager_ProcessUrlAction(i32*, i32, i64, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i64 @IInternetZoneManager_GetZoneActionPolicy(i32*, i32, i64, i32*, i32, i32) #1

declare dso_local i32 @is_ie_hardened(...) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
