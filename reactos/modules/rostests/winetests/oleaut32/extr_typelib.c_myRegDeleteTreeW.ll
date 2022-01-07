; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_myRegDeleteTreeW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_myRegDeleteTreeW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@KEY_WOW64_64KEY = common dso_local global i32 0, align 4
@KEY_WOW64_32KEY = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32)* @myRegDeleteTreeW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @myRegDeleteTreeW(i32 %0, i32* %1, i32 %2) #0 {
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
  %23 = load i32, i32* @KEY_WOW64_64KEY, align 4
  %24 = load i32, i32* @KEY_WOW64_32KEY, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @KEY_READ, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @RegOpenKeyExW(i32 %31, i32* %32, i32 0, i32 %35, i32* %16)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %143

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i32, i32* %16, align 4
  %44 = call i64 @RegQueryInfoKeyW(i32 %43, i32* null, i32* null, i32* null, i32* null, i32* %9, i32* null, i32* null, i32* %10, i32* null, i32* null, i32* null)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %128

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @max(i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @ARRAY_SIZE(i32* %21)
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = call i32 (...) @GetProcessHeap()
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = call i32* @HeapAlloc(i32 %60, i32 0, i32 %64)
  store i32* %65, i32** %15, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %68, i64* %8, align 8
  br label %128

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %48
  br label %71

71:                                               ; preds = %89, %70
  %72 = load i64, i64* @TRUE, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = call i64 @RegEnumKeyExW(i32 %76, i32 0, i32* %77, i32* %12, i32* null, i32* null, i32* null, i32* null)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %90

81:                                               ; preds = %74
  %82 = load i32, i32* %16, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @myRegDeleteTreeW(i32 %82, i32* %83, i32 %84)
  store i64 %85, i64* %8, align 8
  %86 = load i64, i64* %8, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %128

89:                                               ; preds = %81
  br label %71

90:                                               ; preds = %80, %71
  %91 = load i32*, i32** %6, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  br i1 true, label %94, label %102

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i64 @pRegDeleteKeyExW(i32 %98, i32* %99, i32 %100, i32 0)
  store i64 %101, i64* %8, align 8
  br label %106

102:                                              ; preds = %94, %93
  %103 = load i32, i32* %5, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = call i64 @RegDeleteKeyW(i32 %103, i32* %104)
  store i64 %105, i64* %8, align 8
  br label %106

106:                                              ; preds = %102, %97
  br label %127

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %125, %107
  %109 = load i64, i64* @TRUE, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32*, i32** %15, align 8
  %115 = call i64 @RegEnumValueW(i32 %113, i32 0, i32* %114, i32* %12, i32* null, i32* null, i32* null, i32* null)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %126

118:                                              ; preds = %111
  %119 = load i32, i32* %5, align 4
  %120 = load i32*, i32** %15, align 8
  %121 = call i64 @RegDeleteValueW(i32 %119, i32* %120)
  store i64 %121, i64* %8, align 8
  %122 = load i64, i64* %8, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %128

125:                                              ; preds = %118
  br label %108

126:                                              ; preds = %117, %108
  br label %127

127:                                              ; preds = %126, %106
  br label %128

128:                                              ; preds = %127, %124, %88, %67, %47
  %129 = load i32*, i32** %15, align 8
  %130 = icmp ne i32* %129, %21
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = call i32 (...) @GetProcessHeap()
  %133 = load i32*, i32** %15, align 8
  %134 = call i32 @HeapFree(i32 %132, i32 0, i32* %133)
  br label %135

135:                                              ; preds = %131, %128
  %136 = load i32*, i32** %6, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @RegCloseKey(i32 %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i64, i64* %8, align 8
  store i64 %142, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %143

143:                                              ; preds = %141, %39
  %144 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i64, i64* %4, align 8
  ret i64 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryInfoKeyW(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

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
