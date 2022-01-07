; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_decodeRsaPublicKey.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_test_decodeRsaPublicKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64* }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@RSA_CSP_PUBLICKEYBLOB = common dso_local global i32 0, align 4
@rsaPubKeys = common dso_local global %struct.TYPE_7__* null, align 8
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@CRYPT_E_ASN1_EOD = common dso_local global i64 0, align 8
@OSS_MORE_INPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Expected CRYPT_E_ASN1_EOD or OSS_MORE_INPUT, got %08x\0A\00", align 1
@szOID_RSA_RSA = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %08x\0A\00", align 1
@szOID_RSA_SHA1RSA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"CryptDecodeObjectEx failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Wrong size %d\0A\00", align 1
@PUBLICKEYBLOB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"Expected type PUBLICKEYBLOB (%d), got %d\0A\00", align 1
@CUR_BLOB_VERSION = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"Expected version CUR_BLOB_VERSION (%d), got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Expected reserved 0, got %d\0A\00", align 1
@CALG_RSA_KEYX = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"Expected CALG_RSA_KEYX, got %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Expected magic RSA1, got %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Wrong bit len %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Expected pubexp 65537, got %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Unexpected modulus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_decodeRsaPublicKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_decodeRsaPublicKey(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %2, align 8
  store i32* null, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i32, i32* @RSA_CSP_PUBLICKEYBLOB, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsaPubKeys, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i64*, i64** %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsaPubKeys, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %22 = call i32 @pCryptDecodeObjectEx(i64 %9, i32 %10, i64* %14, i64 %20, i32 %21, i32* null, i32** %4, i64* %5)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %1
  %26 = call i64 (...) @GetLastError()
  %27 = load i64, i64* @CRYPT_E_ASN1_EOD, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = call i64 (...) @GetLastError()
  %31 = load i64, i64* @OSS_MORE_INPUT, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ true, %25 ], [ %32, %29 ]
  br label %35

35:                                               ; preds = %33, %1
  %36 = phi i1 [ false, %1 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 (...) @GetLastError()
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* %2, align 8
  %41 = load i32, i32* @szOID_RSA_RSA, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsaPubKeys, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsaPubKeys, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 2
  %53 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %54 = call i32 @pCryptDecodeObjectEx(i64 %40, i32 %41, i64* %45, i64 %52, i32 %53, i32* null, i32** %4, i64* %5)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %35
  %58 = call i64 (...) @GetLastError()
  %59 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %60 = icmp eq i64 %58, %59
  br label %61

61:                                               ; preds = %57, %35
  %62 = phi i1 [ false, %35 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = call i64 (...) @GetLastError()
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i64, i64* %2, align 8
  %67 = load i32, i32* @szOID_RSA_SHA1RSA, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsaPubKeys, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsaPubKeys, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 2
  %79 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %80 = call i32 @pCryptDecodeObjectEx(i64 %66, i32 %67, i64* %71, i64 %78, i32 %79, i32* null, i32** %4, i64* %5)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %61
  %84 = call i64 (...) @GetLastError()
  %85 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %86 = icmp eq i64 %84, %85
  br label %87

87:                                               ; preds = %83, %61
  %88 = phi i1 [ false, %61 ], [ %86, %83 ]
  %89 = zext i1 %88 to i32
  %90 = call i64 (...) @GetLastError()
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %90)
  store i64 0, i64* %3, align 8
  br label %92

92:                                               ; preds = %233, %87
  %93 = load i64, i64* %3, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsaPubKeys, align 8
  %95 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %94)
  %96 = icmp ult i64 %93, %95
  br i1 %96, label %97, label %236

97:                                               ; preds = %92
  store i64 0, i64* %5, align 8
  %98 = load i64, i64* %2, align 8
  %99 = load i32, i32* @RSA_CSP_PUBLICKEYBLOB, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsaPubKeys, align 8
  %101 = load i64, i64* %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i64*, i64** %103, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsaPubKeys, align 8
  %106 = load i64, i64* %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 2
  %113 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %114 = call i32 @pCryptDecodeObjectEx(i64 %98, i32 %99, i64* %104, i64 %112, i32 %113, i32* null, i32** %4, i64* %5)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i64 (...) @GetLastError()
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %116)
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %232

120:                                              ; preds = %97
  %121 = load i32*, i32** %4, align 8
  %122 = bitcast i32* %121 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %122, %struct.TYPE_6__** %7, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 32
  %125 = bitcast i32* %124 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %125, %struct.TYPE_5__** %8, align 8
  %126 = load i64, i64* %5, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsaPubKeys, align 8
  %128 = load i64, i64* %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = add i64 44, %132
  %134 = icmp uge i64 %126, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %5, align 8
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %136)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @PUBLICKEYBLOB, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = load i64, i64* @PUBLICKEYBLOB, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %144, i64 %147)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @CUR_BLOB_VERSION, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i32
  %155 = load i64, i64* @CUR_BLOB_VERSION, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i64 %155, i64 %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %167)
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @CALG_RSA_KEYX, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %177)
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 826364754
  %183 = zext i1 %182 to i32
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %186)
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsaPubKeys, align 8
  %192 = load i64, i64* %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = mul nsw i32 %195, 8
  %197 = icmp eq i32 %190, %196
  %198 = zext i1 %197 to i32
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %201)
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 65537
  %207 = zext i1 %206 to i32
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i32, i8*, ...) @ok(i32 %207, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %210)
  %212 = load i32*, i32** %4, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 32
  %214 = getelementptr inbounds i32, i32* %213, i64 12
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsaPubKeys, align 8
  %216 = load i64, i64* %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rsaPubKeys, align 8
  %221 = load i64, i64* %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @memcmp(i32* %214, i32 %219, i32 %224)
  %226 = icmp ne i32 %225, 0
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  %229 = call i32 (i32, i8*, ...) @ok(i32 %228, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %230 = load i32*, i32** %4, align 8
  %231 = call i32 @LocalFree(i32* %230)
  br label %232

232:                                              ; preds = %120, %97
  br label %233

233:                                              ; preds = %232
  %234 = load i64, i64* %3, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %3, align 8
  br label %92

236:                                              ; preds = %92
  ret void
}

declare dso_local i32 @pCryptDecodeObjectEx(i64, i32, i64*, i64, i32, i32*, i32**, i64*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
