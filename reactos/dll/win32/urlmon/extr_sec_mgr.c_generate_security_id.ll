; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_generate_security_id.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_generate_security_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@URLZONE_INVALID = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i32 0, align 4
@URL_SCHEME_WILDCARD = common dso_local global i64 0, align 8
@CP_ACP = common dso_local global i32 0, align 4
@E_NOT_SUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64*, i64)* @generate_security_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_security_id(i32* %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @URLZONE_INVALID, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %23, i32* %5, align 4
  br label %160

24:                                               ; preds = %4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @IUri_GetScheme(i32* %25, i64* %12)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %160

32:                                               ; preds = %24
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @is_hierarchical_scheme(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %75, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @URL_SCHEME_WILDCARD, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %36
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @IUri_GetDisplayUri(i32* %41, i32** %13)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %160

48:                                               ; preds = %40
  %49 = load i32, i32* @CP_ACP, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = call i64 @WideCharToMultiByte(i32 %49, i32 0, i32* %50, i32 -1, i32* null, i64 0, i32* null, i32* null)
  %52 = sub nsw i64 %51, 1
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 8
  %55 = load i64*, i64** %8, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @SysFreeString(i32* %59)
  %61 = load i32, i32* @E_NOT_SUFFICIENT_BUFFER, align 4
  store i32 %61, i32* %5, align 4
  br label %160

62:                                               ; preds = %48
  %63 = load i32, i32* @CP_ACP, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @WideCharToMultiByte(i32 %63, i32 0, i32* %64, i32 -1, i32* %65, i64 %66, i32* null, i32* null)
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @SysFreeString(i32* %68)
  %70 = load i64, i64* %9, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = bitcast i32* %73 to i64*
  store i64 %70, i64* %74, align 8
  br label %155

75:                                               ; preds = %36, %32
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @IUri_GetHost(i32* %76, i32** %14)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @FAILED(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  br label %160

83:                                               ; preds = %75
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* @URL_SCHEME_WILDCARD, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @SysFreeString(i32* %92)
  %94 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %94, i32* %5, align 4
  br label %160

95:                                               ; preds = %87, %83
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @IUri_GetSchemeName(i32* %96, i32** %15)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i64 @FAILED(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @SysFreeString(i32* %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %5, align 4
  br label %160

105:                                              ; preds = %95
  %106 = load i32, i32* @CP_ACP, align 4
  %107 = load i32*, i32** %14, align 8
  %108 = call i64 @WideCharToMultiByte(i32 %106, i32 0, i32* %107, i32 -1, i32* null, i64 0, i32* null, i32* null)
  %109 = sub nsw i64 %108, 1
  store i64 %109, i64* %16, align 8
  %110 = load i32, i32* @CP_ACP, align 4
  %111 = load i32*, i32** %15, align 8
  %112 = call i64 @WideCharToMultiByte(i32 %110, i32 0, i32* %111, i32 -1, i32* null, i64 0, i32* null, i32* null)
  %113 = sub nsw i64 %112, 1
  store i64 %113, i64* %17, align 8
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* %17, align 8
  %116 = add nsw i64 %114, %115
  %117 = add i64 %116, 4
  store i64 %117, i64* %10, align 8
  %118 = load i64, i64* %10, align 8
  %119 = add i64 %118, 8
  %120 = load i64*, i64** %8, align 8
  %121 = load i64, i64* %120, align 8
  %122 = icmp ugt i64 %119, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %105
  %124 = load i32*, i32** %14, align 8
  %125 = call i32 @SysFreeString(i32* %124)
  %126 = load i32*, i32** %15, align 8
  %127 = call i32 @SysFreeString(i32* %126)
  %128 = load i32, i32* @E_NOT_SUFFICIENT_BUFFER, align 4
  store i32 %128, i32* %5, align 4
  br label %160

129:                                              ; preds = %105
  %130 = load i32, i32* @CP_ACP, align 4
  %131 = load i32*, i32** %15, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = load i64, i64* %10, align 8
  %134 = call i64 @WideCharToMultiByte(i32 %130, i32 0, i32* %131, i32 -1, i32* %132, i64 %133, i32* null, i32* null)
  %135 = load i32*, i32** %15, align 8
  %136 = call i32 @SysFreeString(i32* %135)
  %137 = load i32*, i32** %7, align 8
  %138 = load i64, i64* %17, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %18, align 8
  %140 = load i32*, i32** %18, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %18, align 8
  store i32 58, i32* %140, align 4
  %142 = load i32, i32* @CP_ACP, align 4
  %143 = load i32*, i32** %14, align 8
  %144 = load i32*, i32** %18, align 8
  %145 = load i64, i64* %16, align 8
  %146 = call i64 @WideCharToMultiByte(i32 %142, i32 0, i32* %143, i32 -1, i32* %144, i64 %145, i32* null, i32* null)
  %147 = load i32*, i32** %14, align 8
  %148 = call i32 @SysFreeString(i32* %147)
  %149 = load i64, i64* %16, align 8
  %150 = load i32*, i32** %18, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 %149
  store i32* %151, i32** %18, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i32*, i32** %18, align 8
  %154 = bitcast i32* %153 to i64*
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %129, %62
  %156 = load i64, i64* %10, align 8
  %157 = add i64 %156, 8
  %158 = load i64*, i64** %8, align 8
  store i64 %157, i64* %158, align 8
  %159 = load i32, i32* @S_OK, align 4
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %155, %123, %101, %91, %81, %58, %46, %30, %22
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @IUri_GetScheme(i32*, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @is_hierarchical_scheme(i64) #1

declare dso_local i32 @IUri_GetDisplayUri(i32*, i32**) #1

declare dso_local i64 @WideCharToMultiByte(i32, i32, i32*, i32, i32*, i64, i32*, i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32 @IUri_GetHost(i32*, i32**) #1

declare dso_local i32 @IUri_GetSchemeName(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
