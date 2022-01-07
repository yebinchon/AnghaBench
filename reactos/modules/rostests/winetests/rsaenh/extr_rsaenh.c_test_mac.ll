; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_mac.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_mac.mac_40 = internal constant [8 x i32] [i32 183, i32 162, i32 70, i32 233, i32 17, i32 49, i32 224, i32 173], align 16
@CALG_RC2 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%08x, dwLen: %d\0A\00", align 1
@hProv = common dso_local global i32 0, align 4
@CALG_MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@HP_HASHVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"MAC failed!\0A\00", align 1
@CALG_RC4 = common dso_local global i32 0, align 4
@NTE_BAD_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mac() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i32], align 16
  %6 = alloca [264 x i32], align 16
  %7 = alloca i32, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %18, %0
  %9 = load i32, i32* %7, align 4
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 %16
  store i32 %14, i32* %17, align 4
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %8

21:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %32, %21
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [264 x i32], [264 x i32]* %6, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load i32, i32* @CALG_RC2, align 4
  %37 = call i32 @derive_key(i32 %36, i32* %1, i32 40)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %136

40:                                               ; preds = %35
  store i32 256, i32* %4, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = getelementptr inbounds [264 x i32], [264 x i32]* %6, i64 0, i64 0
  %44 = call i32 @CryptEncrypt(i32 %41, i32 0, i32 %42, i32 0, i32* %43, i32* %4, i32 264)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 264
  br label %50

50:                                               ; preds = %47, %40
  %51 = phi i1 [ false, %40 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i64 (...) @GetLastError()
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %53, i32 %54)
  %56 = load i32, i32* @hProv, align 4
  %57 = load i32, i32* @CALG_MAC, align 4
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @CryptCreateHash(i32 %56, i32 %57, i32 %58, i32 0, i32* %2)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i64 (...) @GetLastError()
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %50
  br label %136

66:                                               ; preds = %50
  %67 = load i32, i32* %2, align 4
  %68 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %69 = call i32 @CryptHashData(i32 %67, i32* %68, i32 1024, i32 0)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = call i64 (...) @GetLastError()
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %74 = call i32 @ARRAY_SIZE(i32* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @HP_HASHVAL, align 4
  %77 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %78 = call i32 @CryptGetHashParam(i32 %75, i32 %76, i32* %77, i32* %4, i32 0)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %66
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 8
  br label %84

84:                                               ; preds = %81, %66
  %85 = phi i1 [ false, %66 ], [ %83, %81 ]
  %86 = zext i1 %85 to i32
  %87 = call i64 (...) @GetLastError()
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %87, i32 %88)
  %90 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %91 = call i32 @memcmp(i32* %90, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @test_mac.mac_40, i64 0, i64 0), i32 32)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @CryptDestroyHash(i32 %96)
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* %3, align 4
  %99 = call i64 (...) @GetLastError()
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %99)
  %101 = load i32, i32* %1, align 4
  %102 = call i32 @CryptDestroyKey(i32 %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i64 (...) @GetLastError()
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %104)
  %106 = load i32, i32* @CALG_RC4, align 4
  %107 = call i32 @derive_key(i32 %106, i32* %1, i32 56)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %84
  br label %136

110:                                              ; preds = %84
  %111 = call i32 @SetLastError(i32 -559038737)
  %112 = load i32, i32* @hProv, align 4
  %113 = load i32, i32* @CALG_MAC, align 4
  %114 = load i32, i32* %1, align 4
  %115 = call i32 @CryptCreateHash(i32 %112, i32 %113, i32 %114, i32 0, i32* %2)
  store i32 %115, i32* %3, align 4
  %116 = load i32, i32* %3, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %110
  %119 = call i64 (...) @GetLastError()
  %120 = load i64, i64* @NTE_BAD_KEY, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %118, %110
  %123 = load i32, i32* %3, align 4
  %124 = call i64 @broken(i32 %123)
  %125 = icmp ne i64 %124, 0
  br label %126

126:                                              ; preds = %122, %118
  %127 = phi i1 [ true, %118 ], [ %125, %122 ]
  %128 = zext i1 %127 to i32
  %129 = call i64 (...) @GetLastError()
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %129)
  %131 = load i32, i32* %1, align 4
  %132 = call i32 @CryptDestroyKey(i32 %131)
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = call i64 (...) @GetLastError()
  %135 = call i32 (i32, i8*, ...) @ok(i32 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  br label %136

136:                                              ; preds = %126, %109, %65, %39
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @derive_key(i32, i32*, i32) #1

declare dso_local i32 @CryptEncrypt(i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @CryptCreateHash(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CryptHashData(i32, i32*, i32, i32) #1

declare dso_local i32 @CryptGetHashParam(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @CryptDestroyHash(i32) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
