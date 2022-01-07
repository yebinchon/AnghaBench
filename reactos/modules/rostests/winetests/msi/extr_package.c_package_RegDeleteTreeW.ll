; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_package_RegDeleteTreeW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_package_RegDeleteTreeW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32)* @package_RegDeleteTreeW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @package_RegDeleteTreeW(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  store i32* %21, i32** %15, align 8
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @RegOpenKeyExW(i32 %26, i32* %27, i32 0, i32 %28, i32* %16)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %135

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %16, align 4
  %37 = call i64 @RegQueryInfoKeyW(i32 %36, i32* null, i32* null, i32* null, i32* null, i32* %9, i32* null, i32* null, i32* %10, i32* null, i32* null, i32* null)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %120

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @max(i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = mul nuw i64 4, %19
  %52 = udiv i64 %51, 4
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %41
  %55 = call i32 (...) @GetProcessHeap()
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32* @HeapAlloc(i32 %55, i32 0, i32 %59)
  store i32* %60, i32** %15, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %54
  %63 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %63, i64* %8, align 8
  br label %120

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %41
  br label %66

66:                                               ; preds = %84, %65
  %67 = load i64, i64* @TRUE, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = call i64 @RegEnumKeyExW(i32 %71, i32 0, i32* %72, i32* %12, i32* null, i32* null, i32* null, i32* null)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %85

76:                                               ; preds = %69
  %77 = load i32, i32* %16, align 4
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @package_RegDeleteTreeW(i32 %77, i32* %78, i32 %79)
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %120

84:                                               ; preds = %76
  br label %66

85:                                               ; preds = %75, %66
  %86 = load i32*, i32** %6, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  br i1 true, label %89, label %94

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i64 @pRegDeleteKeyExW(i32 %90, i32* %91, i32 %92, i32 0)
  store i64 %93, i64* %8, align 8
  br label %98

94:                                               ; preds = %88
  %95 = load i32, i32* %5, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = call i64 @RegDeleteKeyW(i32 %95, i32* %96)
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %94, %89
  br label %119

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %117, %99
  %101 = load i64, i64* @TRUE, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32*, i32** %15, align 8
  %107 = call i64 @RegEnumValueW(i32 %105, i32 0, i32* %106, i32* %12, i32* null, i32* null, i32* null, i32* null)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %118

110:                                              ; preds = %103
  %111 = load i32, i32* %5, align 4
  %112 = load i32*, i32** %15, align 8
  %113 = call i64 @RegDeleteValueW(i32 %111, i32* %112)
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %8, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %120

117:                                              ; preds = %110
  br label %100

118:                                              ; preds = %109, %100
  br label %119

119:                                              ; preds = %118, %98
  br label %120

120:                                              ; preds = %119, %116, %83, %62, %40
  %121 = load i32*, i32** %15, align 8
  %122 = icmp ne i32* %121, %21
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = call i32 (...) @GetProcessHeap()
  %125 = load i32*, i32** %15, align 8
  %126 = call i32 @HeapFree(i32 %124, i32 0, i32* %125)
  br label %127

127:                                              ; preds = %123, %120
  %128 = load i32*, i32** %6, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @RegCloseKey(i32 %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i64, i64* %8, align 8
  store i64 %134, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %135

135:                                              ; preds = %133, %32
  %136 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i64, i64* %4, align 8
  ret i64 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryInfoKeyW(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @RegEnumKeyExW(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @pRegDeleteKeyExW(i32, i32*, i32, i32) #2

declare dso_local i64 @RegDeleteKeyW(i32, i32*) #2

declare dso_local i64 @RegEnumValueW(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @RegDeleteValueW(i32, i32*) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

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
