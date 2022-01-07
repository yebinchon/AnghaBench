; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_action.c_action_RegDeleteTreeA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_action.c_action_RegDeleteTreeA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i32)* @action_RegDeleteTreeA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @action_RegDeleteTreeA(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  store i8* %21, i8** %15, align 8
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @RegOpenKeyExA(i32 %26, i8* %27, i32 0, i32 %28, i32* %16)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %130

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %16, align 4
  %37 = call i64 @RegQueryInfoKeyA(i32 %36, i32* null, i32* null, i32* null, i32* null, i32* %9, i32* null, i32* null, i32* %10, i32* null, i32* null, i32* null)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %115

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
  %51 = icmp ugt i64 %50, %19
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = call i32 (...) @GetProcessHeap()
  %54 = load i32, i32* %11, align 4
  %55 = call i8* @HeapAlloc(i32 %53, i32 0, i32 %54)
  store i8* %55, i8** %15, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %58, i64* %8, align 8
  br label %115

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %79, %60
  %62 = load i64, i64* @TRUE, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = call i64 @RegEnumKeyExA(i32 %66, i32 0, i8* %67, i32* %12, i32* null, i32* null, i32* null, i32* null)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %80

71:                                               ; preds = %64
  %72 = load i32, i32* %16, align 4
  %73 = load i8*, i8** %15, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @action_RegDeleteTreeA(i32 %72, i8* %73, i32 %74)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %115

79:                                               ; preds = %71
  br label %61

80:                                               ; preds = %70, %61
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  br i1 true, label %84, label %89

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @pRegDeleteKeyExA(i32 %85, i8* %86, i32 %87, i32 0)
  store i64 %88, i64* %8, align 8
  br label %93

89:                                               ; preds = %83
  %90 = load i32, i32* %5, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = call i64 @RegDeleteKeyA(i32 %90, i8* %91)
  store i64 %92, i64* %8, align 8
  br label %93

93:                                               ; preds = %89, %84
  br label %114

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %112, %94
  %96 = load i64, i64* @TRUE, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i8*, i8** %15, align 8
  %102 = call i64 @RegEnumValueA(i32 %100, i32 0, i8* %101, i32* %12, i32* null, i32* null, i32* null, i32* null)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %113

105:                                              ; preds = %98
  %106 = load i32, i32* %5, align 4
  %107 = load i8*, i8** %15, align 8
  %108 = call i64 @RegDeleteValueA(i32 %106, i8* %107)
  store i64 %108, i64* %8, align 8
  %109 = load i64, i64* %8, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %115

112:                                              ; preds = %105
  br label %95

113:                                              ; preds = %104, %95
  br label %114

114:                                              ; preds = %113, %93
  br label %115

115:                                              ; preds = %114, %111, %78, %57, %40
  %116 = load i8*, i8** %15, align 8
  %117 = icmp ne i8* %116, %21
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = call i32 (...) @GetProcessHeap()
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @HeapFree(i32 %119, i32 0, i8* %120)
  br label %122

122:                                              ; preds = %118, %115
  %123 = load i8*, i8** %6, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @RegCloseKey(i32 %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i64, i64* %8, align 8
  store i64 %129, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %130

130:                                              ; preds = %128, %32
  %131 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i64, i64* %4, align 8
  ret i64 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyExA(i32, i8*, i32, i32, i32*) #2

declare dso_local i64 @RegQueryInfoKeyA(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i8* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i64 @RegEnumKeyExA(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @pRegDeleteKeyExA(i32, i8*, i32, i32) #2

declare dso_local i64 @RegDeleteKeyA(i32, i8*) #2

declare dso_local i64 @RegEnumValueA(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @RegDeleteValueA(i32, i8*) #2

declare dso_local i32 @HeapFree(i32, i32, i8*) #2

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
