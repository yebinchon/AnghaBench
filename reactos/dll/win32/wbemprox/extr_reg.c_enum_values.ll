; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_enum_values.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_enum_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%p, %s\0A\00", align 1
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@VT_UI4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32*, i32*)* @enum_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @enum_values(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %21 = load i64, i64* @S_OK, align 8
  store i64 %21, i64* %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %17, align 8
  store i64 0, i64* %19, align 8
  store i32* null, i32** %20, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @debugstr_w(i32* %23)
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %22, i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %29 = call i64 @RegOpenKeyExW(i32* %26, i32* %27, i32 0, i32 %28, i32** %11)
  store i64 %29, i64* %18, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %140

32:                                               ; preds = %5
  %33 = load i32*, i32** %11, align 8
  %34 = call i64 @RegQueryInfoKeyW(i32* %33, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %14, i32* %15, i32* null, i32* null, i32* null)
  store i64 %34, i64* %18, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %140

37:                                               ; preds = %32
  %38 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %38, i64* %12, align 8
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i32* @heap_alloc(i32 %43)
  store i32* %44, i32** %20, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  br label %140

47:                                               ; preds = %37
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call i32* @heap_alloc(i32 %51)
  store i32* %52, i32** %13, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %140

55:                                               ; preds = %47
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32* @heap_alloc(i32 %59)
  store i32* %60, i32** %17, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %140

63:                                               ; preds = %55
  %64 = load i64, i64* @S_OK, align 8
  store i64 %64, i64* %12, align 8
  br label %65

65:                                               ; preds = %112, %63
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = load i64, i64* %19, align 8
  %70 = load i32*, i32** %20, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = load i64, i64* %19, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = call i64 @RegEnumValueW(i32* %68, i64 %69, i32* %70, i32* %16, i32* null, i32* %73, i32* null, i32* null)
  store i64 %74, i64* %18, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %65
  %79 = load i64, i64* %19, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %82, i64* %18, align 8
  br label %83

83:                                               ; preds = %81, %78
  br label %115

84:                                               ; preds = %65
  %85 = load i64, i64* %18, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %115

88:                                               ; preds = %84
  %89 = load i32*, i32** %20, align 8
  %90 = call i32 @SysAllocString(i32* %89)
  %91 = load i32*, i32** %13, align 8
  %92 = load i64, i64* %19, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 %90, i32* %93, align 4
  %94 = icmp ne i32 %90, 0
  br i1 %94, label %112, label %95

95:                                               ; preds = %88
  %96 = load i64, i64* %19, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %19, align 8
  br label %98

98:                                               ; preds = %107, %95
  %99 = load i64, i64* %19, align 8
  %100 = icmp uge i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32*, i32** %13, align 8
  %103 = load i64, i64* %19, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @SysFreeString(i32 %105)
  br label %107

107:                                              ; preds = %101
  %108 = load i64, i64* %19, align 8
  %109 = add i64 %108, -1
  store i64 %109, i64* %19, align 8
  br label %98

110:                                              ; preds = %98
  %111 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %111, i64* %12, align 8
  br label %115

112:                                              ; preds = %88
  %113 = load i64, i64* %19, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %19, align 8
  br label %65

115:                                              ; preds = %110, %87, %83
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* @S_OK, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %115
  %120 = load i64, i64* %18, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %139, label %122

122:                                              ; preds = %119
  %123 = load i32*, i32** %13, align 8
  %124 = load i64, i64* %19, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = call i64 @to_bstr_array(i32* %123, i64 %124, i32* %125)
  store i64 %126, i64* %12, align 8
  %127 = load i32*, i32** %13, align 8
  %128 = load i64, i64* %19, align 8
  %129 = call i32 @free_bstr_array(i32* %127, i64 %128)
  %130 = load i64, i64* %12, align 8
  %131 = load i64, i64* @S_OK, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %122
  %134 = load i32*, i32** %17, align 8
  %135 = load i64, i64* %19, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = call i64 @to_i4_array(i32* %134, i64 %135, i32* %136)
  store i64 %137, i64* %12, align 8
  br label %138

138:                                              ; preds = %133, %122
  br label %139

139:                                              ; preds = %138, %119, %115
  br label %140

140:                                              ; preds = %139, %62, %54, %46, %36, %31
  %141 = load i32, i32* @VT_UI4, align 4
  %142 = load i64, i64* %18, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = call i32 @set_variant(i32 %141, i64 %142, i32* null, i32* %143)
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 @RegCloseKey(i32* %145)
  %147 = load i32*, i32** %13, align 8
  %148 = call i32 @heap_free(i32* %147)
  %149 = load i32*, i32** %17, align 8
  %150 = call i32 @heap_free(i32* %149)
  %151 = load i32*, i32** %20, align 8
  %152 = call i32 @heap_free(i32* %151)
  %153 = load i64, i64* %12, align 8
  ret i64 %153
}

declare dso_local i32 @TRACE(i8*, i32*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i64 @RegOpenKeyExW(i32*, i32*, i32, i32, i32**) #1

declare dso_local i64 @RegQueryInfoKeyW(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i64 @RegEnumValueW(i32*, i64, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SysAllocString(i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @to_bstr_array(i32*, i64, i32*) #1

declare dso_local i32 @free_bstr_array(i32*, i64) #1

declare dso_local i64 @to_i4_array(i32*, i64, i32*) #1

declare dso_local i32 @set_variant(i32, i64, i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
