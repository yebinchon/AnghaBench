; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_test_container_sd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_test_container_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"winetest\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Microsoft Enhanced Cryptographic Provider v1.0\00", align 1
@PROV_RSA_FULL = common dso_local global i32 0, align 4
@CRYPT_MACHINE_KEYSET = common dso_local global i32 0, align 4
@CRYPT_NEWKEYSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@PP_KEYSET_SEC_DESCR = common dso_local global i32 0, align 4
@OWNER_SECURITY_INFORMATION = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"expected len > 0\0A\00", align 1
@CRYPT_DELETEKEYSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_container_sd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_container_sd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @PROV_RSA_FULL, align 4
  %7 = load i32, i32* @CRYPT_MACHINE_KEYSET, align 4
  %8 = load i32, i32* @CRYPT_NEWKEYSET, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @CryptAcquireContextA(i32* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 (...) @GetLastError()
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %12)
  store i64 0, i64* %3, align 8
  %14 = call i32 @SetLastError(i32 -559038737)
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @PP_KEYSET_SEC_DESCR, align 4
  %17 = load i32, i32* @OWNER_SECURITY_INFORMATION, align 4
  %18 = call i32 @CryptGetProvParam(i32 %15, i32 %16, i32* null, i64* %3, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = call i64 (...) @GetLastError()
  store i64 %19, i64* %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %0
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @broken(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %26, %0
  %34 = phi i1 [ true, %0 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %4, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %3, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i64, i64* %3, align 8
  %43 = call i32* @HeapAlloc(i32 %41, i32 0, i64 %42)
  store i32* %43, i32** %2, align 8
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @PP_KEYSET_SEC_DESCR, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @OWNER_SECURITY_INFORMATION, align 4
  %48 = call i32 @CryptGetProvParam(i32 %44, i32 %45, i32* %46, i64* %3, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i64 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @HeapFree(i32 %52, i32 0, i32* %53)
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @CryptReleaseContext(i32 %55, i32 0)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i64 (...) @GetLastError()
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @PROV_RSA_FULL, align 4
  %61 = load i32, i32* @CRYPT_MACHINE_KEYSET, align 4
  %62 = load i32, i32* @CRYPT_DELETEKEYSET, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @CryptAcquireContextA(i32* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i64 (...) @GetLastError()
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  ret void
}

declare dso_local i32 @CryptAcquireContextA(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @CryptGetProvParam(i32, i32, i32*, i64*, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
