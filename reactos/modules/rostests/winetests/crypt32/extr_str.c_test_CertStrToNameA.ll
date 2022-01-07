; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_str.c_test_CertStrToNameA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_str.c_test_CertStrToNameA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Expected failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bogus\00", align 1
@CRYPT_E_INVALID_X500_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Expected CRYPT_E_INVALID_X500_STRING, got %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"foo=1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"CN=1\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %08x\0A\00", align 1
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"CertStrToNameA failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"CN=\22\221\22\22\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"CN=1+2\00", align 1
@CERT_NAME_STR_NO_PLUS_FLAG = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"Expected ERROR_SUCCESS, got %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"CN=1,2\00", align 1
@CERT_NAME_STR_NO_QUOTING_FLAG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"CN=\221,2;3,4\22\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"CN=abc\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"CN=\22abc\22\00", align 1
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [36 x i8] c"Expected ERROR_MORE_DATA, got %08x\0A\00", align 1
@namesA = common dso_local global %struct.TYPE_3__* null, align 8
@.str.15 = private unnamed_addr constant [42 x i8] c"CertStrToNameA failed on string %s: %08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Expected size %d, got %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Unexpected value for string %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CertStrToNameA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CertStrToNameA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [100 x i32], align 16
  %5 = call i32 @pCertStrToNameA(i32 0, i8* null, i32 0, i32* null, i32* null, i64* %2, i32* null)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @pCertStrToNameA(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32* null, i64* %2, i32* null)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %0
  %15 = call i64 (...) @GetLastError()
  %16 = load i64, i64* @CRYPT_E_INVALID_X500_STRING, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %14, %0
  %19 = phi i1 [ false, %0 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 (...) @GetLastError()
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  %23 = call i32 @pCertStrToNameA(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null, i32* null, i64* %2, i32* null)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = call i64 (...) @GetLastError()
  %28 = load i64, i64* @CRYPT_E_INVALID_X500_STRING, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %18
  %31 = phi i1 [ false, %18 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  %35 = call i32 @pCertStrToNameA(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null, i32* null, i64* %2, i32* null)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = call i64 (...) @GetLastError()
  %40 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %38, %30
  %43 = phi i1 [ false, %30 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 (...) @GetLastError()
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @X509_ASN_ENCODING, align 4
  %48 = call i32 @pCertStrToNameA(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0, i32* null, i32* null, i64* %2, i32* null)
  store i32 %48, i32* %1, align 4
  %49 = load i32, i32* %1, align 4
  %50 = call i64 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %50)
  store i64 400, i64* %2, align 8
  %52 = load i32, i32* @X509_ASN_ENCODING, align 4
  %53 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %54 = call i32 @pCertStrToNameA(i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* null, i32* %53, i64* %2, i32* null)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %42
  %58 = call i64 (...) @GetLastError()
  %59 = load i64, i64* @CRYPT_E_INVALID_X500_STRING, align 8
  %60 = icmp eq i64 %58, %59
  br label %61

61:                                               ; preds = %57, %42
  %62 = phi i1 [ false, %42 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = call i64 (...) @GetLastError()
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @X509_ASN_ENCODING, align 4
  %67 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %68 = call i32 @pCertStrToNameA(i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 0, i32* null, i32* %67, i64* %2, i32* null)
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* %1, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %61
  %72 = call i64 (...) @GetLastError()
  %73 = load i64, i64* @CRYPT_E_INVALID_X500_STRING, align 8
  %74 = icmp eq i64 %72, %73
  br label %75

75:                                               ; preds = %71, %61
  %76 = phi i1 [ false, %61 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = call i64 (...) @GetLastError()
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* @X509_ASN_ENCODING, align 4
  %81 = load i32, i32* @CERT_NAME_STR_NO_PLUS_FLAG, align 4
  %82 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %83 = call i32 @pCertStrToNameA(i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %81, i32* null, i32* %82, i64* %2, i32* null)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* %1, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = call i64 (...) @GetLastError()
  %88 = load i64, i64* @ERROR_SUCCESS, align 8
  %89 = icmp eq i64 %87, %88
  br label %90

90:                                               ; preds = %86, %75
  %91 = phi i1 [ false, %75 ], [ %89, %86 ]
  %92 = zext i1 %91 to i32
  %93 = call i64 (...) @GetLastError()
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %93)
  %95 = load i32, i32* @X509_ASN_ENCODING, align 4
  %96 = load i32, i32* @CERT_NAME_STR_NO_QUOTING_FLAG, align 4
  %97 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %98 = call i32 @pCertStrToNameA(i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %96, i32* null, i32* %97, i64* %2, i32* null)
  store i32 %98, i32* %1, align 4
  %99 = load i32, i32* %1, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %90
  %102 = call i64 (...) @GetLastError()
  %103 = load i64, i64* @CRYPT_E_INVALID_X500_STRING, align 8
  %104 = icmp eq i64 %102, %103
  br label %105

105:                                              ; preds = %101, %90
  %106 = phi i1 [ false, %90 ], [ %104, %101 ]
  %107 = zext i1 %106 to i32
  %108 = call i64 (...) @GetLastError()
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %108)
  %110 = load i32, i32* @X509_ASN_ENCODING, align 4
  %111 = load i32, i32* @CERT_NAME_STR_NO_QUOTING_FLAG, align 4
  %112 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %113 = call i32 @pCertStrToNameA(i32 %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %111, i32* null, i32* %112, i64* %2, i32* null)
  store i32 %113, i32* %1, align 4
  %114 = load i32, i32* %1, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %105
  %117 = call i64 (...) @GetLastError()
  %118 = load i64, i64* @CRYPT_E_INVALID_X500_STRING, align 8
  %119 = icmp eq i64 %117, %118
  br label %120

120:                                              ; preds = %116, %105
  %121 = phi i1 [ false, %105 ], [ %119, %116 ]
  %122 = zext i1 %121 to i32
  %123 = call i64 (...) @GetLastError()
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %123)
  %125 = load i32, i32* @X509_ASN_ENCODING, align 4
  %126 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %127 = call i32 @pCertStrToNameA(i32 %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 0, i32* null, i32* %126, i64* %2, i32* null)
  store i32 %127, i32* %1, align 4
  %128 = load i32, i32* %1, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %120
  %131 = call i64 (...) @GetLastError()
  %132 = load i64, i64* @ERROR_SUCCESS, align 8
  %133 = icmp eq i64 %131, %132
  br label %134

134:                                              ; preds = %130, %120
  %135 = phi i1 [ false, %120 ], [ %133, %130 ]
  %136 = zext i1 %135 to i32
  %137 = call i64 (...) @GetLastError()
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %137)
  %139 = load i32, i32* @X509_ASN_ENCODING, align 4
  %140 = load i32, i32* @CERT_NAME_STR_NO_QUOTING_FLAG, align 4
  %141 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %142 = call i32 @pCertStrToNameA(i32 %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %140, i32* null, i32* %141, i64* %2, i32* null)
  store i32 %142, i32* %1, align 4
  %143 = load i32, i32* %1, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %134
  %146 = call i64 (...) @GetLastError()
  %147 = load i64, i64* @ERROR_SUCCESS, align 8
  %148 = icmp eq i64 %146, %147
  br label %149

