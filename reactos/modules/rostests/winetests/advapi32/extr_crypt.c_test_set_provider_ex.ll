; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_test_set_provider_ex.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_test_set_provider_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROV_RSA_FULL = common dso_local global i32 0, align 4
@CRYPT_MACHINE_DEFAULT = common dso_local global i32 0, align 4
@LMEM_ZEROINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@MS_DEF_PROV_A = common dso_local global i32* null, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"expected %i, got %d\0A\00", align 1
@CRYPT_DELETE_DEFAULT = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"wrong error %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Not enough rights to remove the default provider\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"expected %s, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_set_provider_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_set_provider_ex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 5, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32, i32* @PROV_RSA_FULL, align 4
  %8 = load i32, i32* @CRYPT_MACHINE_DEFAULT, align 4
  %9 = call i32 @pCryptGetDefaultProviderA(i32 %7, i32* null, i32 %8, i32* null, i32* %4)
  %10 = load i32, i32* @LMEM_ZEROINIT, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32* @LocalAlloc(i32 %10, i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  br label %134

15:                                               ; preds = %0
  %16 = load i32, i32* @PROV_RSA_FULL, align 4
  %17 = load i32, i32* @CRYPT_MACHINE_DEFAULT, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @pCryptGetDefaultProviderA(i32 %16, i32* null, i32 %17, i32* %18, i32* %4)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i64 (...) @GetLastError()
  %22 = call i32 (i32, i8*, i64, ...) @ok(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32*, i32** @MS_DEF_PROV_A, align 8
  %24 = load i32, i32* @PROV_RSA_FULL, align 4
  %25 = load i32, i32* @CRYPT_MACHINE_DEFAULT, align 4
  %26 = call i32 @pCryptSetProviderExA(i32* %23, i32 %24, i32* %2, i32 %25)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %15
  %30 = call i64 (...) @GetLastError()
  %31 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %29, %15
  %34 = phi i1 [ false, %15 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %37 = call i64 (...) @GetLastError()
  %38 = call i32 (i32, i8*, i64, ...) @ok(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %36, i64 %37)
  %39 = call i32 @SetLastError(i32 -559038737)
  %40 = load i32*, i32** @MS_DEF_PROV_A, align 8
  %41 = load i32, i32* @PROV_RSA_FULL, align 4
  %42 = load i32, i32* @CRYPT_MACHINE_DEFAULT, align 4
  %43 = load i32, i32* @CRYPT_DELETE_DEFAULT, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @pCryptSetProviderExA(i32* %40, i32 %41, i32* null, i32 %44)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %33
  %49 = call i64 (...) @GetLastError()
  %50 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = call i64 (...) @GetLastError()
  %54 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @broken(i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi i1 [ true, %48 ], [ %58, %52 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 (...) @GetLastError()
  %63 = call i32 (i32, i8*, i64, ...) @ok(i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  %64 = call i32 @skip(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @LocalFree(i32* %65)
  br label %134

67:                                               ; preds = %33
  %68 = load i32*, i32** @MS_DEF_PROV_A, align 8
  %69 = load i32, i32* @PROV_RSA_FULL, align 4
  %70 = load i32, i32* @CRYPT_MACHINE_DEFAULT, align 4
  %71 = call i32 @pCryptSetProviderExA(i32* %68, i32 %69, i32* null, i32 %70)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* %1, align 4
  %73 = call i64 (...) @GetLastError()
  %74 = call i32 (i32, i8*, i64, ...) @ok(i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* @PROV_RSA_FULL, align 4
  %76 = load i32, i32* @CRYPT_MACHINE_DEFAULT, align 4
  %77 = call i32 @pCryptGetDefaultProviderA(i32 %75, i32* null, i32 %76, i32* null, i32* %6)
  store i32 %77, i32* %1, align 4
  %78 = load i32, i32* %1, align 4
  %79 = call i64 (...) @GetLastError()
  %80 = call i32 (i32, i8*, i64, ...) @ok(i32 %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load i32, i32* @LMEM_ZEROINIT, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32* @LocalAlloc(i32 %81, i32 %82)
  store i32* %83, i32** %5, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %67
  br label %124

86:                                               ; preds = %67
  %87 = load i32, i32* @PROV_RSA_FULL, align 4
  %88 = load i32, i32* @CRYPT_MACHINE_DEFAULT, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @pCryptGetDefaultProviderA(i32 %87, i32* null, i32 %88, i32* %89, i32* %6)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* %1, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32*, i32** @MS_DEF_PROV_A, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @strcmp(i32* %94, i32* %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br label %99

99:                                               ; preds = %93, %86
  %100 = phi i1 [ false, %86 ], [ %98, %93 ]
  %101 = zext i1 %100 to i32
  %102 = load i32*, i32** @MS_DEF_PROV_A, align 8
  %103 = ptrtoint i32* %102 to i64
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 (i32, i8*, i64, ...) @ok(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %103, i32* %104)
  %106 = load i32, i32* %1, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load i32, i32* %6, align 4
  %110 = load i32*, i32** @MS_DEF_PROV_A, align 8
  %111 = call i32 @strlen(i32* %110)
  %112 = add nsw i32 %111, 1
  %113 = icmp eq i32 %109, %112
  br label %114

114:                                              ; preds = %108, %99
  %115 = phi i1 [ false, %99 ], [ %113, %108 ]
  %116 = zext i1 %115 to i32
  %117 = load i32*, i32** @MS_DEF_PROV_A, align 8
  %118 = call i64 @lstrlenA(i32* %117)
  %119 = add nsw i64 %118, 1
  %120 = load i32, i32* %6, align 4
  %121 = call i32 (i32, i8*, i64, ...) @ok(i32 %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %119, i32 %120)
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @LocalFree(i32* %122)
  br label %124

124:                                              ; preds = %114, %85
  %125 = load i32*, i32** %3, align 8
  %126 = load i32, i32* @PROV_RSA_FULL, align 4
  %127 = load i32, i32* @CRYPT_MACHINE_DEFAULT, align 4
  %128 = call i32 @pCryptSetProviderExA(i32* %125, i32 %126, i32* null, i32 %127)
  store i32 %128, i32* %1, align 4
  %129 = load i32, i32* %1, align 4
  %130 = call i64 (...) @GetLastError()
  %131 = call i32 (i32, i8*, i64, ...) @ok(i32 %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %130)
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @LocalFree(i32* %132)
  br label %134

134:                                              ; preds = %124, %59, %14
  ret void
}

declare dso_local i32 @pCryptGetDefaultProviderA(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32* @LocalAlloc(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @pCryptSetProviderExA(i32*, i32, i32*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @strcmp(i32*, i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @lstrlenA(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
