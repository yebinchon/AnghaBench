; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_activex.c_init_key.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_activex.c_init_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @init_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_key(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @RegDeleteKeyA(i32 %13, i8* %14)
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %4, align 4
  br label %43

17:                                               ; preds = %3
  %18 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @RegCreateKeyA(i32 %18, i8* %19, i32* %8)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @REG_SZ, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = call i64 @RegSetValueA(i32 %30, i32* null, i32 %31, i8* %32, i32 %34)
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @RegCloseKey(i32 %37)
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @ERROR_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %36, %24, %12
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @RegDeleteKeyA(i32, i8*) #1

declare dso_local i64 @RegCreateKeyA(i32, i8*, i32*) #1

declare dso_local i64 @RegSetValueA(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
