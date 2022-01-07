; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_hmac.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32, i32*, i32 }

@CALG_MD5 = common dso_local global i32 0, align 4
@test_hmac.hmac = internal constant [16 x i32] [i32 26, i32 125, i32 73, i32 197, i32 155, i32 45, i32 11, i32 156, i32 207, i32 16, i32 107, i32 182, i32 125, i32 15, i32 19, i32 50], align 16
@CALG_RC2 = common dso_local global i32 0, align 4
@hProv = common dso_local global i32 0, align 4
@CALG_HMAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@HP_HMAC_INFO = common dso_local global i32 0, align 4
@HP_HASHVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"HMAC failed!\0A\00", align 1
@NTE_BAD_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hmac() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = alloca i32, align 4
  %6 = alloca [256 x i32], align 16
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_2__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 40, i1 false)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %10 = load i32, i32* @CALG_MD5, align 4
  store i32 %10, i32* %9, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %21, %0
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %19
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %11

24:                                               ; preds = %11
  %25 = load i32, i32* @CALG_RC2, align 4
  %26 = call i32 @derive_key(i32 %25, i32* %1, i32 56)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %93

29:                                               ; preds = %24
  %30 = load i32, i32* @hProv, align 4
  %31 = load i32, i32* @CALG_HMAC, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @CryptCreateHash(i32 %30, i32 %31, i32 %32, i32 0, i32* %2)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i64 (...) @GetLastError()
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %93

40:                                               ; preds = %29
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @HP_HMAC_INFO, align 4
  %43 = bitcast %struct.TYPE_2__* %4 to i32*
  %44 = call i32 @CryptSetHashParam(i32 %41, i32 %42, i32* %43, i32 0)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i64 (...) @GetLastError()
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* %2, align 4
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %50 = call i32 @CryptHashData(i32 %48, i32* %49, i32 1024, i32 0)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i64 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @HP_HASHVAL, align 4
  %58 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %59 = call i32 @CryptGetHashParam(i32 %56, i32 %57, i32* %58, i32* %5, i32 0)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i64 (...) @GetLastError()
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %64 = call i32 @memcmp(i32* %63, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_hmac.hmac, i64 0, i64 0), i32 64)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @CryptDestroyHash(i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i64 (...) @GetLastError()
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* %1, align 4
  %75 = call i32 @CryptDestroyKey(i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i64 (...) @GetLastError()
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %77)
  %79 = load i32, i32* @hProv, align 4
  %80 = load i32, i32* @CALG_HMAC, align 4
  %81 = call i32 @CryptCreateHash(i32 %79, i32 %80, i32 0, i32 0, i32* %2)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %40
  %85 = call i64 (...) @GetLastError()
  %86 = load i64, i64* @NTE_BAD_KEY, align 8
  %87 = icmp eq i64 %85, %86
  br label %88

88:                                               ; preds = %84, %40
  %89 = phi i1 [ false, %40 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  %91 = call i64 (...) @GetLastError()
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %91)
  br label %93

93:                                               ; preds = %88, %39, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @derive_key(i32, i32*, i32) #2

declare dso_local i32 @CryptCreateHash(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @CryptSetHashParam(i32, i32, i32*, i32) #2

declare dso_local i32 @CryptHashData(i32, i32*, i32, i32) #2

declare dso_local i32 @CryptGetHashParam(i32, i32, i32*, i32*, i32) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @CryptDestroyHash(i32) #2

declare dso_local i32 @CryptDestroyKey(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
