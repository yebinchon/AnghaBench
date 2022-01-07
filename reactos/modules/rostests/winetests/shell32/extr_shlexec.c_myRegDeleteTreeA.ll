; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_myRegDeleteTreeA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_myRegDeleteTreeA.c"
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
  br label %121

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
  br label %107

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
  br i1 %49, label %50, label %60

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32* @heap_alloc(i32 %54)
  store i32* %55, i32** %13, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %58, i64* %6, align 8
  br label %107

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %39
  br label %61

61:                                               ; preds = %78, %60
  %62 = load i64, i64* @TRUE, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = call i64 @RegEnumKeyExA(i32 %66, i32 0, i32* %67, i32* %10, i32* null, i32* null, i32* null, i32* null)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %79

71:                                               ; preds = %64
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = call i64 @myRegDeleteTreeA(i32 %72, i32* %73)
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %107

78:                                               ; preds = %71
  br label %61

79:                                               ; preds = %70, %61
  %80 = load i32*, i32** %5, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = call i64 @RegDeleteKeyA(i32 %83, i32* %84)
  store i64 %85, i64* %6, align 8
  br label %106

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %104, %86
  %88 = load i64, i64* @TRUE, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = call i64 @RegEnumValueA(i32 %92, i32 0, i32* %93, i32* %10, i32* null, i32* null, i32* null, i32* null)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %105

97:                                               ; preds = %90
  %98 = load i32, i32* %4, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = call i64 @RegDeleteValueA(i32 %98, i32* %99)
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %107

104:                                              ; preds = %97
  br label %87

105:                                              ; preds = %96, %87
  br label %106

106:                                              ; preds = %105, %82
  br label %107

107:                                              ; preds = %106, %103, %77, %57, %38
  %108 = load i32*, i32** %13, align 8
  %109 = icmp ne i32* %108, %19
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @heap_free(i32* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i32*, i32** %5, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @RegCloseKey(i32 %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i64, i64* %6, align 8
  store i64 %120, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %121

121:                                              ; preds = %119, %30
  %122 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyExA(i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryInfoKeyA(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32* @heap_alloc(i32) #2

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
