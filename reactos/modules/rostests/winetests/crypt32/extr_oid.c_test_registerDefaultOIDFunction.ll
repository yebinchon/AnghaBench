; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_oid.c_test_registerDefaultOIDFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_oid.c_test_registerDefaultOIDFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_registerDefaultOIDFunction.fmt = internal constant [63 x i8] c"Software\\Microsoft\\Cryptography\\OID\\EncodingType %d\\%s\\DEFAULT\00", align 16
@test_registerDefaultOIDFunction.func = internal constant [21 x i8] c"CertDllOpenStoreProv\00", align 16
@MAX_PATH = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Expected E_INVALIDARG, got %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CertDllOpenStoreProv\00", align 1
@bogusDll = common dso_local global i32* null, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Need admin rights\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"CryptRegisterDefaultOIDFunction failed: %08x\0A\00", align 1
@ERROR_FILE_EXISTS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"Expected ERROR_FILE_EXISTS, got %08x\0A\00", align 1
@bogus2Dll = common dso_local global i32* null, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Expected key to exist, RegOpenKeyA failed: %d\0A\00", align 1
@test_registerDefaultOIDFunction.dllA = internal constant [4 x i8] c"Dll\00", align 1
@test_registerDefaultOIDFunction.bogusDll_A = internal constant [10 x i8] c"bogus.dll\00", align 1
@test_registerDefaultOIDFunction.bogus2Dll_A = internal constant [11 x i8] c"bogus2.dll\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Expected Dll value to exist, RegQueryValueExA failed: %d\0A\00", align 1
@REG_MULTI_SZ = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"Expected type REG_MULTI_SZ, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Unexpected dll\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"CryptUnregisterDefaultOIDFunction failed: %08x\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %d\0A\00", align 1
@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"CryptRegisterDefaultOIDFunction failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"CryptUnregisterDefaultOIDFunction failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Expected ERROR_FILE_NOT_FOUND, got %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_registerDefaultOIDFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_registerDefaultOIDFunction() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %1, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %2, align 8
  %16 = call i32 @CryptRegisterDefaultOIDFunction(i32 0, i8* null, i32 0, i32* null)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %0
  %20 = call i64 (...) @GetLastError()
  %21 = load i64, i64* @E_INVALIDARG, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %0
  %24 = phi i1 [ false, %0 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = call i32 @SetLastError(i32 -559038737)
  %29 = load i32*, i32** @bogusDll, align 8
  %30 = call i32 @CryptRegisterDefaultOIDFunction(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %23
  %34 = call i64 (...) @GetLastError()
  %35 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @skip(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %172

39:                                               ; preds = %33, %23
  %40 = load i32, i32* %3, align 4
  %41 = call i64 (...) @GetLastError()
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** @bogusDll, align 8
  %44 = call i32 @CryptRegisterDefaultOIDFunction(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = call i64 (...) @GetLastError()
  %49 = load i64, i64* @ERROR_FILE_EXISTS, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %47, %39
  %52 = phi i1 [ false, %39 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i64 (...) @GetLastError()
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %54)
  %56 = load i32*, i32** @bogusDll, align 8
  %57 = call i32 @CryptRegisterDefaultOIDFunction(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %51
  %61 = call i64 (...) @GetLastError()
  %62 = load i64, i64* @ERROR_FILE_EXISTS, align 8
  %63 = icmp eq i64 %61, %62
  br label %64

64:                                               ; preds = %60, %51
  %65 = phi i1 [ false, %51 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  %67 = call i64 (...) @GetLastError()
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %67)
  %69 = load i32*, i32** @bogus2Dll, align 8
  %70 = call i32 @CryptRegisterDefaultOIDFunction(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i64 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %72)
  %74 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @test_registerDefaultOIDFunction.fmt, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @test_registerDefaultOIDFunction.func, i64 0, i64 0))
  %75 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %76 = call i64 @RegOpenKeyA(i32 %75, i8* %15, i32* %5)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %4, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i64 %80)
  %82 = load i64, i64* %4, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %124

84:                                               ; preds = %64
  %85 = load i32, i32* @MAX_PATH, align 4
  %86 = zext i32 %85 to i64
  %87 = call i8* @llvm.stacksave()
  store i8* %87, i8** %7, align 8
  %88 = alloca i8, i64 %86, align 16
  store i64 %86, i64* %8, align 8
  %89 = call i64 @ARRAY_SIZE(i8* %88)
  store i64 %89, i64* %10, align 8
  %90 = load i32, i32* %5, align 4
  %91 = ptrtoint i8* %88 to i32
  %92 = call i64 @RegQueryValueExA(i32 %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_registerDefaultOIDFunction.dllA, i64 0, i64 0), i32* null, i64* %9, i32 %91, i64* %10)
  store i64 %92, i64* %4, align 8
  %93 = load i64, i64* %4, align 8
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %4, align 8
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i64 %96)
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* @REG_MULTI_SZ, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i64, i64* %9, align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 %102)
  store i8* %88, i8** %11, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = call i32 @lstrcmpiA(i8* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_registerDefaultOIDFunction.bogusDll_A, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %110 = load i8*, i8** %11, align 8
  %111 = call i64 @lstrlenA(i8* %110)
  %112 = add nsw i64 %111, 1
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 %112
  store i8* %114, i8** %11, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @lstrcmpiA(i8* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_registerDefaultOIDFunction.bogus2Dll_A, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 (i32, i8*, ...) @ok(i32 %119, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @RegCloseKey(i32 %121)
  %123 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %123)
  br label %124

124:                                              ; preds = %84, %64
  %125 = load i32*, i32** @bogusDll, align 8
  %126 = call i32 @CryptUnregisterDefaultOIDFunction(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %125)
  store i32 %126, i32* %3, align 4
  %127 = load i32, i32* %3, align 4
  %128 = call i64 (...) @GetLastError()
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i64 %128)
  %130 = load i32*, i32** @bogus2Dll, align 8
  %131 = call i32 @CryptUnregisterDefaultOIDFunction(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %130)
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %3, align 4
  %133 = call i64 (...) @GetLastError()
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i64 %133)
  %135 = load i32*, i32** @bogusDll, align 8
  %136 = call i32 @CryptUnregisterDefaultOIDFunction(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %135)
  store i32 %136, i32* %3, align 4
  %137 = load i32, i32* %3, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %124
  %140 = call i64 (...) @GetLastError()
  %141 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %142 = icmp eq i64 %140, %141
  br label %143

