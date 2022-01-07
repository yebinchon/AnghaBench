; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_FindProvTypesRegVals.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_FindProvTypesRegVals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Software\\Microsoft\\Cryptography\\Defaults\\Provider Types\00", align 1
@LMEM_ZEROINIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"TypeName\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8**, i32*, i32*)* @FindProvTypesRegVals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindProvTypesRegVals(i32* %0, i32* %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %20 = call i64 @RegOpenKeyA(i32 %19, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32* %12)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %6, align 4
  br label %124

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = call i64 @RegQueryInfoKeyA(i32 %25, i32* null, i32* null, i32* null, i32* %26, i32* %16, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %120

30:                                               ; preds = %24
  %31 = load i32, i32* %16, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* @LMEM_ZEROINIT, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i8* @LocalAlloc(i32 %33, i32 %34)
  store i8* %35, i8** %15, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %120

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %109, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 @RegEnumKeyExA(i32 %40, i32 %42, i8* %43, i32* %16, i32* null, i32* null, i32* null, i32* null)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %115

47:                                               ; preds = %39
  %48 = load i32, i32* %16, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %16, align 4
  %50 = load i8*, i8** %15, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 -1
  store i32* %57, i32** %14, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 48
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 -1
  store i32* %62, i32** %14, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 48
  %65 = mul nsw i32 %64, 10
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load i32*, i32** %14, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 -1
  store i32* %70, i32** %14, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 48
  %73 = mul nsw i32 %72, 100
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %73
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i8*, i8** %15, align 8
  %79 = call i64 @RegOpenKeyA(i32 %77, i8* %78, i32* %13)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %47
  br label %115

82:                                               ; preds = %47
  %83 = load i32, i32* %13, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = call i32 @RegQueryValueExA(i32 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32* null, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %109, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @LMEM_ZEROINIT, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @LocalAlloc(i32 %88, i32 %90)
  %92 = load i8**, i8*** %9, align 8
  store i8* %91, i8** %92, align 8
  %93 = icmp ne i8* %91, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  br label %115

95:                                               ; preds = %87
  %96 = load i32, i32* %13, align 4
  %97 = load i8**, i8*** %9, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = load i32*, i32** %10, align 8
  %101 = call i32 @RegQueryValueExA(i32 %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32* %99, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %17, align 4
  br label %115

105:                                              ; preds = %95
  %106 = load i8**, i8*** %9, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @LocalFree(i8* %107)
  br label %109

109:                                              ; preds = %105, %82
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @RegCloseKey(i32 %110)
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %39

115:                                              ; preds = %103, %94, %81, %39
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @RegCloseKey(i32 %116)
  %118 = load i8*, i8** %15, align 8
  %119 = call i32 @LocalFree(i8* %118)
  br label %120

120:                                              ; preds = %115, %37, %29
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @RegCloseKey(i32 %121)
  %123 = load i32, i32* %17, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %120, %22
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i64 @RegQueryInfoKeyA(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @LocalAlloc(i32, i32) #1

declare dso_local i32 @RegEnumKeyExA(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @LocalFree(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
