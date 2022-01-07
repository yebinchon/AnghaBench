; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/samsrv/extr_setup.c_SampSetupCreateGroupAccount.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/samsrv/extr_setup.c_SampSetupCreateGroupAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i64, i64 }

@.str = private unnamed_addr constant [13 x i32] [i32 71, i32 114, i32 111, i32 117, i32 112, i32 115, i32 92, i32 37, i32 48, i32 56, i32 108, i32 88, i32 0], align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 70, i32 0], align 4
@REG_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i32] [i32 65, i32 100, i32 109, i32 105, i32 110, i32 67, i32 111, i32 109, i32 109, i32 101, i32 110, i32 116, i32 0], align 4
@.str.4 = private unnamed_addr constant [8 x i32] [i32 83, i32 101, i32 99, i32 68, i32 101, i32 115, i32 99, i32 0], align 4
@.str.5 = private unnamed_addr constant [13 x i32] [i32 71, i32 114, i32 111, i32 117, i32 112, i32 115, i32 92, i32 78, i32 97, i32 109, i32 101, i32 115, i32 0], align 4
@REG_DWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*)* @SampSetupCreateGroupAccount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SampSetupCreateGroupAccount(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca [32 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @swprintf(i32* %22, i8* bitcast ([13 x i32]* @.str to i8*), i8* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %27 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %28 = call i32 @SampRegCreateKey(i32* %25, i32* %26, i32 %27, i32** %12)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @NT_SUCCESS(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %5, align 4
  br label %127

34:                                               ; preds = %4
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* @REG_BINARY, align 4
  %37 = ptrtoint %struct.TYPE_2__* %10 to i32
  %38 = call i32 (i32*, i8*, i32, i32, ...) @SampRegSetValue(i32* %35, i8* bitcast ([2 x i32]* @.str.1 to i8*), i32 %36, i32 %37, i64 32)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @NT_SUCCESS(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %104

43:                                               ; preds = %34
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* @REG_SZ, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @wcslen(i8* %48)
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = call i32 (i32*, i8*, i32, i32, ...) @SampRegSetValue(i32* %44, i8* bitcast ([5 x i32]* @.str.2 to i8*), i32 %45, i32 %47, i64 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @NT_SUCCESS(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %43
  br label %104

58:                                               ; preds = %43
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* @REG_SZ, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @wcslen(i8* %63)
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = call i32 (i32*, i8*, i32, i32, ...) @SampRegSetValue(i32* %59, i8* bitcast ([13 x i32]* @.str.3 to i8*), i32 %60, i32 %62, i64 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @NT_SUCCESS(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %58
  br label %104

73:                                               ; preds = %58
  %74 = call i32 @SampCreateGroupSD(i32** %14, i8** %15)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @NT_SUCCESS(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %104

79:                                               ; preds = %73
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* @REG_BINARY, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = ptrtoint i32* %82 to i32
  %84 = load i8*, i8** %15, align 8
  %85 = call i32 (i32*, i8*, i32, i32, ...) @SampRegSetValue(i32* %80, i8* bitcast ([8 x i32]* @.str.4 to i8*), i32 %81, i32 %83, i8* %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @NT_SUCCESS(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %79
  br label %104

90:                                               ; preds = %79
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %93 = call i32 @SampRegOpenKey(i32* %91, i8* bitcast ([13 x i32]* @.str.5 to i8*), i32 %92, i32** %13)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @NT_SUCCESS(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  br label %104

98:                                               ; preds = %90
  %99 = load i32*, i32** %13, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* @REG_DWORD, align 4
  %102 = ptrtoint i8** %9 to i32
  %103 = call i32 (i32*, i8*, i32, i32, ...) @SampRegSetValue(i32* %99, i8* %100, i32 %101, i32 %102, i64 8)
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %98, %97, %89, %78, %72, %57, %42
  %105 = call i32 @SampRegCloseKey(i32** %13)
  %106 = load i32*, i32** %14, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = call i32 (...) @RtlGetProcessHeap()
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @RtlFreeHeap(i32 %109, i32 0, i32* %110)
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i32*, i32** %12, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = call i32 @SampRegCloseKey(i32** %12)
  %117 = load i32, i32* %16, align 4
  %118 = call i32 @NT_SUCCESS(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %123 = call i32 @SampRegDeleteKey(i32* %121, i32* %122)
  br label %124

124:                                              ; preds = %120, %115
  br label %125

125:                                              ; preds = %124, %112
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %32
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @swprintf(i32*, i8*, i8*) #1

declare dso_local i32 @SampRegCreateKey(i32*, i32*, i32, i32**) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @SampRegSetValue(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @SampCreateGroupSD(i32**, i8**) #1

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
