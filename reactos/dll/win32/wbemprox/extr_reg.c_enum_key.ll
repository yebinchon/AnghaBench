; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_enum_key.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_enum_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%p, %s\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@KEY_ENUMERATE_SUB_KEYS = common dso_local global i32 0, align 4
@VT_UI4 = common dso_local global i32 0, align 4
@ERROR_NO_MORE_ITEMS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32*, i32*)* @enum_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @enum_key(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [256 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i64, i64* @S_OK, align 8
  store i64 %19, i64* %11, align 8
  store i32 2, i32* %15, align 4
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  store i32 %21, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @debugstr_w(i32* %23)
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32* @heap_alloc(i32 %29)
  store i32* %30, i32** %13, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %4
  %33 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %33, i64* %5, align 8
  br label %141

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @KEY_ENUMERATE_SUB_KEYS, align 4
  %38 = call i32 @RegOpenKeyExW(i32 %35, i32* %36, i32 0, i32 %37, i32* %10)
  store i32 %38, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* @VT_UI4, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @set_variant(i32 %41, i32 %42, i32* null, i32* %43)
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @heap_free(i32* %45)
  %47 = load i64, i64* @S_OK, align 8
  store i64 %47, i64* %5, align 8
  br label %141

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %113, %48
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load i32, i32* %15, align 4
  %55 = mul nsw i32 %54, 2
  store i32 %55, i32* %15, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32* @heap_realloc(i32* %56, i32 %60)
  store i32* %61, i32** %14, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @RegCloseKey(i32 %64)
  %66 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %66, i64* %5, align 8
  br label %141

67:                                               ; preds = %53
  %68 = load i32*, i32** %14, align 8
  store i32* %68, i32** %13, align 8
  br label %69

69:                                               ; preds = %67, %49
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %18, align 4
  %72 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @RegEnumKeyW(i32 %70, i32 %71, i32* %72, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* @ERROR_NO_MORE_ITEMS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %80, %77
  br label %116

83:                                               ; preds = %69
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %116

87:                                               ; preds = %83
  %88 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %89 = call i32 @SysAllocString(i32* %88)
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  %94 = icmp ne i32 %89, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %18, align 4
  br label %98

98:                                               ; preds = %108, %95
  %99 = load i32, i32* %18, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @SysFreeString(i32 %106)
  br label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %18, align 4
  br label %98

111:                                              ; preds = %98
  %112 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %112, i64* %11, align 8
  br label %116

113:                                              ; preds = %87
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %18, align 4
  br label %49

116:                                              ; preds = %111, %86, %82
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* @S_OK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %18, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = call i64 @to_bstr_array(i32* %124, i32 %125, i32* %126)
  store i64 %127, i64* %11, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @free_bstr_array(i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %123, %120, %116
  %132 = load i32, i32* @VT_UI4, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @set_variant(i32 %132, i32 %133, i32* null, i32* %134)
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @RegCloseKey(i32 %136)
  %138 = load i32*, i32** %13, align 8
  %139 = call i32 @heap_free(i32* %138)
  %140 = load i64, i64* %11, align 8
  store i64 %140, i64* %5, align 8
  br label %141

141:                                              ; preds = %131, %63, %40, %32
  %142 = load i64, i64* %5, align 8
  ret i64 %142
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @RegOpenKeyExW(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @set_variant(i32, i32, i32*, i32*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32* @heap_realloc(i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @RegEnumKeyW(i32, i32, i32*, i32) #1

declare dso_local i32 @SysAllocString(i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @to_bstr_array(i32*, i32, i32*) #1

declare dso_local i32 @free_bstr_array(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
