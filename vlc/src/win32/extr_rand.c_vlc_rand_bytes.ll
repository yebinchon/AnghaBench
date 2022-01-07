; ModuleID = '/home/carl/AnghaBench/vlc/src/win32/extr_rand.c_vlc_rand_bytes.c'
source_filename = "/home/carl/AnghaBench/vlc/src/win32/extr_rand.c_vlc_rand_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MS_DEF_PROV = common dso_local global i32 0, align 4
@PROV_RSA_FULL = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@BCRYPT_RNG_ALGORITHM = common dso_local global i32 0, align 4
@MS_PRIMITIVE_PROVIDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlc_rand_bytes(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %6, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = call i32 (...) @rand()
  store i32 %16, i32* %7, align 4
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memcpy(i32* %20, i32* %7, i32 %22)
  br label %31

24:                                               ; preds = %15
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @memcpy(i32* %25, i32* %7, i32 4)
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %27, 4
  store i64 %28, i64* %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32* %30, i32** %6, align 8
  br label %12

31:                                               ; preds = %19, %12
  %32 = load i32, i32* @MS_DEF_PROV, align 4
  %33 = load i32, i32* @PROV_RSA_FULL, align 4
  %34 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %35 = call i64 @CryptAcquireContext(i32* %8, i32* null, i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* %4, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @CryptGenRandom(i32 %38, i64 %39, i8* %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @CryptReleaseContext(i32 %42, i32 0)
  br label %44

44:                                               ; preds = %37, %31
  ret void
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @CryptAcquireContext(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @CryptGenRandom(i32, i64, i8*) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
