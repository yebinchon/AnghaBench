; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_FindProvRegVals.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_FindProvRegVals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Software\\Microsoft\\Cryptography\\Defaults\\Provider\00", align 1
@FALSE = common dso_local global i32 0, align 4
@LMEM_ZEROINIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8**, i32*, i32*)* @FindProvRegVals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindProvRegVals(i32 %0, i32* %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 4, i32* %14, align 4
  %15 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %16 = call i64 @RegOpenKeyA(i32 %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32* %12)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %6, align 4
  br label %59

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @RegQueryInfoKeyA(i32 %21, i32* null, i32* null, i32* null, i32* %22, i32* %23, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null)
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @LMEM_ZEROINIT, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @LocalAlloc(i32 %28, i32 %30)
  %32 = load i8**, i8*** %9, align 8
  store i8* %31, i8** %32, align 8
  %33 = icmp ne i8* %31, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %20
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %6, align 4
  br label %59

36:                                               ; preds = %20
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i8**, i8*** %9, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @RegEnumKeyExA(i32 %37, i32 %38, i8* %40, i32* %41, i32* null, i32* null, i32* null, i32* null)
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i8**, i8*** %9, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @RegOpenKeyA(i32 %46, i8* %48, i32* %13)
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = ptrtoint i32* %51 to i32
  %53 = call i32 @RegQueryValueExA(i32 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32 %52, i32* %14)
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @RegCloseKey(i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @RegCloseKey(i32 %56)
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %36, %34, %18
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i64 @RegOpenKeyA(i32, i8*, i32*) #1

declare dso_local i32 @RegQueryInfoKeyA(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @LocalAlloc(i32, i32) #1

declare dso_local i32 @RegEnumKeyExA(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
