; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/systeminfo/extr_systeminfo.c_RegGetSZ.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/systeminfo/extr_systeminfo.c_RegGetSZ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i32] [i32 87, i32 97, i32 114, i32 110, i32 105, i32 110, i32 103, i32 33, i32 32, i32 67, i32 97, i32 110, i32 110, i32 111, i32 116, i32 32, i32 111, i32 112, i32 101, i32 110, i32 32, i32 37, i32 115, i32 46, i32 32, i32 76, i32 97, i32 115, i32 116, i32 32, i32 101, i32 114, i32 114, i32 111, i32 114, i32 58, i32 32, i32 37, i32 108, i32 117, i32 46, i32 10, i32 0], align 4
@REG_SZ = common dso_local global i32 0, align 4
@REG_MULTI_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i32] [i32 87, i32 97, i32 114, i32 110, i32 105, i32 110, i32 103, i32 33, i32 32, i32 67, i32 97, i32 110, i32 110, i32 111, i32 116, i32 32, i32 113, i32 117, i32 101, i32 114, i32 121, i32 32, i32 37, i32 115, i32 46, i32 32, i32 76, i32 97, i32 115, i32 116, i32 32, i32 101, i32 114, i32 114, i32 111, i32 114, i32 58, i32 32, i32 37, i32 108, i32 117, i32 44, i32 32, i32 116, i32 121, i32 112, i32 101, i32 58, i32 32, i32 37, i32 108, i32 117, i32 46, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 78, i32 47, i32 65, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32*, i32)* @RegGetSZ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RegGetSZ(i32 %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %25 = call i64 @RegOpenKeyExW(i32 %22, i8* %23, i32 0, i32 %24, i32* %7)
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 (...) @GetLastError()
  %31 = call i32 (i8*, i8*, i32, ...) @wprintf(i8* bitcast ([43 x i32]* @.str to i8*), i8* %29, i32 %30)
  store i32 0, i32* %6, align 4
  br label %96

32:                                               ; preds = %21, %5
  %33 = load i32, i32* %7, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = call i64 @RegQueryValueExW(i32 %33, i8* %34, i32* null, i32* %13, i32 %36, i32* %12)
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @REG_SZ, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @REG_MULTI_SZ, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44, %32
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 (...) @GetLastError()
  %51 = load i32, i32* %13, align 4
  %52 = call i32 (i8*, i8*, i32, ...) @wprintf(i8* bitcast ([55 x i32]* @.str.1 to i8*), i8* %49, i32 %50, i32 %51)
  store i32 0, i32* %12, align 4
  br label %60

53:                                               ; preds = %44, %40
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @wcscpy(i32* %57, i8* bitcast ([4 x i32]* @.str.2 to i8*))
  store i32 6, i32* %12, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @RegCloseKey(i32 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %68, 4
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load i32, i32* %14, align 4
  %75 = call i64 @min(i32 %73, i32 %74)
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %91, %66
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sub i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %80, %77
  %90 = phi i1 [ false, %77 ], [ %88, %80 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i32, i32* %14, align 4
  %93 = add i32 %92, -1
  store i32 %93, i32* %14, align 4
  br label %77

94:                                               ; preds = %89
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %28
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @wprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @wcscpy(i32*, i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
