; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/cryptnet/extr_cryptnet.c_test_retrieveObjectByUrl.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/cryptnet/extr_cryptnet.c_test_retrieveObjectByUrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"got 0x%x/%u (expected ERROR_INVALID_PARAMETER or E_INVALIDARG)\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"file://%s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"File URLs not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"CryptRetrieveObjectByUrlA failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Expected a valid pointer\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Expected 1 blob, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Unexpected size %d\0A\00", align 1
@CONTEXT_OID_CERTIFICATE = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"Expected a cert\0A\00", align 1
@CONTEXT_OID_CRL = common dso_local global i32* null, align 8
@CRYPT_E_NO_MATCH = common dso_local global i32 0, align 4
@CRYPT_E_ASN1_BADTAG = common dso_local global i32 0, align 4
@OSS_DATA_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"got 0x%x/%u (expected CRYPT_E_NO_MATCH)\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Expected CRL to be NULL\0A\00", align 1
@CONTEXT_OID_CAPI2_ANY = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"Expected 1 cert, got %d\0A\00", align 1
@CRYPT_CACHE_ONLY_RETRIEVAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"CryptRetrieveObjectByUrlA failed: %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"got %u with 0x%x/%u (expected '!=0' or '0' with E_INVALIDARG)\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"no usable CertificateContext\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Expected last sync time to be set\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@ERROR_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [63 x i8] c"Expected ERROR_FILE_NOT_FOUND or ERROR_PATH_NOT_FOUND, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_retrieveObjectByUrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_retrieveObjectByUrl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %2, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %3, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = add nsw i32 %17, 8
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %4, align 8
  %21 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = call i32 @SetLastError(i32 -559038737)
  %24 = call i32 (i8*, i32*, i32, i32, ...) @CryptRetrieveObjectByUrlA(i8* null, i32* null, i32 0, i32 0, i8* null, i8* null, i8* null, i8* null, i8* null)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %0
  %28 = call i32 (...) @GetLastError()
  %29 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = call i32 (...) @GetLastError()
  %33 = load i32, i32* @E_INVALIDARG, align 4
  %34 = icmp eq i32 %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ true, %27 ], [ %34, %31 ]
  br label %37

