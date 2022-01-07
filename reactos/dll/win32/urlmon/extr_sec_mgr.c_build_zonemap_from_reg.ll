; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_build_zonemap_from_reg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_build_zonemap_from_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@wszZonesKey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @build_zonemap_from_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_zonemap_from_reg() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* null, i32** %4, align 8
  store i32 6, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %11 = load i32, i32* @wszZonesKey, align 4
  %12 = call i32 @RegOpenKeyW(i32 %10, i32 %11, i32* %3)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  br label %84

16:                                               ; preds = %0
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32* @heap_alloc(i32 %20)
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %79

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %67, %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %68

30:                                               ; preds = %26
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %31, align 16
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %33 = call i32 @ARRAY_SIZE(i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %37 = call i32 @RegEnumKeyExW(i32 %34, i32 %35, i8* %36, i32* %8, i32* null, i32* null, i32* null, i32* null)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, 2
  store i32 %48, i32* %5, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i32* @heap_realloc_zero(i32* %49, i32 %53)
  store i32* %54, i32** %9, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %46
  br label %79

58:                                               ; preds = %46
  %59 = load i32*, i32** %9, align 8
  store i32* %59, i32** %4, align 8
  br label %60

60:                                               ; preds = %58, %40
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0
  %62 = call i32 @atoiW(i8* %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %30
  br label %26

68:                                               ; preds = %26
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @RegCloseKey(i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %4, align 8
  store i32* %77, i32** %1, align 8
  br label %84

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %57, %24
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @RegCloseKey(i32 %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @heap_free(i32* %82)
  store i32* null, i32** %1, align 8
  br label %84

84:                                               ; preds = %79, %71, %15
  %85 = load i32*, i32** %1, align 8
  ret i32* %85
}

declare dso_local i32 @RegOpenKeyW(i32, i32, i32*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @RegEnumKeyExW(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @heap_realloc_zero(i32*, i32) #1

declare dso_local i32 @atoiW(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
