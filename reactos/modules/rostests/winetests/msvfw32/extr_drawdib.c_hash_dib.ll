; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvfw32/extr_drawdib.c_hash_dib.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvfw32/extr_drawdib.c_hash_dib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hash_dib.hex = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@crypt_prov = common dso_local global i32 0, align 4
@CALG_SHA1 = common dso_local global i32 0, align 4
@HP_HASHVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @hash_dib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hash_dib(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [20 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @get_dib_size(i32* %12)
  store i32 %13, i32* %6, align 4
  store i32 80, i32* %10, align 4
  %14 = load i32, i32* @crypt_prov, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %91

17:                                               ; preds = %2
  %18 = load i32, i32* @crypt_prov, align 4
  %19 = load i32, i32* @CALG_SHA1, align 4
  %20 = call i32 @CryptCreateHash(i32 %18, i32 %19, i32 0, i32 0, i32* %7)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %91

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @CryptHashData(i32 %24, i8* %25, i32 %26, i32 0)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @HP_HASHVAL, align 4
  %30 = call i32 @CryptGetHashParam(i32 %28, i32 %29, i32* null, i32* %10, i32 0)
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 80
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i8* null, i8** %3, align 8
  br label %91

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @HP_HASHVAL, align 4
  %38 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 0
  %39 = call i32 @CryptGetHashParam(i32 %36, i32 %37, i32* %38, i32* %10, i32 0)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @CryptDestroyHash(i32 %40)
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %43, 2
  %45 = add nsw i32 %44, 1
  %46 = call i8* @HeapAlloc(i32 %42, i32 0, i32 %45)
  store i8* %46, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %81, %35
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = load i8*, i8** @hash_dib.hex, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %52, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 %60, i8* %65, align 1
  %66 = load i8*, i8** @hash_dib.hex, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [20 x i32], [20 x i32]* %9, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 15
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %66, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 %76, 2
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  store i8 %74, i8* %80, align 1
  br label %81

81:                                               ; preds = %51
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %47

84:                                               ; preds = %47
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %8, align 8
  store i8* %90, i8** %3, align 8
  br label %91

91:                                               ; preds = %84, %34, %22, %16
  %92 = load i8*, i8** %3, align 8
  ret i8* %92
}

declare dso_local i32 @get_dib_size(i32*) #1

declare dso_local i32 @CryptCreateHash(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CryptHashData(i32, i8*, i32, i32) #1

declare dso_local i32 @CryptGetHashParam(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @CryptDestroyHash(i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
