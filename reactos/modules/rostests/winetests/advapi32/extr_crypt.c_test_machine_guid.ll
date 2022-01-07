; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_test_machine_guid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_test_machine_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Software\\Microsoft\\Cryptography\00", align 1
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"couldn't open HKLM\\Software\\Microsoft\\Cryptography\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"MachineGuid\00", align 1
@TRUE = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"RegDeleteValueA failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"broken virtualization on HKLM\\Software\\Microsoft\\Cryptography\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"expected ERROR_FILE_NOT_FOUND, got %d\0A\00", align 1
@szKeySet = common dso_local global i32 0, align 4
@PROV_RSA_FULL = common dso_local global i32 0, align 4
@NTE_KEYSET_ENTRY_BAD = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"CryptAcquireContextA failed: %08x\0A\00", align 1
@REG_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_machine_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_machine_guid() #0 {
  %1 = alloca [40 x i8], align 16
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %10 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %11 = call i64 @RegOpenKeyExA(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 0, i32 %10, i32* %3)
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @skip(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %97

17:                                               ; preds = %0
  store i32 40, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %20 = bitcast i8* %19 to i32*
  %21 = call i64 @RegQueryValueExA(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* %20, i32* %4)
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @ERROR_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %17
  %26 = load i64, i64* @TRUE, align 8
  store i64 %26, i64* %6, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @RegDeleteValueA(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i64 %28, i64* %2, align 8
  %29 = load i64, i64* %2, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @broken(i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %31, %25
  %39 = phi i1 [ true, %25 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = call i32 @skip(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @RegCloseKey(i32 %48)
  br label %97

50:                                               ; preds = %38
  br label %58

51:                                               ; preds = %17
  %52 = load i64, i64* %2, align 8
  %53 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %2, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %51, %50
  %59 = load i32, i32* @szKeySet, align 4
  %60 = load i32, i32* @PROV_RSA_FULL, align 4
  %61 = call i64 @pCryptAcquireContextA(i32* %5, i32 %59, i32* null, i32 %60, i32 0)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %58
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = call i64 (...) @GetLastError()
  %69 = load i64, i64* @NTE_KEYSET_ENTRY_BAD, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i1 [ false, %64 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @broken(i32 %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %71, %58
  %77 = phi i1 [ true, %58 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 (...) @GetLastError()
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @pCryptReleaseContext(i32 %81, i32 0)
  %83 = load i64, i64* %6, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %76
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @REG_SZ, align 4
  %88 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %89 = bitcast i8* %88 to i32*
  %90 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0
  %91 = call i64 @strlen(i8* %90)
  %92 = add nsw i64 %91, 1
  %93 = call i32 @RegSetValueExA(i32 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %87, i32* %89, i64 %92)
  br label %94

94:                                               ; preds = %85, %76
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @RegCloseKey(i32 %95)
  br label %97

97:                                               ; preds = %94, %46, %15
  ret void
}

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @RegDeleteValueA(i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @pCryptAcquireContextA(i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @pCryptReleaseContext(i32, i32) #1

declare dso_local i32 @RegSetValueExA(i32, i8*, i32, i32, i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