143:                                              ; preds = %139, %124
  %144 = phi i1 [ false, %124 ], [ %142, %139 ]
  %145 = zext i1 %144 to i32
  %146 = call i64 (...) @GetLastError()
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i64 %146)
  %148 = load i32, i32* @X509_ASN_ENCODING, align 4
  %149 = load i32*, i32** @bogusDll, align 8
  %150 = call i32 @CryptRegisterDefaultOIDFunction(i32 %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %149)
  store i32 %150, i32* %3, align 4
  %151 = load i32, i32* %3, align 4
  %152 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %153 = load i32, i32* @X509_ASN_ENCODING, align 4
  %154 = load i32*, i32** @bogusDll, align 8
  %155 = call i32 @CryptUnregisterDefaultOIDFunction(i32 %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %154)
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* %3, align 4
  %157 = call i32 (i32, i8*, ...) @ok(i32 %156, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  %158 = load i32, i32* @X509_ASN_ENCODING, align 4
  %159 = load i32*, i32** @bogusDll, align 8
  %160 = call i32 @CryptUnregisterDefaultOIDFunction(i32 %158, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %159)
  store i32 %160, i32* %3, align 4
  %161 = load i32, i32* %3, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %143
  %164 = call i64 (...) @GetLastError()
  %165 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %166 = icmp eq i64 %164, %165
  br label %167

167:                                              ; preds = %163, %143
  %168 = phi i1 [ false, %143 ], [ %166, %163 ]
  %169 = zext i1 %168 to i32
  %170 = call i64 (...) @GetLastError()
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i64 %170)
  store i32 0, i32* %6, align 4
  br label %172

172:                                              ; preds = %167, %37
  %173 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %6, align 4
  switch i32 %174, label %176 [
    i32 0, label %175
    i32 1, label %175
  ]

175:                                              ; preds = %172, %172
  ret void

176:                                              ; preds = %172
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CryptRegisterDefaultOIDFunction(i32, i8*, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #2

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #2

declare dso_local i64 @ARRAY_SIZE(i8*) #2

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32*, i64*, i32, i64*) #2

declare dso_local i32 @lstrcmpiA(i8*, i8*) #2

declare dso_local i64 @lstrlenA(i8*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @CryptUnregisterDefaultOIDFunction(i32, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
