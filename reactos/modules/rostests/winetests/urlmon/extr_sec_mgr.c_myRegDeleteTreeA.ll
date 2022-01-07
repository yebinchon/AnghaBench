; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_myRegDeleteTreeA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_sec_mgr.c_myRegDeleteTreeA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*)* @myRegDeleteTreeA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @myRegDeleteTreeA(i32 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  store i32* %19, i32** %13, align 8
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @KEY_READ, align 4
  %27 = call i64 @RegOpenKeyExA(i32 %24, i32* %25, i32 0, i32 %26, i32* %14)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %122

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %14, align 4
  %35 = call i64 @RegQueryInfoKeyA(i32 %34, i32* null, i32* null, i32* null, i32* null, i32* %7, i32* null, i32* null, i32* %8, i32* null, i32* null, i32* null)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %108

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @max(i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ARRAY_SIZE(i32* %19)
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %39
  %51 = call i32 (...) @GetProcessHeap()
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32* @HeapAlloc(i32 %51, i32 0, i32 %55)
  store i32* %56, i32** %13, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %59, i64* %6, align 8
  br label %108

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %39
  br label %62

62:                                               ; preds = %79, %61
  %63 = load i64, i64* @TRUE, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %13, align 8
  %69 = call i64 @RegEnumKeyExA(i32 %67, i32 0, i32* %68, i32* %10, i32* null, i32* null, i32* null, i32* null)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %80

72:                                               ; preds = %65
  %73 = load i32, i32* %14, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = call i64 @myRegDeleteTreeA(i32 %73, i32* %74)
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %108

79:                                               ; preds = %72
  br label %62

80:                                               ; preds = %71, %62
  %81 = load i32*, i32** %5, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = call i64 @RegDeleteKeyA(i32 %84, i32* %85)
  store i64 %86, i64* %6, align 8
  br label %107

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %105, %87
  %89 = load i64, i64* @TRUE, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32*, i32** %13, align 8
  %95 = call i64 @RegEnumValueA(i32 %93, i32 0, i32* %94, i32* %10, i32* null, i32* null, i32* null, i32* null)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %106

98:                                               ; preds = %91
  %99 = load i32, i32* %4, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = call i64 @RegDeleteValueA(i32 %99, i32* %100)
  store i64 %101, i64* %6, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %108

105:                                              ; preds = %98
  br label %88

106:                                              ; preds = %97, %88
  br label %107

107:                                              ; preds = %106, %83
  br label %108

108:                                              ; preds = %107, %104, %78, %58, %38
  %109 = load i32*, i32** %13, align 8
  %110 = icmp ne i32* %109, %19
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @heap_free(i32* %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32*, i32** %5, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @RegCloseKey(i32 %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i64, i64* %6, align 8
  store i64 %121, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %122

122:                                              ; preds = %120, %30
  %123 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i64, i64* %3, align 8
  ret i64 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyExA(i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryInfoKeyA(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @RegEnumKeyExA(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @RegDeleteKeyA(i32, i32*) #2

declare dso_local i64 @RegEnumValueA(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @RegDeleteValueA(i32, i32*) #2

declare dso_local i32 @heap_free(i32*) #2

declare dso_local i32 @RegCloseKey(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
