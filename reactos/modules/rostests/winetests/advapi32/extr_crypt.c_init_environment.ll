; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_init_environment.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_init_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@szKeySet = common dso_local global i32 0, align 4
@szRsaBaseProv = common dso_local global i32* null, align 8
@PROV_RSA_FULL = common dso_local global i32 0, align 4
@CRYPT_NEWKEYSET = common dso_local global i32 0, align 4
@szBadKeySet = common dso_local global i32 0, align 4
@CRYPT_DELETEKEYSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_environment() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @szKeySet, align 4
  %3 = load i32*, i32** @szRsaBaseProv, align 8
  %4 = load i32, i32* @PROV_RSA_FULL, align 4
  %5 = call i64 @pCryptAcquireContextA(i32* %1, i32 %2, i32* %3, i32 %4, i32 0)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @szKeySet, align 4
  %9 = load i32*, i32** @szRsaBaseProv, align 8
  %10 = load i32, i32* @PROV_RSA_FULL, align 4
  %11 = load i32, i32* @CRYPT_NEWKEYSET, align 4
  %12 = call i64 @pCryptAcquireContextA(i32* %1, i32 %8, i32* %9, i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %7, %0
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @pCryptReleaseContext(i32 %14, i32 0)
  %16 = load i32, i32* @szKeySet, align 4
  %17 = load i32, i32* @PROV_RSA_FULL, align 4
  %18 = call i64 @pCryptAcquireContextA(i32* %1, i32 %16, i32* null, i32 %17, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @szKeySet, align 4
  %22 = load i32, i32* @PROV_RSA_FULL, align 4
  %23 = load i32, i32* @CRYPT_NEWKEYSET, align 4
  %24 = call i64 @pCryptAcquireContextA(i32* %1, i32 %21, i32* null, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @pCryptReleaseContext(i32 %26, i32 0)
  %28 = load i32, i32* @szBadKeySet, align 4
  %29 = load i32*, i32** @szRsaBaseProv, align 8
  %30 = load i32, i32* @PROV_RSA_FULL, align 4
  %31 = call i64 @pCryptAcquireContextA(i32* %1, i32 %28, i32* %29, i32 %30, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @pCryptReleaseContext(i32 %34, i32 0)
  %36 = load i32, i32* @szBadKeySet, align 4
  %37 = load i32*, i32** @szRsaBaseProv, align 8
  %38 = load i32, i32* @PROV_RSA_FULL, align 4
  %39 = load i32, i32* @CRYPT_DELETEKEYSET, align 4
  %40 = call i64 @pCryptAcquireContextA(i32* %1, i32 %36, i32* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %25
  ret void
}

declare dso_local i64 @pCryptAcquireContextA(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @pCryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
