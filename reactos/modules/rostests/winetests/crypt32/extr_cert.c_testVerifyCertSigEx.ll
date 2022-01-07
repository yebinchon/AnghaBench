; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_cert.c_testVerifyCertSigEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_cert.c_testVerifyCertSigEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i64, i32*, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32* }

@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Expected E_INVALIDARG, got %08x\0A\00", align 1
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@X509_CERT = common dso_local global i32 0, align 4
@CRYPT_ENCODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"CryptEncodeObjectEx failed: %08x\0A\00", align 1
@CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB = common dso_local global i32 0, align 4
@CRYPT_E_ASN1_EOD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Expected CRYPT_E_ASN1_EOD, got %08x\0A\00", align 1
@STATUS_ACCESS_VIOLATION = common dso_local global i64 0, align 8
@CRYPT_E_ASN1_BADTAG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [86 x i8] c"Expected STATUS_ACCESS_VIOLATION, CRYPT_E_ASN1_EOD, OR CRYPT_E_ASN1_BADTAG, got %08x\0A\00", align 1
@CRYPT_VERIFY_CERT_SIGN_ISSUER_NULL = common dso_local global i32 0, align 4
@AT_SIGNATURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"CryptExportKey failed: %08x\0A\00", align 1
@CRYPT_VERIFY_CERT_SIGN_ISSUER_PUBKEY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"CryptVerifyCertificateSignatureEx failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_14__*, i64, i32*, i8*)* @testVerifyCertSigEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testVerifyCertSigEx(i32 %0, %struct.TYPE_14__* %1, i64 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32* null, i32** %12, align 8
  store i8* null, i8** %13, align 8
  %17 = call i32 @pCryptVerifyCertificateSignatureEx(i32 0, i32 0, i32 0, %struct.TYPE_14__* null, i32 0, i32* null, i32 0, i32* null)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = call i64 (...) @GetLastError()
  %22 = load i64, i64* @E_INVALIDARG, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %5
  %25 = phi i1 [ false, %5 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 (...) @GetLastError()
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pCryptVerifyCertificateSignatureEx(i32 %29, i32 0, i32 0, %struct.TYPE_14__* null, i32 0, i32* null, i32 0, i32* null)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = call i64 (...) @GetLastError()
  %35 = load i64, i64* @E_INVALIDARG, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %33, %24
  %38 = phi i1 [ false, %24 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 (...) @GetLastError()
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @X509_ASN_ENCODING, align 4
  %44 = call i32 @pCryptVerifyCertificateSignatureEx(i32 %42, i32 %43, i32 0, %struct.TYPE_14__* null, i32 0, i32* null, i32 0, i32* null)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = call i64 (...) @GetLastError()
  %49 = load i64, i64* @E_INVALIDARG, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %47, %37
  %52 = phi i1 [ false, %37 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i64 (...) @GetLastError()
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @X509_ASN_ENCODING, align 4
  %81 = load i32, i32* @X509_CERT, align 4
  %82 = load i32, i32* @CRYPT_ENCODE_ALLOC_FLAG, align 4
  %83 = call i32 @pCryptEncodeObjectEx(i32 %80, i32 %81, %struct.TYPE_15__* %11, i32 %82, i32* null, i32** %12, i8** %13)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i64 (...) @GetLastError()
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load i32*, i32** %12, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %208

89:                                               ; preds = %51
  %90 = bitcast %struct.TYPE_14__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %90, i8 0, i64 32, i1 false)
  store i32* null, i32** %16, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @X509_ASN_ENCODING, align 4
  %93 = load i32, i32* @CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, align 4
  %94 = call i32 @pCryptVerifyCertificateSignatureEx(i32 %91, i32 %92, i32 %93, %struct.TYPE_14__* %15, i32 0, i32* null, i32 0, i32* null)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = call i64 (...) @GetLastError()
  %99 = load i64, i64* @CRYPT_E_ASN1_EOD, align 8
  %100 = icmp eq i64 %98, %99
  br label %101

101:                                              ; preds = %97, %89
  %102 = phi i1 [ false, %89 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  %104 = call i64 (...) @GetLastError()
  %105 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %104)
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  store i32* inttoptr (i64 3735928559 to i32*), i32** %107, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @X509_ASN_ENCODING, align 4
  %110 = load i32, i32* @CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, align 4
  %111 = call i32 @pCryptVerifyCertificateSignatureEx(i32 %108, i32 %109, i32 %110, %struct.TYPE_14__* %15, i32 0, i32* null, i32 0, i32* null)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %101
  %115 = call i64 (...) @GetLastError()
  %116 = load i64, i64* @STATUS_ACCESS_VIOLATION, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %126, label %118

118:                                              ; preds = %114
  %119 = call i64 (...) @GetLastError()
  %120 = load i64, i64* @CRYPT_E_ASN1_EOD, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = call i64 (...) @GetLastError()
  %124 = load i64, i64* @CRYPT_E_ASN1_BADTAG, align 8
  %125 = icmp eq i64 %123, %124
  br label %126

126:                                              ; preds = %122, %118, %114
  %127 = phi i1 [ true, %118 ], [ true, %114 ], [ %125, %122 ]
  br label %128

128:                                              ; preds = %126, %101
  %129 = phi i1 [ false, %101 ], [ %127, %126 ]
  %130 = zext i1 %129 to i32
  %131 = call i64 (...) @GetLastError()
  %132 = call i32 @ok(i32 %130, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i64 0, i64 0), i64 %131)
  %133 = load i8*, i8** %13, align 8
  %134 = ptrtoint i8* %133 to i32
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store i32 %134, i32* %135, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  store i32* %136, i32** %137, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @X509_ASN_ENCODING, align 4
  %140 = load i32, i32* @CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, align 4
  %141 = call i32 @pCryptVerifyCertificateSignatureEx(i32 %138, i32 %139, i32 %140, %struct.TYPE_14__* %15, i32 0, i32* null, i32 0, i32* null)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %128
  %145 = call i64 (...) @GetLastError()
  %146 = load i64, i64* @E_INVALIDARG, align 8
  %147 = icmp eq i64 %145, %146
  br label %148

148:                                              ; preds = %144, %128
  %149 = phi i1 [ false, %128 ], [ %147, %144 ]
  %150 = zext i1 %149 to i32
  %151 = call i64 (...) @GetLastError()
  %152 = call i32 @ok(i32 %150, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %151)
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @X509_ASN_ENCODING, align 4
  %155 = load i32, i32* @CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, align 4
  %156 = load i32, i32* @CRYPT_VERIFY_CERT_SIGN_ISSUER_NULL, align 4
  %157 = call i32 @pCryptVerifyCertificateSignatureEx(i32 %153, i32 %154, i32 %155, %struct.TYPE_14__* %15, i32 %156, i32* null, i32 0, i32* null)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %148
  %161 = call i64 (...) @GetLastError()
  %162 = load i64, i64* @E_INVALIDARG, align 8
  %163 = icmp eq i64 %161, %162
  br label %164

164:                                              ; preds = %160, %148
  %165 = phi i1 [ false, %148 ], [ %163, %160 ]
  %166 = zext i1 %165 to i32
  %167 = call i64 (...) @GetLastError()
  %168 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %167)
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @AT_SIGNATURE, align 4
  %171 = load i32, i32* @X509_ASN_ENCODING, align 4
  %172 = load i64, i64* %8, align 8
  %173 = call i32 @CryptExportPublicKeyInfoEx(i32 %169, i32 %170, i32 %171, i64 %172, i32 0, i32* null, i32* null, i8** %13)
  %174 = call i32 (...) @GetProcessHeap()
  %175 = load i8*, i8** %13, align 8
  %176 = call i32* @HeapAlloc(i32 %174, i32 0, i8* %175)
  store i32* %176, i32** %16, align 8
  %177 = load i32*, i32** %16, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %205