149:                                              ; preds = %145, %134
  %150 = phi i1 [ false, %134 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  %152 = call i64 (...) @GetLastError()
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %152)
  %154 = load i32, i32* @X509_ASN_ENCODING, align 4
  %155 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %156 = call i32 @pCertStrToNameA(i32 %154, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 0, i32* null, i32* %155, i64* %2, i32* null)
  store i32 %156, i32* %1, align 4
  %157 = load i32, i32* %1, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = call i64 (...) @GetLastError()
  %161 = load i64, i64* @ERROR_SUCCESS, align 8
  %162 = icmp eq i64 %160, %161
  br label %163

163:                                              ; preds = %159, %149
  %164 = phi i1 [ false, %149 ], [ %162, %159 ]
  %165 = zext i1 %164 to i32
  %166 = call i64 (...) @GetLastError()
  %167 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i64 %166)
  %168 = load i32, i32* @X509_ASN_ENCODING, align 4
  %169 = load i32, i32* @CERT_NAME_STR_NO_QUOTING_FLAG, align 4
  %170 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %171 = call i32 @pCertStrToNameA(i32 %168, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %169, i32* null, i32* %170, i64* %2, i32* null)
  store i32 %171, i32* %1, align 4
  %172 = load i32, i32* %1, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %163
  %175 = call i64 (...) @GetLastError()
  %176 = load i64, i64* @ERROR_MORE_DATA, align 8
  %177 = icmp eq i64 %175, %176
  br label %178

178:                                              ; preds = %174, %163
  %179 = phi i1 [ false, %163 ], [ %177, %174 ]
  %180 = zext i1 %179 to i32
  %181 = call i64 (...) @GetLastError()
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i64 %181)
  store i64 0, i64* %3, align 8
  br label %183

183:                                              ; preds = %245, %178
  %184 = load i64, i64* %3, align 8
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesA, align 8
  %186 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %185)
  %187 = icmp ult i64 %184, %186
  br i1 %187, label %188, label %248

188:                                              ; preds = %183
  store i64 400, i64* %2, align 8
  %189 = load i32, i32* @X509_ASN_ENCODING, align 4
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesA, align 8
  %191 = load i64, i64* %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %196 = call i32 @pCertStrToNameA(i32 %189, i8* %194, i32 0, i32* null, i32* %195, i64* %2, i32* null)
  store i32 %196, i32* %1, align 4
  %197 = load i32, i32* %1, align 4
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesA, align 8
  %199 = load i64, i64* %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i64 (...) @GetLastError()
  %204 = call i32 (i32, i8*, ...) @ok(i32 %197, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i8* %202, i64 %203)
  %205 = load i64, i64* %2, align 8
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesA, align 8
  %207 = load i64, i64* %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp eq i64 %205, %210
  %212 = zext i1 %211 to i32
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesA, align 8
  %214 = load i64, i64* %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %2, align 8
  %219 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i64 %217, i64 %218)
  %220 = load i32, i32* %1, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %244

222:                                              ; preds = %188
  %223 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 0
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesA, align 8
  %225 = load i64, i64* %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesA, align 8
  %230 = load i64, i64* %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @memcmp(i32* %223, i32 %228, i64 %233)
  %235 = icmp ne i32 %234, 0
  %236 = xor i1 %235, true
  %237 = zext i1 %236 to i32
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** @namesA, align 8
  %239 = load i64, i64* %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 (i32, i8*, ...) @ok(i32 %237, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i8* %242)
  br label %244

244:                                              ; preds = %222, %188
  br label %245

245:                                              ; preds = %244
  %246 = load i64, i64* %3, align 8
  %247 = add i64 %246, 1
  store i64 %247, i64* %3, align 8
  br label %183

248:                                              ; preds = %183
  ret void
}

declare dso_local i32 @pCertStrToNameA(i32, i8*, i32, i32*, i32*, i64*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @memcmp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
