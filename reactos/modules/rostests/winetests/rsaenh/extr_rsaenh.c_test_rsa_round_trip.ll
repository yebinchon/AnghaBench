; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_rsa_round_trip.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_rsa_round_trip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_rsa_round_trip.test_string = internal constant [35 x i8] c"Well this is a fine how-do-you-do.\00", align 16
@szContainer = common dso_local global i32 0, align 4
@PROV_RSA_FULL = common dso_local global i32 0, align 4
@CRYPT_DELETEKEYSET = common dso_local global i32 0, align 4
@CRYPT_NEWKEYSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"CryptAcquireContextA failed: %08x\0A\00", align 1
@CALG_RSA_KEYX = common dso_local global i32 0, align 4
@CRYPT_EXPORTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"CryptGenKey with CALG_RSA_KEYX failed with error %08x\0A\00", align 1
@AT_KEYEXCHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"CryptGetUserKey failed: %08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@NTE_BAD_KEY = common dso_local global i64 0, align 8
@NTE_PERM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"CryptEncrypt failed: %08x\0A\00", align 1
@PRIVATEKEYBLOB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"CryptExportKey failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"CryptImportKey failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"CryptDecrypt failed: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"unexpected size %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"unexpected value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_rsa_round_trip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_rsa_round_trip() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i32], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @szContainer, align 4
  %10 = load i32, i32* @PROV_RSA_FULL, align 4
  %11 = load i32, i32* @CRYPT_DELETEKEYSET, align 4
  %12 = call i32 @CryptAcquireContextA(i32* %1, i32 %9, i32* null, i32 %10, i32 %11)
  %13 = load i32, i32* @szContainer, align 4
  %14 = load i32, i32* @PROV_RSA_FULL, align 4
  %15 = load i32, i32* @CRYPT_NEWKEYSET, align 4
  %16 = call i32 @CryptAcquireContextA(i32* %1, i32 %13, i32* null, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 (...) @GetLastError()
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @CALG_RSA_KEYX, align 4
  %22 = load i32, i32* @CRYPT_EXPORTABLE, align 4
  %23 = call i32 @CryptGenKey(i32 %20, i32 %21, i32 %22, i32* %2)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 (...) @GetLastError()
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @AT_KEYEXCHANGE, align 4
  %29 = call i32 @CryptGetUserKey(i32 %27, i32 %28, i32* %3)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i64 (...) @GetLastError()
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %34 = call i32 @strlen(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @test_rsa_round_trip.test_string, i64 0, i64 0))
  %35 = add nsw i32 %34, 1
  %36 = call i32 @memcpy(i32* %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @test_rsa_round_trip.test_string, i64 0, i64 0), i32 %35)
  %37 = call i32 @strlen(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @test_rsa_round_trip.test_string, i64 0, i64 0))
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @TRUE, align 4
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %42 = call i32 @CryptEncrypt(i32 %39, i32 0, i32 %40, i32 0, i32* %41, i32* %7, i32 1024)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %0
  %46 = call i64 (...) @GetLastError()
  %47 = load i64, i64* @NTE_BAD_KEY, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @broken(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = call i64 (...) @GetLastError()
  %54 = load i64, i64* @NTE_PERM, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @broken(i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %52, %45, %0
  %60 = phi i1 [ true, %45 ], [ true, %0 ], [ %58, %52 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 (...) @GetLastError()
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @PRIVATEKEYBLOB, align 4
  %66 = call i32 @CryptExportKey(i32 %64, i32 0, i32 %65, i32 0, i32* null, i32* %8)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i64 (...) @GetLastError()
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  %70 = call i32 (...) @GetProcessHeap()
  %71 = load i32, i32* %8, align 4
  %72 = call i32* @HeapAlloc(i32 %70, i32 0, i32 %71)
  store i32* %72, i32** %6, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @PRIVATEKEYBLOB, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @CryptExportKey(i32 %73, i32 0, i32 %74, i32 0, i32* %75, i32* %8)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i64 (...) @GetLastError()
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @CryptDestroyKey(i32 %80)
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @CryptDestroyKey(i32 %82)
  %84 = load i32, i32* %1, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @CryptImportKey(i32 %84, i32* %85, i32 %86, i32 0, i32 0, i32* %3)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i64 (...) @GetLastError()
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %89)
  %91 = call i32 (...) @GetProcessHeap()
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @HeapFree(i32 %91, i32 0, i32* %92)
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %97 = call i32 @CryptDecrypt(i32 %94, i32 0, i32 %95, i32 0, i32* %96, i32* %7)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %59
  %101 = call i64 (...) @GetLastError()
  %102 = load i64, i64* @NTE_BAD_KEY, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i64 @broken(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %100
  %108 = call i64 (...) @GetLastError()
  %109 = load i64, i64* @NTE_PERM, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i64 @broken(i32 %111)
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %107, %100, %59
  %115 = phi i1 [ true, %100 ], [ true, %59 ], [ %113, %107 ]
  %116 = zext i1 %115 to i32
  %117 = call i64 (...) @GetLastError()
  %118 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %117)
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %114
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp eq i64 %123, 35
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %7, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  %128 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %129 = call i32 @memcmp(i32* %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @test_rsa_round_trip.test_string, i64 0, i64 0), i32 35)
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %134

134:                                              ; preds = %121, %114
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @CryptDestroyKey(i32 %135)
  %137 = load i32, i32* %1, align 4
  %138 = call i32 @CryptReleaseContext(i32 %137, i32 0)
  %139 = load i32, i32* @szContainer, align 4
  %140 = load i32, i32* @PROV_RSA_FULL, align 4
  %141 = load i32, i32* @CRYPT_DELETEKEYSET, align 4
  %142 = call i32 @CryptAcquireContextA(i32* %1, i32 %139, i32* null, i32 %140, i32 %141)
  ret void
}

declare dso_local i32 @CryptAcquireContextA(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CryptGenKey(i32, i32, i32, i32*) #1

declare dso_local i32 @CryptGetUserKey(i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CryptEncrypt(i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @CryptExportKey(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

declare dso_local i32 @CryptImportKey(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @CryptDecrypt(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