179:                                              ; preds = %164
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @AT_SIGNATURE, align 4
  %182 = load i32, i32* @X509_ASN_ENCODING, align 4
  %183 = load i64, i64* %8, align 8
  %184 = load i32*, i32** %16, align 8
  %185 = call i32 @CryptExportPublicKeyInfoEx(i32 %180, i32 %181, i32 %182, i64 %183, i32 0, i32* null, i32* %184, i8** %13)
  store i32 %185, i32* %14, align 4
  %186 = load i32, i32* %14, align 4
  %187 = call i64 (...) @GetLastError()
  %188 = call i32 @ok(i32 %186, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %187)
  %189 = load i32, i32* %14, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %179
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @X509_ASN_ENCODING, align 4
  %194 = load i32, i32* @CRYPT_VERIFY_CERT_SIGN_SUBJECT_BLOB, align 4
  %195 = load i32, i32* @CRYPT_VERIFY_CERT_SIGN_ISSUER_PUBKEY, align 4
  %196 = load i32*, i32** %16, align 8
  %197 = call i32 @pCryptVerifyCertificateSignatureEx(i32 %192, i32 %193, i32 %194, %struct.TYPE_14__* %15, i32 %195, i32* %196, i32 0, i32* null)
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %14, align 4
  %199 = call i64 (...) @GetLastError()
  %200 = call i32 @ok(i32 %198, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i64 %199)
  br label %201

201:                                              ; preds = %191, %179
  %202 = call i32 (...) @GetProcessHeap()
  %203 = load i32*, i32** %16, align 8
  %204 = call i32 @HeapFree(i32 %202, i32 0, i32* %203)
  br label %205

205:                                              ; preds = %201, %164
  %206 = load i32*, i32** %12, align 8
  %207 = call i32 @LocalFree(i32* %206)
  br label %208

208:                                              ; preds = %205, %51
  ret void
}

declare dso_local i32 @pCryptVerifyCertificateSignatureEx(i32, i32, i32, %struct.TYPE_14__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @pCryptEncodeObjectEx(i32, i32, %struct.TYPE_15__*, i32, i32*, i32**, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @CryptExportPublicKeyInfoEx(i32, i32, i32, i64, i32, i32*, i32*, i8**) #1

declare dso_local i32* @HeapAlloc(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
