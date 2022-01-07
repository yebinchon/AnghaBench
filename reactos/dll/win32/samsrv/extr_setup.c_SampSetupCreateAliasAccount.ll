; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/samsrv/extr_setup.c_SampSetupCreateAliasAccount.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/samsrv/extr_setup.c_SampSetupCreateAliasAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i32] [i32 65, i32 108, i32 105, i32 97, i32 115, i32 101, i32 115, i32 92, i32 37, i32 48, i32 56, i32 108, i32 88, i32 0], align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i32] [i32 68, i32 101, i32 115, i32 99, i32 114, i32 105, i32 112, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.3 = private unnamed_addr constant [8 x i32] [i32 83, i32 101, i32 99, i32 68, i32 101, i32 115, i32 99, i32 0], align 4
@REG_BINARY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i32] [i32 65, i32 108, i32 105, i32 97, i32 115, i32 101, i32 115, i32 92, i32 78, i32 97, i32 109, i32 101, i32 115, i32 0], align 4
@REG_DWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*)* @SampSetupCreateAliasAccount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SampSetupCreateAliasAccount(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [32 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i8* null, i8** %14, align 8
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @swprintf(i32* %16, i8* bitcast ([14 x i32]* @.str to i8*), i8* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %21 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %22 = call i32 @SampRegCreateKey(i32* %19, i32* %20, i32 %21, i32** %11)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = call i32 @NT_SUCCESS(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %5, align 4
  br label %112

28:                                               ; preds = %4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @REG_SZ, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @wcslen(i8* %33)
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = call i32 (i32*, i8*, i32, i32, ...) @SampRegSetValue(i32* %29, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 %30, i32 %32, i64 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @NT_SUCCESS(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %28
  br label %89

43:                                               ; preds = %28
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @REG_SZ, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @wcslen(i8* %48)
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = call i32 (i32*, i8*, i32, i32, ...) @SampRegSetValue(i32* %44, i8* bitcast ([12 x i32]* @.str.2 to i8*), i32 %45, i32 %47, i64 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @NT_SUCCESS(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %43
  br label %89

58:                                               ; preds = %43
  %59 = call i32 @SampCreateAliasSD(i32** %13, i8** %14)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @NT_SUCCESS(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %89

64:                                               ; preds = %58
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* @REG_BINARY, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = ptrtoint i32* %67 to i32
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 (i32*, i8*, i32, i32, ...) @SampRegSetValue(i32* %65, i8* bitcast ([8 x i32]* @.str.3 to i8*), i32 %66, i32 %68, i8* %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @NT_SUCCESS(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  br label %89

75:                                               ; preds = %64
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %78 = call i32 @SampRegOpenKey(i32* %76, i8* bitcast ([14 x i32]* @.str.4 to i8*), i32 %77, i32** %12)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @NT_SUCCESS(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  br label %89

83:                                               ; preds = %75
  %84 = load i32*, i32** %12, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* @REG_DWORD, align 4
  %87 = ptrtoint i8** %9 to i32
  %88 = call i32 (i32*, i8*, i32, i32, ...) @SampRegSetValue(i32* %84, i8* %85, i32 %86, i32 %87, i64 8)
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %83, %82, %74, %63, %57, %42
  %90 = call i32 @SampRegCloseKey(i32** %12)
  %91 = load i32*, i32** %13, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = call i32 (...) @RtlGetProcessHeap()
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @RtlFreeHeap(i32 %94, i32 0, i32* %95)
  br label %97

97:                                               ; preds = %93, %89
  %98 = load i32*, i32** %11, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = call i32 @SampRegCloseKey(i32** %11)
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @NT_SUCCESS(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds [32 x i32], [32 x i32]* %10, i64 0, i64 0
  %108 = call i32 @SampRegDeleteKey(i32* %106, i32* %107)
  br label %109

109:                                              ; preds = %105, %100
  br label %110

110:                                              ; preds = %109, %97
  %111 = load i32, i32* %15, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %110, %26
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @swprintf(i32*, i8*, i8*) #1

declare dso_local i32 @SampRegCreateKey(i32*, i32*, i32, i32**) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @SampRegSetValue(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @SampCreateAliasSD(i32**, i8**) #1

declare dso_local i32 @SampRegOpenKey(i32*, i8*, i32, i32**) #1

declare dso_local i32 @SampRegCloseKey(i32**) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i32*) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @SampRegDeleteKey(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
