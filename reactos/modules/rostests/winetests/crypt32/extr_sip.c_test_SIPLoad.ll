; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_sip.c_test_SIPLoad.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_sip.c_test_SIPLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i8*, i8*, i8*, i8*, i8* }

@test_SIPLoad.dummySubject = internal global %struct.TYPE_9__ { i32 -559038737, i32 57005, i32 48879, %struct.TYPE_7__ { i32 222, i32 173, i32 190, i32 239, i32 222, i32 173, i32 190, i32 239 } }, align 4
@test_SIPLoad.unknown = internal global %struct.TYPE_9__ { i32 -964056390, i32 36472, i32 4560, %struct.TYPE_7__ { i32 140, i32 71, i32 0, i32 192, i32 79, i32 194, i32 149, i32 238 } }, align 4
@test_SIPLoad.unknown2 = internal global %struct.TYPE_9__ { i32 -566945213, i32 36441, i32 4560, %struct.TYPE_7__ { i32 140, i32 71, i32 0, i32 192, i32 79, i32 194, i32 149, i32 238 } }, align 4
@test_SIPLoad.unknown3 = internal global %struct.TYPE_9__ { i32 790769, i32 0, i32 0, %struct.TYPE_7__ { i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70 } }, align 4
@.str = private unnamed_addr constant [31 x i8] c"Expected CryptSIPLoad to fail\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Expected ERROR_INVALID_PARAMETER, got 0x%08x\0A\00", align 1
@TRUST_E_SUBJECT_FORM_UNKNOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"Expected TRUST_E_SUBJECT_FORM_UNKNOWN, got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Expected no change to the function pointer\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"crypt32.dll\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"CryptSIPGetSignedDataMsg\00", align 1
@funcCryptSIPGetSignedDataMsg = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"CryptSIPPutSignedDataMsg\00", align 1
@funcCryptSIPPutSignedDataMsg = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"CryptSIPCreateIndirectData\00", align 1
@funcCryptSIPCreateIndirectData = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"CryptSIPVerifyIndirectData\00", align 1
@funcCryptSIPVerifyIndirectData = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"CryptSIPRemoveSignedDataMsg\00", align 1
@funcCryptSIPRemoveSignedDataMsg = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"Expected CryptSIPLoad to succeed\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Expected a function pointer to be loaded.\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Expected function addresses to be from crypt32\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Couldn't load function pointers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SIPLoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SIPLoad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @SetLastError(i32 -559038737)
  %6 = call i32 @CryptSIPLoad(%struct.TYPE_9__* null, i32 0, %struct.TYPE_8__* null)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = call i64 (...) @GetLastError()
  %13 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 (...) @GetLastError()
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %16)
  %18 = call i32 @SetLastError(i32 -559038737)
  %19 = call i32 @CryptSIPLoad(%struct.TYPE_9__* %2, i32 0, %struct.TYPE_8__* null)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = call i64 (...) @GetLastError()
  %26 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 (...) @GetLastError()
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = call i32 @SetLastError(i32 -559038737)
  %32 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 48)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 48, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i8* inttoptr (i64 3735928559 to i8*), i8** %34, align 8
  %35 = call i32 @CryptSIPLoad(%struct.TYPE_9__* @test_SIPLoad.dummySubject, i32 0, %struct.TYPE_8__* %3)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %41 = call i64 (...) @GetLastError()
  %42 = load i64, i64* @TRUST_E_SUBJECT_FORM_UNKNOWN, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 (...) @GetLastError()
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %48, inttoptr (i64 3735928559 to i8*)
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @GetProcAddress(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** @funcCryptSIPGetSignedDataMsg, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i64 @GetProcAddress(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** @funcCryptSIPPutSignedDataMsg, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @GetProcAddress(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** @funcCryptSIPCreateIndirectData, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @GetProcAddress(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** @funcCryptSIPVerifyIndirectData, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @GetProcAddress(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** @funcCryptSIPRemoveSignedDataMsg, align 8
  %68 = call i32 @SetLastError(i32 -559038737)
  %69 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 48)
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 48, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i8* inttoptr (i64 3735928559 to i8*), i8** %71, align 8
  %72 = call i32 @CryptSIPLoad(%struct.TYPE_9__* @test_SIPLoad.unknown, i32 0, %struct.TYPE_8__* %3)
  store i32 %72, i32* %1, align 4
  %73 = load i32, i32* %1, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, inttoptr (i64 3735928559 to i8*)
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  %80 = load i8*, i8** @funcCryptSIPGetSignedDataMsg, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %123

82:                                               ; preds = %0
  %83 = load i8*, i8** @funcCryptSIPPutSignedDataMsg, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %123

85:                                               ; preds = %82
  %86 = load i8*, i8** @funcCryptSIPCreateIndirectData, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %123

88:                                               ; preds = %85
  %89 = load i8*, i8** @funcCryptSIPVerifyIndirectData, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %123

91:                                               ; preds = %88
  %92 = load i8*, i8** @funcCryptSIPRemoveSignedDataMsg, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %123

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** @funcCryptSIPGetSignedDataMsg, align 8
  %98 = icmp eq i8* %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 5
  %101 = load i8*, i8** %100, align 8
  %102 = load i8*, i8** @funcCryptSIPPutSignedDataMsg, align 8
  %103 = icmp eq i8* %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** @funcCryptSIPCreateIndirectData, align 8
  %108 = icmp eq i8* %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** @funcCryptSIPVerifyIndirectData, align 8
  %113 = icmp eq i8* %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** @funcCryptSIPRemoveSignedDataMsg, align 8
  %118 = icmp eq i8* %116, %117
  br label %119

119:                                              ; preds = %114, %109, %104, %99, %94
  %120 = phi i1 [ false, %109 ], [ false, %104 ], [ false, %99 ], [ false, %94 ], [ %118, %114 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0))
  br label %125

123:                                              ; preds = %91, %88, %85, %82, %0
  %124 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %119
  %126 = call i32 @SetLastError(i32 -559038737)
  %127 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 48)
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 48, i32* %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i8* inttoptr (i64 3735928559 to i8*), i8** %129, align 8
  %130 = call i32 @CryptSIPLoad(%struct.TYPE_9__* @test_SIPLoad.unknown2, i32 0, %struct.TYPE_8__* %3)
  store i32 %130, i32* %1, align 4
  %131 = load i32, i32* %1, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, inttoptr (i64 3735928559 to i8*)
  %136 = zext i1 %135 to i32
  %137 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  %138 = call i32 @SetLastError(i32 -559038737)
  %139 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 48)
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 48, i32* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i8* inttoptr (i64 3735928559 to i8*), i8** %141, align 8
  %142 = call i32 @CryptSIPLoad(%struct.TYPE_9__* @test_SIPLoad.unknown3, i32 0, %struct.TYPE_8__* %3)
  store i32 %142, i32* %1, align 4
  %143 = load i32, i32* %1, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %197

145:                                              ; preds = %125
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, inttoptr (i64 3735928559 to i8*)
  %149 = zext i1 %148 to i32
  %150 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  %151 = load i8*, i8** @funcCryptSIPGetSignedDataMsg, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %194

153:                                              ; preds = %145
  %154 = load i8*, i8** @funcCryptSIPPutSignedDataMsg, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %194

156:                                              ; preds = %153
  %157 = load i8*, i8** @funcCryptSIPCreateIndirectData, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %194

159:                                              ; preds = %156
  %160 = load i8*, i8** @funcCryptSIPVerifyIndirectData, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %194

162:                                              ; preds = %159
  %163 = load i8*, i8** @funcCryptSIPRemoveSignedDataMsg, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %194

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = load i8*, i8** @funcCryptSIPGetSignedDataMsg, align 8
  %169 = icmp eq i8* %167, %168
  br i1 %169, label %170, label %190

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 5
  %172 = load i8*, i8** %171, align 8
  %173 = load i8*, i8** @funcCryptSIPPutSignedDataMsg, align 8
  %174 = icmp eq i8* %172, %173
  br i1 %174, label %175, label %190

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 4
  %177 = load i8*, i8** %176, align 8
  %178 = load i8*, i8** @funcCryptSIPCreateIndirectData, align 8
  %179 = icmp eq i8* %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = load i8*, i8** @funcCryptSIPVerifyIndirectData, align 8
  %184 = icmp eq i8* %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** @funcCryptSIPRemoveSignedDataMsg, align 8
  %189 = icmp eq i8* %187, %188
  br label %190

190:                                              ; preds = %185, %180, %175, %170, %165
  %191 = phi i1 [ false, %180 ], [ false, %175 ], [ false, %170 ], [ false, %165 ], [ %189, %185 ]
  %192 = zext i1 %191 to i32
  %193 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0))
  br label %196

194:                                              ; preds = %162, %159, %156, %153, %145
  %195 = call i32 @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %190
  br label %197

197:                                              ; preds = %196, %125
  %198 = call i32 @SetLastError(i32 -559038737)
  %199 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 48)
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 48, i32* %200, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i8* inttoptr (i64 3735928559 to i8*), i8** %201, align 8
  %202 = call i32 @CryptSIPLoad(%struct.TYPE_9__* @test_SIPLoad.unknown, i32 1, %struct.TYPE_8__* %3)
  store i32 %202, i32* %1, align 4
  %203 = load i32, i32* %1, align 4
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %208 = call i64 (...) @GetLastError()
  %209 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %210 = icmp eq i64 %208, %209
  %211 = zext i1 %210 to i32
  %212 = call i64 (...) @GetLastError()
  %213 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %212)
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = icmp eq i8* %215, inttoptr (i64 3735928559 to i8*)
  %217 = zext i1 %216 to i32
  %218 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @CryptSIPLoad(%struct.TYPE_9__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @trace(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
