; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_open_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_open_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"failed to open key %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64*, i64, i32)* @open_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_key(i32* %0, i32* %1, i64* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %16, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @get_registry_view(i32* %18)
  %20 = load i32, i32* %11, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %11, align 4
  %22 = load i64*, i64** %9, align 8
  %23 = call i64* @strdupW(i64* %22)
  store i64* %23, i64** %12, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %80

26:                                               ; preds = %5
  %27 = load i64*, i64** %12, align 8
  store i64* %27, i64** %13, align 8
  %28 = load i64*, i64** %13, align 8
  %29 = call i64* @strchrW(i64* %28, i8 signext 92)
  store i64* %29, i64** %14, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i64*, i64** %14, align 8
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32*, i32** %8, align 8
  %38 = load i64*, i64** %12, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @RegCreateKeyExW(i32* %37, i64* %38, i32 0, i32* null, i32 0, i32 %39, i32* null, i32** %15, i32* null)
  store i64 %40, i64* %17, align 8
  br label %46

41:                                               ; preds = %33
  %42 = load i32*, i32** %8, align 8
  %43 = load i64*, i64** %12, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @RegOpenKeyExW(i32* %42, i64* %43, i32 0, i32 %44, i32** %15)
  store i64 %45, i64* %17, align 8
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i64, i64* %17, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i64*, i64** %12, align 8
  %51 = call i32 @debugstr_w(i64* %50)
  %52 = load i64, i64* %17, align 8
  %53 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %52)
  %54 = load i64*, i64** %12, align 8
  %55 = call i32 @msi_free(i64* %54)
  store i32* null, i32** %6, align 8
  br label %80

56:                                               ; preds = %46
  %57 = load i64*, i64** %14, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i64*, i64** %14, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i64*, i64** %14, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32* @open_key(i32* %65, i32* %66, i64* %68, i64 %69, i32 %70)
  store i32* %71, i32** %16, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = call i32 @RegCloseKey(i32* %72)
  br label %76

74:                                               ; preds = %59, %56
  %75 = load i32*, i32** %15, align 8
  store i32* %75, i32** %16, align 8
  br label %76

76:                                               ; preds = %74, %64
  %77 = load i64*, i64** %12, align 8
  %78 = call i32 @msi_free(i64* %77)
  %79 = load i32*, i32** %16, align 8
  store i32* %79, i32** %6, align 8
  br label %80

80:                                               ; preds = %76, %49, %25
  %81 = load i32*, i32** %6, align 8
  ret i32* %81
}

declare dso_local i32 @get_registry_view(i32*) #1

declare dso_local i64* @strdupW(i64*) #1

declare dso_local i64* @strchrW(i64*, i8 signext) #1

declare dso_local i64 @RegCreateKeyExW(i32*, i64*, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i64 @RegOpenKeyExW(i32*, i64*, i32, i32, i32**) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @debugstr_w(i64*) #1

declare dso_local i32 @msi_free(i64*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