37:                                               ; preds = %35, %0
  %38 = phi i1 [ false, %0 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 (...) @GetLastError()
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = call i32 @make_tmp_file(i8* %16)
  %44 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  store %struct.TYPE_9__* inttoptr (i64 3735928559 to %struct.TYPE_9__*), %struct.TYPE_9__** %5, align 8
  %45 = bitcast %struct.TYPE_9__** %5 to i8**
  %46 = call i32 (i8*, i32*, i32, i32, ...) @CryptRetrieveObjectByUrlA(i8* %20, i32* null, i32 0, i32 0, i8** %45, i8* null, i8* null, i8* null, i8* null)
  store i32 %46, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %37
  %50 = call i32 @win_skip(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %326

51:                                               ; preds = %37
  %52 = load i32, i32* %1, align 4
  %53 = call i32 (...) @GetLastError()
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = icmp ne %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = icmp ne %struct.TYPE_9__* %58, inttoptr (i64 3735928559 to %struct.TYPE_9__*)
  br label %60

60:                                               ; preds = %57, %51
  %61 = phi i1 [ false, %51 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = icmp ne %struct.TYPE_9__* %64, null
  br i1 %65, label %66, label %97

66:                                               ; preds = %60
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = icmp ne %struct.TYPE_9__* %67, inttoptr (i64 3735928559 to %struct.TYPE_9__*)
  br i1 %68, label %69, label %97

69:                                               ; preds = %66
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  %74 = zext i1 %73 to i32
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp eq i64 %85, 4
  %87 = zext i1 %86 to i32
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = call i32 @CryptMemFree(%struct.TYPE_9__* %95)
  br label %97

97:                                               ; preds = %69, %66, %60
  store i64 3735928559, i64* %6, align 8
  %98 = load i32*, i32** @CONTEXT_OID_CERTIFICATE, align 8
  %99 = bitcast i64* %6 to i8**
  %100 = call i32 (i8*, i32*, i32, i32, ...) @CryptRetrieveObjectByUrlA(i8* %20, i32* %98, i32 0, i32 0, i8** %99, i8* null, i8* null, i8* null, i8* null)
  store i32 %100, i32* %1, align 4
  %101 = load i32, i32* %1, align 4
  %102 = call i32 (...) @GetLastError()
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i64, i64* %6, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load i64, i64* %6, align 8
  %108 = icmp ne i64 %107, 3735928559
  br label %109

109:                                              ; preds = %106, %97
  %110 = phi i1 [ false, %97 ], [ %108, %106 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %113 = load i64, i64* %6, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i64, i64* %6, align 8
  %117 = icmp ne i64 %116, 3735928559
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i64, i64* %6, align 8
  %120 = call i32 @CertFreeCertificateContext(i64 %119)
  br label %121

121:                                              ; preds = %118, %115, %109
  store i32* inttoptr (i64 3735928559 to i32*), i32** %7, align 8
  %122 = call i32 @SetLastError(i32 -559038737)
  %123 = load i32*, i32** @CONTEXT_OID_CRL, align 8
  %124 = bitcast i32** %7 to i8**
  %125 = call i32 (i8*, i32*, i32, i32, ...) @CryptRetrieveObjectByUrlA(i8* %20, i32* %123, i32 0, i32 0, i8** %124, i8* null, i8* null, i8* null, i8* null)
  store i32 %125, i32* %1, align 4
  %126 = load i32, i32* %1, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %147, label %128

128:                                              ; preds = %121
  %129 = call i32 (...) @GetLastError()
  %130 = load i32, i32* @CRYPT_E_NO_MATCH, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %145, label %132

132:                                              ; preds = %128
  %133 = call i32 (...) @GetLastError()
  %134 = load i32, i32* @CRYPT_E_ASN1_BADTAG, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = call i32 (...) @GetLastError()
  %138 = load i32, i32* @OSS_DATA_ERROR, align 4
  %139 = icmp eq i32 %137, %138
  br label %140

140:                                              ; preds = %136, %132
  %141 = phi i1 [ true, %132 ], [ %139, %136 ]
  %142 = zext i1 %141 to i32
  %143 = call i64 @broken(i32 %142)
  %144 = icmp ne i64 %143, 0
  br label %145

145:                                              ; preds = %140, %128
  %146 = phi i1 [ true, %128 ], [ %144, %140 ]
  br label %147

147:                                              ; preds = %145, %121
  %148 = phi i1 [ false, %121 ], [ %146, %145 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 (...) @GetLastError()
  %151 = call i32 (...) @GetLastError()
  %152 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %150, i32 %151)
  %153 = load i32, i32* %1, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %147
  %156 = call i32 (...) @GetLastError()
  %157 = load i32, i32* @CRYPT_E_ASN1_BADTAG, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = call i32 (...) @GetLastError()
  %161 = load i32, i32* @OSS_DATA_ERROR, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %159
  %164 = load i32*, i32** %7, align 8
  %165 = icmp eq i32* %164, null
  %166 = zext i1 %165 to i32
  %167 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %168

168:                                              ; preds = %163, %159, %155, %147
  %169 = load i32*, i32** %7, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i32*, i32** %7, align 8
  %173 = icmp ne i32* %172, inttoptr (i64 3735928559 to i32*)
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32*, i32** %7, align 8
  %176 = call i32 @CertFreeCRLContext(i32* %175)
  br label %177

177:                                              ; preds = %174, %171, %168
  store i64 3735928559, i64* %8, align 8
  %178 = load i32*, i32** @CONTEXT_OID_CAPI2_ANY, align 8
  %179 = call i32 (i8*, i32*, i32, i32, ...) @CryptRetrieveObjectByUrlA(i8* %20, i32* %178, i32 0, i32 0, i64* %8, i8* null, i8* null, i8* null, i8* null)
  store i32 %179, i32* %1, align 4
  %180 = load i32, i32* %1, align 4
  %181 = call i32 (...) @GetLastError()
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  %183 = load i64, i64* %8, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %210

185:                                              ; preds = %177
  %186 = load i64, i64* %8, align 8
  %187 = icmp ne i64 %186, 3735928559
  br i1 %187, label %188, label %210

188:                                              ; preds = %185
  store i32 0, i32* %12, align 4
  store i64 0, i64* %6, align 8
  br label %189

189:                                              ; preds = %199, %188
  %190 = load i64, i64* %8, align 8
  %191 = load i64, i64* %6, align 8
  %192 = call i64 @CertEnumCertificatesInStore(i64 %190, i64 %191)
  store i64 %192, i64* %6, align 8
  %193 = load i64, i64* %6, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %195, %189
  br label %199

199:                                              ; preds = %198
  %200 = load i64, i64* %6, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %189, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %12, align 4
  %204 = icmp eq i32 %203, 1
  %205 = zext i1 %204 to i32
  %206 = load i32, i32* %12, align 4
  %207 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %206)
  %208 = load i64, i64* %8, align 8
  %209 = call i32 @CertCloseStore(i64 %208, i32 0)
  br label %210

210:                                              ; preds = %202, %185, %177
  store i64 3735928559, i64* %6, align 8
  %211 = load i32*, i32** @CONTEXT_OID_CERTIFICATE, align 8
  %212 = load i32, i32* @CRYPT_CACHE_ONLY_RETRIEVAL, align 4
  %213 = bitcast i64* %6 to i8**
  %214 = call i32 (i8*, i32*, i32, i32, ...) @CryptRetrieveObjectByUrlA(i8* %20, i32* %211, i32 %212, i32 0, i8** %213, i8* null, i8* null, i8* null, i8* null)
  store i32 %214, i32* %1, align 4
  %215 = load i32, i32* %1, align 4
  %216 = call i32 (...) @GetLastError()
  %217 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %216)
  %218 = load i64, i64* %6, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %210
  %221 = load i64, i64* %6, align 8
  %222 = icmp ne i64 %221, 3735928559
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i64, i64* %6, align 8
  %225 = call i32 @CertFreeCertificateContext(i64 %224)
  br label %226

226:                                              ; preds = %223, %220, %210
  store i64 3735928559, i64* %6, align 8
  %227 = load i32*, i32** @CONTEXT_OID_CERTIFICATE, align 8
  %228 = bitcast i64* %6 to i8**
  %229 = call i32 (i8*, i32*, i32, i32, ...) @CryptRetrieveObjectByUrlA(i8* %20, i32* %227, i32 0, i32 0, i8** %228, i8* null, i8* null, i8* null, %struct.TYPE_8__* %9)
  store i32 %229, i32* %1, align 4
  %230 = load i32, i32* %1, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %239, label %232

232:                                              ; preds = %226
  %233 = call i32 (...) @GetLastError()
  %234 = load i32, i32* @E_INVALIDARG, align 4
  %235 = icmp eq i32 %233, %234
  %236 = zext i1 %235 to i32
  %237 = call i64 @broken(i32 %236)
  %238 = icmp ne i64 %237, 0
  br label %239

239:                                              ; preds = %232, %226
  %240 = phi i1 [ true, %226 ], [ %238, %232 ]
  %241 = zext i1 %240 to i32
  %242 = load i32, i32* %1, align 4
  %243 = call i32 (...) @GetLastError()
  %244 = call i32 (...) @GetLastError()
  %245 = call i32 (i32, i8*, ...) @ok(i32 %241, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0), i32 %242, i32 %243, i32 %244)
  %246 = load i64, i64* %6, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %239
  %249 = load i64, i64* %6, align 8
  %250 = icmp ne i64 %249, 3735928559
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i64, i64* %6, align 8
  %253 = call i32 @CertFreeCertificateContext(i64 %252)
  br label %254

254:                                              ; preds = %251, %248, %239
  store i64 3735928559, i64* %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 24, i32* %255, align 8
  %256 = load i32*, i32** @CONTEXT_OID_CERTIFICATE, align 8
  %257 = bitcast i64* %6 to i8**
  %258 = call i32 (i8*, i32*, i32, i32, ...) @CryptRetrieveObjectByUrlA(i8* %20, i32* %256, i32 0, i32 0, i8** %257, i8* null, i8* null, i8* null, %struct.TYPE_8__* %9)
  store i32 %258, i32* %1, align 4
  %259 = load i32, i32* %1, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %268, label %261

261:                                              ; preds = %254
  %262 = call i32 (...) @GetLastError()
  %263 = load i32, i32* @E_INVALIDARG, align 4
  %264 = icmp eq i32 %262, %263
  %265 = zext i1 %264 to i32
  %266 = call i64 @broken(i32 %265)
  %267 = icmp ne i64 %266, 0
  br label %268

268:                                              ; preds = %261, %254
  %269 = phi i1 [ true, %254 ], [ %267, %261 ]
  %270 = zext i1 %269 to i32
  %271 = load i32, i32* %1, align 4
  %272 = call i32 (...) @GetLastError()
  %273 = call i32 (...) @GetLastError()
  %274 = call i32 (i32, i8*, ...) @ok(i32 %270, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0), i32 %271, i32 %272, i32 %273)
  %275 = load i32, i32* %1, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %268
  %278 = call i32 @DeleteFileA(i8* %16)
  %279 = call i32 @skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %326

