; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_init_aes_environment.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_init_aes_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"advapi32.dll\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CryptDuplicateHash\00", align 1
@pCryptDuplicateHash = common dso_local global i8* null, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@hProv = common dso_local global i64 0, align 8
@szContainer = common dso_local global i32 0, align 4
@PROV_RSA_AES = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@NTE_PROV_TYPE_NOT_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"RSA_AES provider not supported\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@NTE_BAD_FLAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%d, %08x\0A\00", align 1
@NTE_BAD_KEYSET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@CRYPT_NEWKEYSET = common dso_local global i32 0, align 4
@AT_KEYEXCHANGE = common dso_local global i32 0, align 4
@AT_SIGNATURE = common dso_local global i32 0, align 4
@CALG_AES = common dso_local global i32 0, align 4
@NTE_BAD_ALGID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"%d %08x\0A\00", align 1
@CALG_AES_128 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_aes_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_aes_environment() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %5 = call i64 @GetProcAddress(i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** @pCryptDuplicateHash, align 8
  %7 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %7, i64* @hProv, align 8
  %8 = load i32, i32* @szContainer, align 4
  %9 = load i32, i32* @PROV_RSA_AES, align 4
  %10 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %11 = call i32 @CryptAcquireContextA(i64* @hProv, i32 %8, i32* null, i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %0
  %15 = call i32 (...) @GetLastError()
  %16 = load i32, i32* @NTE_PROV_TYPE_NOT_DEF, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = call i32 @win_skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %1, align 4
  br label %131

21:                                               ; preds = %14, %0
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = call i32 (...) @GetLastError()
  %26 = load i32, i32* @NTE_BAD_FLAGS, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 (i32, i8*, i32, ...) @ok(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* @szContainer, align 4
  %35 = load i32, i32* @PROV_RSA_AES, align 4
  %36 = call i32 @CryptAcquireContextA(i64* @hProv, i32 %34, i32* null, i32 %35, i32 0)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %129, label %38

38:                                               ; preds = %28
  %39 = call i32 (...) @GetLastError()
  %40 = load i32, i32* @NTE_BAD_KEYSET, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 (...) @GetLastError()
  %44 = call i32 (i32, i8*, i32, ...) @ok(i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = call i32 (...) @GetLastError()
  %46 = load i32, i32* @NTE_BAD_KEYSET, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %1, align 4
  br label %131

50:                                               ; preds = %38
  %51 = load i32, i32* @szContainer, align 4
  %52 = load i32, i32* @PROV_RSA_AES, align 4
  %53 = load i32, i32* @CRYPT_NEWKEYSET, align 4
  %54 = call i32 @CryptAcquireContextA(i64* @hProv, i32 %51, i32* null, i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 (...) @GetLastError()
  %57 = call i32 (i32, i8*, i32, ...) @ok(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %1, align 4
  br label %131

62:                                               ; preds = %50
  %63 = load i64, i64* @hProv, align 8
  %64 = load i32, i32* @AT_KEYEXCHANGE, align 4
  %65 = call i32 @CryptGenKey(i64 %63, i32 %64, i32 0, i32* %2)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (...) @GetLastError()
  %68 = call i32 (i32, i8*, i32, ...) @ok(i32 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @CryptDestroyKey(i32 %72)
  br label %74

74:                                               ; preds = %71, %62
  %75 = load i64, i64* @hProv, align 8
  %76 = load i32, i32* @AT_SIGNATURE, align 4
  %77 = call i32 @CryptGenKey(i64 %75, i32 %76, i32 0, i32* %2)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (...) @GetLastError()
  %80 = call i32 (i32, i8*, i32, ...) @ok(i32 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @CryptDestroyKey(i32 %84)
  br label %86

86:                                               ; preds = %83, %74
  %87 = load i64, i64* @hProv, align 8
  %88 = load i32, i32* @CALG_AES, align 4
  %89 = call i32 @CryptGenKey(i64 %87, i32 %88, i32 0, i32* %2)
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = call i32 (...) @GetLastError()
  %94 = load i32, i32* @NTE_BAD_ALGID, align 4
  %95 = icmp eq i32 %93, %94
  br label %96

96:                                               ; preds = %92, %86
  %97 = phi i1 [ false, %86 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %3, align 4
  %100 = call i32 (...) @GetLastError()
  %101 = call i32 (i32, i8*, i32, ...) @ok(i32 %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load i64, i64* @hProv, align 8
  %103 = load i32, i32* @CALG_AES, align 4
  %104 = call i32 @CryptGenKey(i64 %102, i32 %103, i32 8388608, i32* %2)
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %96
  %108 = call i32 (...) @GetLastError()
  %109 = load i32, i32* @NTE_BAD_ALGID, align 4
  %110 = icmp eq i32 %108, %109
  br label %111

111:                                              ; preds = %107, %96
  %112 = phi i1 [ false, %96 ], [ %110, %107 ]
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %3, align 4
  %115 = call i32 (...) @GetLastError()
  %116 = call i32 (i32, i8*, i32, ...) @ok(i32 %113, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load i64, i64* @hProv, align 8
  %118 = load i32, i32* @CALG_AES_128, align 4
  %119 = call i32 @CryptGenKey(i64 %117, i32 %118, i32 0, i32* %2)
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 (...) @GetLastError()
  %122 = call i32 (i32, i8*, i32, ...) @ok(i32 %120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %3, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %111
  %126 = load i32, i32* %2, align 4
  %127 = call i32 @CryptDestroyKey(i32 %126)
  br label %128

128:                                              ; preds = %125, %111
  br label %129

129:                                              ; preds = %128, %28
  %130 = load i32, i32* @TRUE, align 4
  store i32 %130, i32* %1, align 4
  br label %131

131:                                              ; preds = %129, %60, %48, %18
  %132 = load i32, i32* %1, align 4
  ret i32 %132
}

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i32 @CryptAcquireContextA(i64*, i32, i32*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @CryptGenKey(i64, i32, i32, i32*) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
