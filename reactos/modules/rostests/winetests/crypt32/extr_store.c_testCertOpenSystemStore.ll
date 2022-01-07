; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_store.c_testCertOpenSystemStore.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/crypt32/extr_store.c_testCertOpenSystemStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Expected E_INVALIDARG, got %08x\0A\00", align 1
@BogusW = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"CertOpenSystemStore failed: %08x\0A\00", align 1
@CERT_STORE_PROV_SYSTEM = common dso_local global i32 0, align 4
@CERT_SYSTEM_STORE_CURRENT_USER = common dso_local global i32 0, align 4
@CERT_STORE_DELETE_FLAG = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@BogusPathW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testCertOpenSystemStore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testCertOpenSystemStore() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @CertOpenSystemStoreW(i32 0, i32* null)
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = call i64 (...) @GetLastError()
  %7 = load i64, i64* @E_INVALIDARG, align 8
  %8 = icmp eq i64 %6, %7
  br label %9

9:                                                ; preds = %5, %0
  %10 = phi i1 [ false, %0 ], [ %8, %5 ]
  %11 = zext i1 %10 to i32
  %12 = call i64 (...) @GetLastError()
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32*, i32** @BogusW, align 8
  %15 = call i64 @CertOpenSystemStoreW(i32 0, i32* %14)
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 (...) @GetLastError()
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %1, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %9
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @CertCloseStore(i64 %24, i32 0)
  br label %26

26:                                               ; preds = %23, %9
  %27 = load i32, i32* @CERT_STORE_PROV_SYSTEM, align 4
  %28 = load i32, i32* @CERT_SYSTEM_STORE_CURRENT_USER, align 4
  %29 = load i32, i32* @CERT_STORE_DELETE_FLAG, align 4
  %30 = or i32 %28, %29
  %31 = load i32*, i32** @BogusW, align 8
  %32 = call i32 @CertOpenStore(i32 %27, i32 0, i32 0, i32 %30, i32* %31)
  %33 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %34 = load i32, i32* @BogusPathW, align 4
  %35 = call i32 @RegDeleteKeyW(i32 %33, i32 %34)
  ret void
}

declare dso_local i64 @CertOpenSystemStoreW(i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CertCloseStore(i64, i32) #1

declare dso_local i32 @CertOpenStore(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @RegDeleteKeyW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
