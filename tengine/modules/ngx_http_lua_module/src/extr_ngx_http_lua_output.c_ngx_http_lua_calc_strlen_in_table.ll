; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_output.c_ngx_http_lua_calc_strlen_in_table.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_output.c_ngx_http_lua_calc_strlen_in_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"table index: %d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"key type: %s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"key value: %d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"non-array table found\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"bad data type %s found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_calc_strlen_in_table(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @lua_gettop(i32* %20)
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %19, %4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %11, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @lua_pushnil(i32* %28)
  br label %30

30:                                               ; preds = %63, %25
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @lua_next(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @luaL_typename(i32* %36, i32 -2)
  %38 = call i32 @dd(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @lua_type(i32* %39, i32 -2)
  %41 = icmp eq i32 %40, 130
  br i1 %41, label %42, label %67

42:                                               ; preds = %35
  %43 = load i32*, i32** %6, align 8
  %44 = call double @lua_tonumber(i32* %43, i32 -2)
  store double %44, double* %10, align 8
  %45 = load double, double* %10, align 8
  %46 = fptosi double %45 to i32
  %47 = call i32 @dd(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load double, double* %10, align 8
  %49 = call double @llvm.floor.f64(double %48)
  %50 = load double, double* %10, align 8
  %51 = fcmp oeq double %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %42
  %53 = load double, double* %10, align 8
  %54 = fcmp oge double %53, 1.000000e+00
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load double, double* %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sitofp i32 %57 to double
  %59 = fcmp ogt double %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load double, double* %10, align 8
  %62 = fptosi double %61 to i32
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @lua_pop(i32* %64, i32 1)
  br label %30

66:                                               ; preds = %52, %42
  br label %67

67:                                               ; preds = %66, %35
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @lua_pop(i32* %68, i32 2)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @luaL_argerror(i32* %70, i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %152

73:                                               ; preds = %30
  store i64 0, i64* %14, align 8
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %147, %73
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %150

78:                                               ; preds = %74
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @lua_rawgeti(i32* %79, i32 %80, i32 %81)
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @lua_type(i32* %83, i32 -1)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  switch i32 %85, label %133 [
    i32 130, label %86
    i32 129, label %86
    i32 131, label %92
    i32 133, label %99
    i32 128, label %114
    i32 132, label %121
  ]

86:                                               ; preds = %78, %78
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @lua_tolstring(i32* %87, i32 -1, i64* %15)
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %14, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %14, align 8
  br label %144

92:                                               ; preds = %78
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %134

96:                                               ; preds = %92
  %97 = load i64, i64* %14, align 8
  %98 = add i64 %97, 3
  store i64 %98, i64* %14, align 8
  br label %144

99:                                               ; preds = %78
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %134

103:                                              ; preds = %99
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @lua_toboolean(i32* %104, i32 -1)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i64, i64* %14, align 8
  %109 = add i64 %108, 4
  store i64 %109, i64* %14, align 8
  br label %113

110:                                              ; preds = %103
  %111 = load i64, i64* %14, align 8
  %112 = add i64 %111, 5
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %110, %107
  br label %144

114:                                              ; preds = %78
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @ngx_http_lua_calc_strlen_in_table(i32* %115, i32 -1, i32 %116, i32 %117)
  %119 = load i64, i64* %14, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %14, align 8
  br label %144

121:                                              ; preds = %78
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %134

125:                                              ; preds = %121
  %126 = load i32*, i32** %6, align 8
  %127 = call i32* @lua_touserdata(i32* %126, i32 -1)
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i64, i64* %14, align 8
  %131 = add i64 %130, 4
  store i64 %131, i64* %14, align 8
  br label %144

132:                                              ; preds = %125
  br label %147

133:                                              ; preds = %78
  br label %134

134:                                              ; preds = %133, %124, %102, %95
  %135 = load i32*, i32** %6, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @lua_typename(i32* %136, i32 %137)
  %139 = call i8* @lua_pushfstring(i32* %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  store i8* %139, i8** %16, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i8*, i8** %16, align 8
  %143 = call i64 @luaL_argerror(i32* %140, i32 %141, i8* %142)
  store i64 %143, i64* %5, align 8
  br label %152

144:                                              ; preds = %129, %114, %113, %96, %86
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @lua_pop(i32* %145, i32 1)
  br label %147

147:                                              ; preds = %144, %132
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %74

150:                                              ; preds = %74
  %151 = load i64, i64* %14, align 8
  store i64 %151, i64* %5, align 8
  br label %152

152:                                              ; preds = %150, %134, %67
  %153 = load i64, i64* %5, align 8
  ret i64 %153
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @dd(i8*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local double @lua_tonumber(i32*, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32* @lua_touserdata(i32*, i32) #1

declare dso_local i8* @lua_pushfstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
