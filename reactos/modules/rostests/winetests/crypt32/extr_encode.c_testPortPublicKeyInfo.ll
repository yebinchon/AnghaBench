; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_testPortPublicKeyInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_encode.c_testPortPublicKeyInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cspName = common dso_local global i32 0, align 4
@MS_DEF_PROV_A = common dso_local global i32 0, align 4
@PROV_RSA_FULL = common dso_local global i32 0, align 4
@CRYPT_DELETEKEYSET = common dso_local global i32 0, align 4
@CRYPT_NEWKEYSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CryptAcquireContextA failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testPortPublicKeyInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testPortPublicKeyInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* null, i32** %3, align 8
  %4 = load i32, i32* @cspName, align 4
  %5 = load i32, i32* @MS_DEF_PROV_A, align 4
  %6 = load i32, i32* @PROV_RSA_FULL, align 4
  %7 = load i32, i32* @CRYPT_DELETEKEYSET, align 4
  %8 = call i32 @CryptAcquireContextA(i32* %1, i32 %4, i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* @cspName, align 4
  %10 = load i32, i32* @MS_DEF_PROV_A, align 4
  %11 = load i32, i32* @PROV_RSA_FULL, align 4
  %12 = load i32, i32* @CRYPT_NEWKEYSET, align 4
  %13 = call i32 @CryptAcquireContextA(i32* %1, i32 %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @testExportPublicKey(i32 %16, i32** %3)
  %18 = load i32, i32* %1, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @testImportPublicKey(i32 %18, i32* %19)
  %21 = call i32 (...) @GetProcessHeap()
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @HeapFree(i32 %21, i32 0, i32* %22)
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @CryptReleaseContext(i32 %24, i32 0)
  %26 = load i32, i32* @cspName, align 4
  %27 = load i32, i32* @MS_DEF_PROV_A, align 4
  %28 = load i32, i32* @PROV_RSA_FULL, align 4
  %29 = load i32, i32* @CRYPT_DELETEKEYSET, align 4
  %30 = call i32 @CryptAcquireContextA(i32* %1, i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CryptAcquireContextA(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @testExportPublicKey(i32, i32**) #1

declare dso_local i32 @testImportPublicKey(i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
