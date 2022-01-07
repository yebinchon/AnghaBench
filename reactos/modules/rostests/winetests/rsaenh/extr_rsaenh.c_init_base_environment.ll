; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_init_base_environment.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_init_base_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@szProvider = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"advapi32.dll\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CryptDuplicateHash\00", align 1
@pCryptDuplicateHash = common dso_local global i8* null, align 8
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@hProv = common dso_local global i64 0, align 8
@szContainer = common dso_local global i32 0, align 4
@PROV_RSA_FULL = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@NTE_BAD_FLAGS = common dso_local global i32 0, align 4
@NTE_KEYSET_NOT_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%d, %08x\0A\00", align 1
@NTE_BAD_KEYSET = common dso_local global i32 0, align 4
@NTE_TEMPORARY_PROFILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"RSA full provider not available\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CRYPT_NEWKEYSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Couldn't create crypto provider\0A\00", align 1
@AT_KEYEXCHANGE = common dso_local global i32 0, align 4
@AT_SIGNATURE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @init_base_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_base_environment(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** @szProvider, align 8
  br label %12

12:                                               ; preds = %10, %2
  %13 = call i32 @GetModuleHandleA(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = call i64 @GetProcAddress(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** @pCryptDuplicateHash, align 8
  %16 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %16, i64* @hProv, align 8
  %17 = load i32, i32* @szContainer, align 4
  %18 = load i8*, i8** @szProvider, align 8
  %19 = load i32, i32* @PROV_RSA_FULL, align 4
  %20 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %21 = call i32 @CryptAcquireContextA(i64* @hProv, i32 %17, i8* %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %12
  %25 = call i32 (...) @GetLastError()
  %26 = load i32, i32* @NTE_BAD_FLAGS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = call i32 (...) @GetLastError()
  %30 = load i32, i32* @NTE_KEYSET_NOT_DEF, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @broken(i32 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %28, %24
  %36 = phi i1 [ true, %24 ], [ %34, %28 ]
  br label %37

37:                                               ; preds = %35, %12
  %38 = phi i1 [ false, %12 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 (i32, i8*, i32, ...) @ok(i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* @szContainer, align 4
  %44 = load i8*, i8** @szProvider, align 8
  %45 = load i32, i32* @PROV_RSA_FULL, align 4
  %46 = call i32 @CryptAcquireContextA(i64* @hProv, i32 %43, i8* %44, i32 %45, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %118, label %48

48:                                               ; preds = %37
  %49 = call i32 (...) @GetLastError()
  %50 = load i32, i32* @NTE_BAD_KEYSET, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %66, label %52

52:                                               ; preds = %48
  %53 = call i32 (...) @GetLastError()
  %54 = load i32, i32* @NTE_TEMPORARY_PROFILE, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @broken(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = call i32 (...) @GetLastError()
  %61 = load i32, i32* @NTE_KEYSET_NOT_DEF, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @broken(i32 %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %59, %52, %48
  %67 = phi i1 [ true, %52 ], [ true, %48 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 (...) @GetLastError()
  %70 = call i32 (i32, i8*, i32, ...) @ok(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = call i32 (...) @GetLastError()
  %72 = load i32, i32* @NTE_BAD_KEYSET, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = call i32 @win_skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %3, align 4
  br label %120

77:                                               ; preds = %66
  %78 = load i32, i32* @szContainer, align 4
  %79 = load i8*, i8** @szProvider, align 8
  %80 = load i32, i32* @PROV_RSA_FULL, align 4
  %81 = load i32, i32* @CRYPT_NEWKEYSET, align 4
  %82 = call i32 @CryptAcquireContextA(i64* @hProv, i32 %78, i8* %79, i32 %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (...) @GetLastError()
  %85 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %77
  %89 = call i32 @win_skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %3, align 4
  br label %120

91:                                               ; preds = %77
  %92 = load i64, i64* @hProv, align 8
  %93 = load i32, i32* @AT_KEYEXCHANGE, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @CryptGenKey(i64 %92, i32 %93, i32 %94, i32* %6)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (...) @GetLastError()
  %98 = call i32 (i32, i8*, i32, ...) @ok(i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %91
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @CryptDestroyKey(i32 %102)
  br label %104

104:                                              ; preds = %101, %91
  %105 = load i64, i64* @hProv, align 8
  %106 = load i32, i32* @AT_SIGNATURE, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @CryptGenKey(i64 %105, i32 %106, i32 %107, i32* %6)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 (...) @GetLastError()
  %111 = call i32 (i32, i8*, i32, ...) @ok(i32 %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @CryptDestroyKey(i32 %115)
  br label %117

117:                                              ; preds = %114, %104
  br label %118

118:                                              ; preds = %117, %37
  %119 = load i32, i32* @TRUE, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %88, %74
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @GetProcAddress(i32, i8*) #1

declare dso_local i32 @GetModuleHandleA(i8*) #1

declare dso_local i32 @CryptAcquireContextA(i64*, i32, i8*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @CryptGenKey(i64, i32, i32, i32*) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
