; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_output.c_ngx_http_lua_copy_str_in_table.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_output.c_ngx_http_lua_copy_str_in_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"impossible to reach here\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ngx_http_lua_copy_str_in_table(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @lua_gettop(i32* %17)
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %16, %3
  store i32 0, i32* %9, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @lua_pushnil(i32* %23)
  br label %25

25:                                               ; preds = %40, %22
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @lua_next(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = call double @lua_tonumber(i32* %31, i32 -2)
  store double %32, double* %8, align 8
  %33 = load double, double* %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sitofp i32 %34 to double
  %36 = fcmp ogt double %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load double, double* %8, align 8
  %39 = fptosi double %38 to i32
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @lua_pop(i32* %41, i32 1)
  br label %25

43:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  br label %44

44:                                               ; preds = %115, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %118

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @lua_rawgeti(i32* %49, i32 %50, i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @lua_type(i32* %53, i32 -1)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  switch i32 %55, label %109 [
    i32 130, label %56
    i32 129, label %56
    i32 131, label %64
    i32 133, label %71
    i32 128, label %96
    i32 132, label %100
  ]

56:                                               ; preds = %48, %48
  %57 = load i32*, i32** %5, align 8
  %58 = call i64 @lua_tolstring(i32* %57, i32 -1, i64* %12)
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32* @ngx_copy(i32* %60, i32* %61, i64 %62)
  store i32* %63, i32** %7, align 8
  br label %112

64:                                               ; preds = %48
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %7, align 8
  store i32 110, i32* %65, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %7, align 8
  store i32 105, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %7, align 8
  store i32 108, i32* %69, align 4
  br label %112

71:                                               ; preds = %48
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @lua_toboolean(i32* %72, i32 -1)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %7, align 8
  store i32 116, i32* %76, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %7, align 8
  store i32 114, i32* %78, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %7, align 8
  store i32 117, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %7, align 8
  store i32 101, i32* %82, align 4
  br label %95

84:                                               ; preds = %71
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %7, align 8
  store i32 102, i32* %85, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %7, align 8
  store i32 97, i32* %87, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %7, align 8
  store i32 108, i32* %89, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %7, align 8
  store i32 115, i32* %91, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %7, align 8
  store i32 101, i32* %93, align 4
  br label %95

95:                                               ; preds = %84, %75
  br label %112

96:                                               ; preds = %48
  %97 = load i32*, i32** %5, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i32* @ngx_http_lua_copy_str_in_table(i32* %97, i32 -1, i32* %98)
  store i32* %99, i32** %7, align 8
  br label %112

100:                                              ; preds = %48
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %7, align 8
  store i32 110, i32* %101, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %7, align 8
  store i32 117, i32* %103, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %7, align 8
  store i32 108, i32* %105, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %7, align 8
  store i32 108, i32* %107, align 4
  br label %112

109:                                              ; preds = %48
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @luaL_error(i32* %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %120

112:                                              ; preds = %100, %96, %95, %64, %56
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @lua_pop(i32* %113, i32 1)
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %44

118:                                              ; preds = %44
  %119 = load i32*, i32** %7, align 8
  store i32* %119, i32** %4, align 8
  br label %120

120:                                              ; preds = %118, %109
  %121 = load i32*, i32** %4, align 8
  ret i32* %121
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local double @lua_tonumber(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32* @ngx_copy(i32*, i32*, i64) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
