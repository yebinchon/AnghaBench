; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c_test_protocol_url.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c_test_protocol_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IInternetProtocol = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not get IInternetProtocol: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Read failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"cb=%u expected 13\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"<html></html>\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"unexpected data\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"protocol ref=%d\0A\00", align 1
@test_protocol = common dso_local global i64 0, align 8
@ITS_PROTOCOL = common dso_local global i64 0, align 8
@INET_E_DATA_NOT_AVAILABLE = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Read returned %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"cb=%u expected 0xdeadbeef\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"cb=%u expected 2\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"cb=%u, expected 11\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"Read failed: %08x expected S_FALSE\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"cb=%u expected 0\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"UnlockRequest failed: %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"LockRequest failed: %08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Terminate failed: %08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"cb=%u, expected 2\0A\00", align 1
@read_protocol = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @test_protocol_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_protocol_url(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [512 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32** %7 to i8**
  %14 = call i32 @IClassFactory_CreateInstance(i32* %12, i32* null, i32* @IID_IInternetProtocol, i8** %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @S_OK, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %11, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %11, align 4
  %22 = call i64 @FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %353

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @protocol_start(i32* %26, i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @IInternetProtocol_Release(i32* %34)
  br label %353

36:                                               ; preds = %25
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %39 = call i32 @IInternetProtocol_Read(i32* %37, i32* %38, i32 2048, i32* %9)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @S_OK, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %11, align 4
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 13
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %9, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %52 = call i32 @memcmp(i32* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 13)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @IInternetProtocol_Release(i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = bitcast i32** %7 to i8**
  %67 = call i32 @IClassFactory_CreateInstance(i32* %65, i32* null, i32* @IID_IInternetProtocol, i8** %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @S_OK, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = call i64 @FAILED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %36
  br label %353

78:                                               ; preds = %36
  store i32 -559038737, i32* %9, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %81 = call i32 @IInternetProtocol_Read(i32* %79, i32* %80, i32 2048, i32* %9)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i64, i64* @test_protocol, align 8
  %84 = load i64, i64* @ITS_PROTOCOL, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @INET_E_DATA_NOT_AVAILABLE, align 4
  br label %90

88:                                               ; preds = %78
  %89 = load i32, i32* @E_FAIL, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = icmp eq i32 %82, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %11, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, -559038737
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @protocol_start(i32* %101, i32 %102, i32 %103)
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %107 = call i32 @IInternetProtocol_Read(i32* %105, i32* %106, i32 2, i32* %9)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @S_OK, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %11, align 4
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %9, align 4
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %117)
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %121 = call i32 @IInternetProtocol_Read(i32* %119, i32* %120, i32 2048, i32* %9)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @S_OK, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %11, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = icmp eq i32 %128, 11
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %131)
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %135 = call i32 @IInternetProtocol_Read(i32* %133, i32* %134, i32 2048, i32* %9)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @S_FALSE, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %11, align 4
  %141 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %9, align 4
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %145)
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @IInternetProtocol_UnlockRequest(i32* %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @S_OK, align 4
  %151 = icmp eq i32 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %11, align 4
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %153)
  %155 = load i32*, i32** %7, align 8
  %156 = call i32 @IInternetProtocol_Release(i32* %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %10, align 4
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %161)
  %163 = load i32*, i32** %4, align 8
  %164 = bitcast i32** %7 to i8**
  %165 = call i32 @IClassFactory_CreateInstance(i32* %163, i32* null, i32* @IID_IInternetProtocol, i8** %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @S_OK, align 4
  %168 = icmp eq i32 %166, %167
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* %11, align 4
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %11, align 4
  %173 = call i64 @FAILED(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %90
  br label %353

176:                                              ; preds = %90
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @protocol_start(i32* %177, i32 %178, i32 %179)
  %181 = load i32*, i32** %7, align 8
  %182 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %183 = call i32 @IInternetProtocol_Read(i32* %181, i32* %182, i32 2, i32* %9)
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @S_OK, align 4
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i32, i32* %11, align 4
  %189 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %188)
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @IInternetProtocol_LockRequest(i32* %190, i32 0)
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @S_OK, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = load i32, i32* %11, align 4
  %197 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %196)
  %198 = load i32*, i32** %7, align 8
  %199 = call i32 @IInternetProtocol_UnlockRequest(i32* %198)
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @S_OK, align 4
  %202 = icmp eq i32 %200, %201
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %11, align 4
  %205 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %204)
  %206 = load i32*, i32** %7, align 8
  %207 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %208 = call i32 @IInternetProtocol_Read(i32* %206, i32* %207, i32 2048, i32* %9)
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* @S_OK, align 4
  %211 = icmp eq i32 %209, %210
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %11, align 4
  %214 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* %9, align 4
  %216 = icmp eq i32 %215, 11
  %217 = zext i1 %216 to i32
  %218 = load i32, i32* %9, align 4
  %219 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %218)
  %220 = load i32*, i32** %7, align 8
  %221 = call i32 @IInternetProtocol_Release(i32* %220)
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* %10, align 4
  %227 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %226)
  %228 = load i32*, i32** %4, align 8
  %229 = bitcast i32** %7 to i8**
  %230 = call i32 @IClassFactory_CreateInstance(i32* %228, i32* null, i32* @IID_IInternetProtocol, i8** %229)
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* @S_OK, align 4
  %233 = icmp eq i32 %231, %232
  %234 = zext i1 %233 to i32
  %235 = load i32, i32* %11, align 4
  %236 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %11, align 4
  %238 = call i64 @FAILED(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %176
  br label %353

241:                                              ; preds = %176
  %242 = load i32*, i32** %7, align 8
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @protocol_start(i32* %242, i32 %243, i32 %244)
  %246 = load i32*, i32** %7, align 8
  %247 = call i32 @IInternetProtocol_LockRequest(i32* %246, i32 0)
  store i32 %247, i32* %11, align 4
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* @S_OK, align 4
  %250 = icmp eq i32 %248, %249
  %251 = zext i1 %250 to i32
  %252 = load i32, i32* %11, align 4
  %253 = call i32 (i32, i8*, ...) @ok(i32 %251, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %252)
  %254 = load i32*, i32** %7, align 8
  %255 = call i32 @IInternetProtocol_Terminate(i32* %254, i32 0)
  store i32 %255, i32* %11, align 4
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* @S_OK, align 4
  %258 = icmp eq i32 %256, %257
  %259 = zext i1 %258 to i32
  %260 = load i32, i32* %11, align 4
  %261 = call i32 (i32, i8*, ...) @ok(i32 %259, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %260)
  %262 = load i32*, i32** %7, align 8
  %263 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %264 = call i32 @IInternetProtocol_Read(i32* %262, i32* %263, i32 2, i32* %9)
  store i32 %264, i32* %11, align 4
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* @S_OK, align 4
  %267 = icmp eq i32 %265, %266
  %268 = zext i1 %267 to i32
  %269 = load i32, i32* %11, align 4
  %270 = call i32 (i32, i8*, ...) @ok(i32 %268, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* %9, align 4
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i32
  %274 = load i32, i32* %9, align 4
  %275 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %274)
  %276 = load i32*, i32** %7, align 8
  %277 = call i32 @IInternetProtocol_UnlockRequest(i32* %276)
  store i32 %277, i32* %11, align 4
  %278 = load i32, i32* %11, align 4
  %279 = load i32, i32* @S_OK, align 4
  %280 = icmp eq i32 %278, %279
  %281 = zext i1 %280 to i32
  %282 = load i32, i32* %11, align 4
  %283 = call i32 (i32, i8*, ...) @ok(i32 %281, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %282)
  %284 = load i32*, i32** %7, align 8
  %285 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %286 = call i32 @IInternetProtocol_Read(i32* %284, i32* %285, i32 2, i32* %9)
  store i32 %286, i32* %11, align 4
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* @S_OK, align 4
  %289 = icmp eq i32 %287, %288
  %290 = zext i1 %289 to i32
  %291 = load i32, i32* %11, align 4
  %292 = call i32 (i32, i8*, ...) @ok(i32 %290, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %291)
  %293 = load i32, i32* %9, align 4
  %294 = icmp eq i32 %293, 2
  %295 = zext i1 %294 to i32
  %296 = load i32, i32* %9, align 4
  %297 = call i32 (i32, i8*, ...) @ok(i32 %295, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %296)
  %298 = load i32*, i32** %7, align 8
  %299 = call i32 @IInternetProtocol_Terminate(i32* %298, i32 0)
  store i32 %299, i32* %11, align 4
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* @S_OK, align 4
  %302 = icmp eq i32 %300, %301
  %303 = zext i1 %302 to i32
  %304 = load i32, i32* %11, align 4
  %305 = call i32 (i32, i8*, ...) @ok(i32 %303, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %304)
  %306 = load i32*, i32** %7, align 8
  %307 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %308 = call i32 @IInternetProtocol_Read(i32* %306, i32* %307, i32 2, i32* %9)
  store i32 %308, i32* %11, align 4
  %309 = load i32, i32* %11, align 4
  %310 = load i32, i32* @S_OK, align 4
  %311 = icmp eq i32 %309, %310
  %312 = zext i1 %311 to i32
  %313 = load i32, i32* %11, align 4
  %314 = call i32 (i32, i8*, ...) @ok(i32 %312, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %313)
  %315 = load i32, i32* %9, align 4
  %316 = icmp eq i32 %315, 2
  %317 = zext i1 %316 to i32
  %318 = load i32, i32* %9, align 4
  %319 = call i32 (i32, i8*, ...) @ok(i32 %317, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %318)
  %320 = load i32*, i32** %7, align 8
  %321 = call i32 @IInternetProtocol_Release(i32* %320)
  store i32 %321, i32* %10, align 4
  %322 = load i32, i32* %10, align 4
  %323 = icmp ne i32 %322, 0
  %324 = xor i1 %323, true
  %325 = zext i1 %324 to i32
  %326 = load i32, i32* %10, align 4
  %327 = call i32 (i32, i8*, ...) @ok(i32 %325, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %326)
  %328 = load i32*, i32** %4, align 8
  %329 = call i32 @IClassFactory_CreateInstance(i32* %328, i32* null, i32* @IID_IInternetProtocol, i8** bitcast (i32** @read_protocol to i8**))
  store i32 %329, i32* %11, align 4
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* @S_OK, align 4
  %332 = icmp eq i32 %330, %331
  %333 = zext i1 %332 to i32
  %334 = load i32, i32* %11, align 4
  %335 = call i32 (i32, i8*, ...) @ok(i32 %333, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %334)
  %336 = load i32, i32* %11, align 4
  %337 = call i64 @FAILED(i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %241
  br label %353

340:                                              ; preds = %241
  %341 = load i32*, i32** @read_protocol, align 8
  %342 = load i32, i32* %5, align 4
  %343 = load i32, i32* %6, align 4
  %344 = call i32 @protocol_start(i32* %341, i32 %342, i32 %343)
  %345 = load i32*, i32** @read_protocol, align 8
  %346 = call i32 @IInternetProtocol_Release(i32* %345)
  store i32 %346, i32* %10, align 4
  %347 = load i32, i32* %10, align 4
  %348 = icmp ne i32 %347, 0
  %349 = xor i1 %348, true
  %350 = zext i1 %349 to i32
  %351 = load i32, i32* %10, align 4
  %352 = call i32 (i32, i8*, ...) @ok(i32 %350, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %351)
  store i32* null, i32** @read_protocol, align 8
  br label %353

353:                                              ; preds = %340, %339, %240, %175, %77, %33, %24
  ret void
}

declare dso_local i32 @IClassFactory_CreateInstance(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @protocol_start(i32*, i32, i32) #1

declare dso_local i32 @IInternetProtocol_Release(i32*) #1

declare dso_local i32 @IInternetProtocol_Read(i32*, i32*, i32, i32*) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @IInternetProtocol_UnlockRequest(i32*) #1

declare dso_local i32 @IInternetProtocol_LockRequest(i32*, i32) #1

declare dso_local i32 @IInternetProtocol_Terminate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