280:                                              ; preds = %268
  %281 = load i64, i64* %6, align 8
  %282 = call i32 @CertFreeCertificateContext(i64 %281)
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %283, align 8
  %284 = load i32*, i32** @CONTEXT_OID_CERTIFICATE, align 8
  %285 = bitcast i64* %6 to i8**
  %286 = call i32 (i8*, i32*, i32, i32, ...) @CryptRetrieveObjectByUrlA(i8* %20, i32* %284, i32 0, i32 0, i8** %285, i8* null, i8* null, i8* null, %struct.TYPE_8__* %9)
  store i32 %286, i32* %1, align 4
  %287 = load i32, i32* %1, align 4
  %288 = call i32 (...) @GetLastError()
  %289 = call i32 (i32, i8*, ...) @ok(i32 %287, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %288)
  %290 = load i64, i64* %6, align 8
  %291 = call i32 @CertFreeCertificateContext(i64 %290)
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %280
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br label %299

299:                                              ; preds = %295, %280
  %300 = phi i1 [ true, %280 ], [ %298, %295 ]
  %301 = zext i1 %300 to i32
  %302 = call i32 (i32, i8*, ...) @ok(i32 %301, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  %303 = call i32 @DeleteFileA(i8* %16)
  %304 = call i32 @SetLastError(i32 -559038737)
  %305 = load i32*, i32** @CONTEXT_OID_CERTIFICATE, align 8
  %306 = load i32, i32* @CRYPT_CACHE_ONLY_RETRIEVAL, align 4
  %307 = bitcast i64* %6 to i8**
  %308 = call i32 (i8*, i32*, i32, i32, ...) @CryptRetrieveObjectByUrlA(i8* %20, i32* %305, i32 %306, i32 0, i8** %307, i8* null, i8* null, i8* null, i8* null)
  store i32 %308, i32* %1, align 4
  %309 = load i32, i32* %1, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %321, label %311

311:                                              ; preds = %299
  %312 = call i32 (...) @GetLastError()
  %313 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %319, label %315

315:                                              ; preds = %311
  %316 = call i32 (...) @GetLastError()
  %317 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %318 = icmp eq i32 %316, %317
  br label %319

319:                                              ; preds = %315, %311
  %320 = phi i1 [ true, %311 ], [ %318, %315 ]
  br label %321

321:                                              ; preds = %319, %299
  %322 = phi i1 [ false, %299 ], [ %320, %319 ]
  %323 = zext i1 %322 to i32
  %324 = call i32 (...) @GetLastError()
  %325 = call i32 (i32, i8*, ...) @ok(i32 %323, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i64 0, i64 0), i32 %324)
  store i32 0, i32* %11, align 4
  br label %326

326:                                              ; preds = %321, %277, %49
  %327 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %327)
  %328 = load i32, i32* %11, align 4
  switch i32 %328, label %330 [
    i32 0, label %329
    i32 1, label %329
  ]

329:                                              ; preds = %326, %326
  ret void

330:                                              ; preds = %326
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SetLastError(i32) #3

declare dso_local i32 @CryptRetrieveObjectByUrlA(i8*, i32*, i32, i32, ...) #3

declare dso_local i32 @ok(i32, i8*, ...) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i32 @make_tmp_file(i8*) #3

declare dso_local i32 @sprintf(i8*, i8*, i8*) #3

declare dso_local i32 @win_skip(i8*) #3

declare dso_local i32 @CryptMemFree(%struct.TYPE_9__*) #3

declare dso_local i32 @CertFreeCertificateContext(i64) #3

declare dso_local i64 @broken(i32) #3

declare dso_local i32 @CertFreeCRLContext(i32*) #3

declare dso_local i64 @CertEnumCertificatesInStore(i64, i64) #3

declare dso_local i32 @CertCloseStore(i64, i32) #3

declare dso_local i32 @DeleteFileA(i8*) #3

declare dso_local i32 @skip(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
