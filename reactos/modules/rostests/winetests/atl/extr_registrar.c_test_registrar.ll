; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl/extr_registrar.c_test_registrar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl/extr_registrar.c_test_registrar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"atl.dll\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"AtlAxAttachControl\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Old versions of atl.dll don't support binary values\0A\00", align 1
@CLSID_Registrar = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IRegistrar = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"creating IRegistrar failed, hr = 0x%08X\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@textA = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"StringRegister failed: %08x\0A\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"eebf73c4-50fd-478f-bbcf-db212221227a\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"error %d opening registry key\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"dword_unquoted_hex\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"RegQueryValueExA failed, error %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"unquoted hex is not supposed to be preserved\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"dword_quoted_hex\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"quoted hex is not supposed to be preserved\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"dword_unquoted_dec\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"unquoted dec is not supposed to be %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"dword_quoted_dec\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"quoted dec is not supposed to be %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"binary_quoted\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"RegQueryValueA, failed, error %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"binary quoted value was not preserved (it's 0x%02X%02X%02X%02X)\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"binary_unquoted\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"binary unquoted value was not preserved (it's 0x%02X%02X%02X%02X)\0A\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"IRegistrar_StringUnregister failed, hr = 0x%08X\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"allocating memory failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_registrar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_registrar() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store i32* null, i32** %1, align 8
  store i32* null, i32** %4, align 8
  %10 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @GetProcAddress(i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 (i8*, ...) @win_skip(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %214

15:                                               ; preds = %0
  %16 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %17 = bitcast i32** %1 to i8**
  %18 = call i32 @CoCreateInstance(i32* @CLSID_Registrar, i32* null, i32 %16, i32* @IID_IRegistrar, i8** %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %2, align 4
  %24 = call i32 (i8*, ...) @win_skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  br label %214

25:                                               ; preds = %15
  %26 = load i32, i32* @CP_ACP, align 4
  %27 = load i32, i32* @textA, align 4
  %28 = call i32 @MultiByteToWideChar(i32 %26, i32 0, i32 %27, i32 -1, i32* null, i32 0)
  store i32 %28, i32* %3, align 4
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32* @HeapAlloc(i32 %29, i32 0, i32 %33)
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %209

37:                                               ; preds = %25
  %38 = load i32, i32* @CP_ACP, align 4
  %39 = load i32, i32* @textA, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @MultiByteToWideChar(i32 %38, i32 0, i32 %39, i32 -1, i32* %40, i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @IRegistrar_StringRegister(i32* %43, i32* %44)
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @S_OK, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %2, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = call i64 @FAILED(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %37
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @IRegistrar_Release(i32* %56)
  br label %214

58:                                               ; preds = %37
  %59 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %60 = call i32 @RegOpenKeyA(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32* %8)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ERROR_SUCCESS, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  store i32 4, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @RegQueryValueExA(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* null, i32* %5, i32* %6)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @ERROR_SUCCESS, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 10
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  store i32 4, i32* %6, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @RegQueryValueExA(i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32* null, i32* null, i32* %5, i32* %6)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @ERROR_SUCCESS, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 10
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  store i32 4, i32* %6, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @RegQueryValueExA(i32 %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32* null, i32* null, i32* %5, i32* %6)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @ERROR_SUCCESS, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 1
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %5, align 4
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 %102)
  store i32 4, i32* %6, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @RegQueryValueExA(i32 %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32* null, i32* null, i32* %5, i32* %6)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @ERROR_SUCCESS, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %7, align 4
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 1
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %5, align 4
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %115)
  store i32 4, i32* %6, align 4
  %117 = load i32, i32* %8, align 4
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %119 = call i32 @RegQueryValueExA(i32 %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32* null, i32* null, i32* %118, i32* %6)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @ERROR_SUCCESS, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %7, align 4
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 %124)
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %127 = load i32, i32* %126, align 16
  %128 = icmp eq i32 %127, 222
  br i1 %128, label %129, label %141

129:                                              ; preds = %58
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 173
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 190
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 239
  br label %141

141:                                              ; preds = %137, %133, %129, %58
  %142 = phi i1 [ false, %133 ], [ false, %129 ], [ false, %58 ], [ %140, %137 ]
  %143 = zext i1 %142 to i32
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %145 = load i32, i32* %144, align 16
  %146 = and i32 255, %145
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = and i32 255, %148
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %151 = load i32, i32* %150, align 8
  %152 = and i32 255, %151
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = and i32 255, %154
  %156 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0), i32 %146, i32 %149, i32 %152, i32 %155)
  store i32 4, i32* %6, align 4
  %157 = load i32, i32* %8, align 4
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %159 = call i32 @RegQueryValueExA(i32 %157, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32* null, i32* null, i32* %158, i32* %6)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @ERROR_SUCCESS, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %7, align 4
  %165 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 %164)
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %167 = load i32, i32* %166, align 16
  %168 = icmp eq i32 %167, 222
  br i1 %168, label %169, label %181

169:                                              ; preds = %141
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 173
  br i1 %172, label %173, label %181

173:                                              ; preds = %169
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 190
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 239
  br label %181

181:                                              ; preds = %177, %173, %169, %141
  %182 = phi i1 [ false, %173 ], [ false, %169 ], [ false, %141 ], [ %180, %177 ]
  %183 = zext i1 %182 to i32
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %185 = load i32, i32* %184, align 16
  %186 = and i32 255, %185
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = and i32 255, %188
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %191 = load i32, i32* %190, align 8
  %192 = and i32 255, %191
  %193 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %194 = load i32, i32* %193, align 4
  %195 = and i32 255, %194
  %196 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i64 0, i64 0), i32 %186, i32 %189, i32 %192, i32 %195)
  %197 = load i32*, i32** %1, align 8
  %198 = load i32*, i32** %4, align 8
  %199 = call i32 @IRegistrar_StringUnregister(i32* %197, i32* %198)
  store i32 %199, i32* %2, align 4
  %200 = load i32, i32* %2, align 4
  %201 = call i32 @SUCCEEDED(i32 %200)
  %202 = load i32, i32* %2, align 4
  %203 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @RegCloseKey(i32 %204)
  %206 = call i32 (...) @GetProcessHeap()
  %207 = load i32*, i32** %4, align 8
  %208 = call i32 @HeapFree(i32 %206, i32 0, i32* %207)
  br label %211

209:                                              ; preds = %25
  %210 = call i32 @skip(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %181
  %212 = load i32*, i32** %1, align 8
  %213 = call i32 @IRegistrar_Release(i32* %212)
  br label %214

214:                                              ; preds = %211, %55, %22, %13
  ret void
}

declare dso_local i32 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i32 @win_skip(i8*, ...) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IRegistrar_StringRegister(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IRegistrar_Release(i32*) #1

declare dso_local i32 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @IRegistrar_StringUnregister(i32*, i32*) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
