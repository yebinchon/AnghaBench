; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_init_function_pointers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_init_function_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"advapi32.dll\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"CryptAcquireContextA\00", align 1
@pCryptAcquireContextA = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"CryptEnumProviderTypesA\00", align 1
@pCryptEnumProviderTypesA = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"CryptEnumProvidersA\00", align 1
@pCryptEnumProvidersA = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"CryptGetDefaultProviderA\00", align 1
@pCryptGetDefaultProviderA = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"CryptReleaseContext\00", align 1
@pCryptReleaseContext = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"CryptSetProviderExA\00", align 1
@pCryptSetProviderExA = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"CryptCreateHash\00", align 1
@pCryptCreateHash = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"CryptDestroyHash\00", align 1
@pCryptDestroyHash = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [15 x i8] c"CryptGenRandom\00", align 1
@pCryptGenRandom = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"CryptContextAddRef\00", align 1
@pCryptContextAddRef = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"CryptGenKey\00", align 1
@pCryptGenKey = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"CryptDestroyKey\00", align 1
@pCryptDestroyKey = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"CryptDecrypt\00", align 1
@pCryptDecrypt = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [15 x i8] c"CryptDeriveKey\00", align 1
@pCryptDeriveKey = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"CryptDuplicateHash\00", align 1
@pCryptDuplicateHash = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [18 x i8] c"CryptDuplicateKey\00", align 1
@pCryptDuplicateKey = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"CryptEncrypt\00", align 1
@pCryptEncrypt = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"CryptExportKey\00", align 1
@pCryptExportKey = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [18 x i8] c"CryptGetHashParam\00", align 1
@pCryptGetHashParam = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [17 x i8] c"CryptGetKeyParam\00", align 1
@pCryptGetKeyParam = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [18 x i8] c"CryptGetProvParam\00", align 1
@pCryptGetProvParam = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [16 x i8] c"CryptGetUserKey\00", align 1
@pCryptGetUserKey = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [14 x i8] c"CryptHashData\00", align 1
@pCryptHashData = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [20 x i8] c"CryptHashSessionKey\00", align 1
@pCryptHashSessionKey = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [15 x i8] c"CryptImportKey\00", align 1
@pCryptImportKey = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [15 x i8] c"CryptSignHashW\00", align 1
@pCryptSignHashW = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [18 x i8] c"CryptSetHashParam\00", align 1
@pCryptSetHashParam = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [17 x i8] c"CryptSetKeyParam\00", align 1
@pCryptSetKeyParam = common dso_local global i8* null, align 8
@.str.29 = private unnamed_addr constant [18 x i8] c"CryptSetProvParam\00", align 1
@pCryptSetProvParam = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [22 x i8] c"CryptVerifySignatureW\00", align 1
@pCryptVerifySignatureW = common dso_local global i8* null, align 8
@.str.31 = private unnamed_addr constant [18 x i8] c"SystemFunction004\00", align 1
@pSystemFunction004 = common dso_local global i8* null, align 8
@.str.32 = private unnamed_addr constant [18 x i8] c"SystemFunction005\00", align 1
@pSystemFunction005 = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [18 x i8] c"SystemFunction036\00", align 1
@pSystemFunction036 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_function_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_function_pointers() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i64 @GetProcAddress(i32 %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** @pCryptAcquireContextA, align 8
  %6 = load i32, i32* %1, align 4
  %7 = call i64 @GetProcAddress(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** @pCryptEnumProviderTypesA, align 8
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @GetProcAddress(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @pCryptEnumProvidersA, align 8
  %12 = load i32, i32* %1, align 4
  %13 = call i64 @GetProcAddress(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** @pCryptGetDefaultProviderA, align 8
  %15 = load i32, i32* %1, align 4
  %16 = call i64 @GetProcAddress(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** @pCryptReleaseContext, align 8
  %18 = load i32, i32* %1, align 4
  %19 = call i64 @GetProcAddress(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** @pCryptSetProviderExA, align 8
  %21 = load i32, i32* %1, align 4
  %22 = call i64 @GetProcAddress(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** @pCryptCreateHash, align 8
  %24 = load i32, i32* %1, align 4
  %25 = call i64 @GetProcAddress(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** @pCryptDestroyHash, align 8
  %27 = load i32, i32* %1, align 4
  %28 = call i64 @GetProcAddress(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** @pCryptGenRandom, align 8
  %30 = load i32, i32* %1, align 4
  %31 = call i64 @GetProcAddress(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** @pCryptContextAddRef, align 8
  %33 = load i32, i32* %1, align 4
  %34 = call i64 @GetProcAddress(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** @pCryptGenKey, align 8
  %36 = load i32, i32* %1, align 4
  %37 = call i64 @GetProcAddress(i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** @pCryptDestroyKey, align 8
  %39 = load i32, i32* %1, align 4
  %40 = call i64 @GetProcAddress(i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** @pCryptDecrypt, align 8
  %42 = load i32, i32* %1, align 4
  %43 = call i64 @GetProcAddress(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** @pCryptDeriveKey, align 8
  %45 = load i32, i32* %1, align 4
  %46 = call i64 @GetProcAddress(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** @pCryptDuplicateHash, align 8
  %48 = load i32, i32* %1, align 4
  %49 = call i64 @GetProcAddress(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** @pCryptDuplicateKey, align 8
  %51 = load i32, i32* %1, align 4
  %52 = call i64 @GetProcAddress(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** @pCryptEncrypt, align 8
  %54 = load i32, i32* %1, align 4
  %55 = call i64 @GetProcAddress(i32 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** @pCryptExportKey, align 8
  %57 = load i32, i32* %1, align 4
  %58 = call i64 @GetProcAddress(i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** @pCryptGetHashParam, align 8
  %60 = load i32, i32* %1, align 4
  %61 = call i64 @GetProcAddress(i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** @pCryptGetKeyParam, align 8
  %63 = load i32, i32* %1, align 4
  %64 = call i64 @GetProcAddress(i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** @pCryptGetProvParam, align 8
  %66 = load i32, i32* %1, align 4
  %67 = call i64 @GetProcAddress(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** @pCryptGetUserKey, align 8
  %69 = load i32, i32* %1, align 4
  %70 = call i64 @GetProcAddress(i32 %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** @pCryptHashData, align 8
  %72 = load i32, i32* %1, align 4
  %73 = call i64 @GetProcAddress(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0))
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** @pCryptHashSessionKey, align 8
  %75 = load i32, i32* %1, align 4
  %76 = call i64 @GetProcAddress(i32 %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** @pCryptImportKey, align 8
  %78 = load i32, i32* %1, align 4
  %79 = call i64 @GetProcAddress(i32 %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** @pCryptSignHashW, align 8
  %81 = load i32, i32* %1, align 4
  %82 = call i64 @GetProcAddress(i32 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %83 = inttoptr i64 %82 to i8*
  store i8* %83, i8** @pCryptSetHashParam, align 8
  %84 = load i32, i32* %1, align 4
  %85 = call i64 @GetProcAddress(i32 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0))
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** @pCryptSetKeyParam, align 8
  %87 = load i32, i32* %1, align 4
  %88 = call i64 @GetProcAddress(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** @pCryptSetProvParam, align 8
  %90 = load i32, i32* %1, align 4
  %91 = call i64 @GetProcAddress(i32 %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0))
  %92 = inttoptr i64 %91 to i8*
  store i8* %92, i8** @pCryptVerifySignatureW, align 8
  %93 = load i32, i32* %1, align 4
  %94 = call i64 @GetProcAddress(i32 %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0))
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** @pSystemFunction004, align 8
  %96 = load i32, i32* %1, align 4
  %97 = call i64 @GetProcAddress(i32 %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  %98 = inttoptr i64 %97 to i8*
  store i8* %98, i8** @pSystemFunction005, align 8
  %99 = load i32, i32* %1, align 4
  %100 = call i64 @GetProcAddress(i32 %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0))
  %101 = inttoptr i64 %100 to i8*
  store i8* %101, i8** @pSystemFunction036, align 8
  ret void
}

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
