; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_derive_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_derive_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hProv = common dso_local global i32 0, align 4
@CALG_MD2 = common dso_local global i32 0, align 4
@NTE_BAD_ALGID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CRYPT_EXPORTABLE = common dso_local global i32 0, align 4
@HP_HASHVAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32)* @derive_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @derive_key(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2000 x i8], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64*, i64** %6, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %22, %3
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 2000
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i32, i32* %11, align 4
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2000 x i8], [2000 x i8]* %10, i64 0, i64 %20
  store i8 %18, i8* %21, align 1
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  br label %13

25:                                               ; preds = %13
  %26 = load i32, i32* @hProv, align 4
  %27 = load i32, i32* @CALG_MD2, align 4
  %28 = call i32 @CryptCreateHash(i32 %26, i32 %27, i32 0, i32 0, i32* %8)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = call i64 (...) @GetLastError()
  %33 = load i64, i64* @NTE_BAD_ALGID, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 (...) @GetLastError()
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %4, align 4
  br label %81

39:                                               ; preds = %25
  %40 = load i32, i32* %9, align 4
  %41 = call i64 (...) @GetLastError()
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* %8, align 4
  %44 = getelementptr inbounds [2000 x i8], [2000 x i8]* %10, i64 0, i64 0
  %45 = call i32 @CryptHashData(i32 %43, i8* %44, i32 2000, i32 0)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i64 (...) @GetLastError()
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %4, align 4
  br label %81

53:                                               ; preds = %39
  %54 = load i32, i32* @hProv, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 %57, 16
  %59 = load i32, i32* @CRYPT_EXPORTABLE, align 4
  %60 = or i32 %58, %59
  %61 = load i64*, i64** %6, align 8
  %62 = call i32 @CryptDeriveKey(i32 %54, i32 %55, i32 %56, i32 %60, i64* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i64 (...) @GetLastError()
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %53
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %4, align 4
  br label %81

70:                                               ; preds = %53
  store i32 2000, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @HP_HASHVAL, align 4
  %73 = getelementptr inbounds [2000 x i8], [2000 x i8]* %10, i64 0, i64 0
  %74 = call i32 @CryptGetHashParam(i32 %71, i32 %72, i8* %73, i32* %7, i32 0)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i64 (...) @GetLastError()
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @CryptDestroyHash(i32 %78)
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %70, %68, %51, %31
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @CryptCreateHash(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CryptHashData(i32, i8*, i32, i32) #1

declare dso_local i32 @CryptDeriveKey(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @CryptGetHashParam(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @CryptDestroyHash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
