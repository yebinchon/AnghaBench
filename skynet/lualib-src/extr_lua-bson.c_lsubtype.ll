; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_lsubtype.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_lsubtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Invalid object id\00", align 1
@lsubtype.hex = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Invalid date\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Invalid timestamp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Invalid regex\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Invalid subtype %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i64)* @lsubtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsubtype(i32* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [24 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %193 [
    i32 139, label %18
    i32 131, label %34
    i32 137, label %85
    i32 128, label %100
    i32 130, label %121
    i32 133, label %172
    i32 134, label %176
    i32 132, label %180
    i32 135, label %184
    i32 136, label %184
    i32 129, label %184
    i32 138, label %184
  ]

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @lua_upvalueindex(i32 6)
  %21 = call i32 @lua_pushvalue(i32* %19, i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i64, i64* %9, align 8
  %27 = sub i64 %26, 1
  %28 = call i32 @lua_pushlstring(i32* %22, i8* %25, i64 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @lua_pushinteger(i32* %29, i32 %32)
  store i32 3, i32* %5, align 4
  br label %197

34:                                               ; preds = %4
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 12
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 (i32*, i8*, ...) @luaL_error(i32* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %5, align 4
  br label %197

40:                                               ; preds = %34
  %41 = load i32*, i32** %8, align 8
  store i32* %41, i32** %12, align 8
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %75, %40
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 12
  br i1 %44, label %45, label %78

45:                                               ; preds = %42
  %46 = load i8*, i8** @lsubtype.hex, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %46, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = load i32, i32* %11, align 4
  %57 = mul nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 %58
  store i8 %55, i8* %59, align 1
  %60 = load i8*, i8** @lsubtype.hex, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 15
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %60, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = load i32, i32* %11, align 4
  %71 = mul nsw i32 %70, 2
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 %73
  store i8 %69, i8* %74, align 1
  br label %75

75:                                               ; preds = %45
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %42

78:                                               ; preds = %42
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @lua_upvalueindex(i32 7)
  %81 = call i32 @lua_pushvalue(i32* %79, i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %84 = call i32 @lua_pushlstring(i32* %82, i8* %83, i64 24)
  store i32 2, i32* %5, align 4
  br label %197

85:                                               ; preds = %4
  %86 = load i64, i64* %9, align 8
  %87 = icmp ne i64 %86, 4
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 (i32*, i8*, ...) @luaL_error(i32* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 %90, i32* %5, align 4
  br label %197

91:                                               ; preds = %85
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %13, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @lua_upvalueindex(i32 9)
  %96 = call i32 @lua_pushvalue(i32* %94, i32 %95)
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @lua_pushinteger(i32* %97, i32 %98)
  store i32 2, i32* %5, align 4
  br label %197

100:                                              ; preds = %4
  %101 = load i64, i64* %9, align 8
  %102 = icmp ne i64 %101, 8
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 (i32*, i8*, ...) @luaL_error(i32* %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 %105, i32* %5, align 4
  br label %197

106:                                              ; preds = %100
  %107 = load i32*, i32** %8, align 8
  store i32* %107, i32** %14, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @lua_upvalueindex(i32 8)
  %110 = call i32 @lua_pushvalue(i32* %108, i32 %109)
  %111 = load i32*, i32** %6, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @lua_pushinteger(i32* %111, i32 %114)
  %116 = load i32*, i32** %6, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @lua_pushinteger(i32* %116, i32 %119)
  store i32 3, i32* %5, align 4
  br label %197

121:                                              ; preds = %4
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, -1
  store i64 %123, i64* %9, align 8
  %124 = load i32*, i32** %8, align 8
  store i32* %124, i32** %16, align 8
  store i64 0, i64* %15, align 8
  br label %125

125:                                              ; preds = %140, %121
  %126 = load i64, i64* %15, align 8
  %127 = load i64, i64* %9, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %125
  %130 = load i32*, i32** %16, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* %15, align 8
  %133 = sub i64 %131, %132
  %134 = sub i64 %133, 1
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %143

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %15, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %15, align 8
  br label %125

143:                                              ; preds = %138, %125
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @lua_upvalueindex(i32 10)
  %146 = call i32 @lua_pushvalue(i32* %144, i32 %145)
  %147 = load i64, i64* %15, align 8
  %148 = load i64, i64* %9, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 (i32*, i8*, ...) @luaL_error(i32* %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %152, i32* %5, align 4
  br label %197

153:                                              ; preds = %143
  %154 = load i32*, i32** %6, align 8
  %155 = load i32*, i32** %16, align 8
  %156 = bitcast i32* %155 to i8*
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %15, align 8
  %159 = sub i64 %157, %158
  %160 = sub i64 %159, 1
  %161 = call i32 @lua_pushlstring(i32* %154, i8* %156, i64 %160)
  %162 = load i32*, i32** %6, align 8
  %163 = load i32*, i32** %16, align 8
  %164 = bitcast i32* %163 to i8*
  %165 = load i64, i64* %9, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i64, i64* %15, align 8
  %168 = sub i64 0, %167
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i64, i64* %15, align 8
  %171 = call i32 @lua_pushlstring(i32* %162, i8* %169, i64 %170)
  store i32 3, i32* %5, align 4
  br label %197

172:                                              ; preds = %4
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 @lua_upvalueindex(i32 11)
  %175 = call i32 @lua_pushvalue(i32* %173, i32 %174)
  store i32 1, i32* %5, align 4
  br label %197

176:                                              ; preds = %4
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @lua_upvalueindex(i32 12)
  %179 = call i32 @lua_pushvalue(i32* %177, i32 %178)
  store i32 1, i32* %5, align 4
  br label %197

180:                                              ; preds = %4
  %181 = load i32*, i32** %6, align 8
  %182 = call i32 @lua_upvalueindex(i32 4)
  %183 = call i32 @lua_pushvalue(i32* %181, i32 %182)
  store i32 1, i32* %5, align 4
  br label %197

184:                                              ; preds = %4, %4, %4, %4
  %185 = load i32*, i32** %6, align 8
  %186 = call i32 @lua_upvalueindex(i32 13)
  %187 = call i32 @lua_pushvalue(i32* %185, i32 %186)
  %188 = load i32*, i32** %6, align 8
  %189 = load i32*, i32** %8, align 8
  %190 = bitcast i32* %189 to i8*
  %191 = load i64, i64* %9, align 8
  %192 = call i32 @lua_pushlstring(i32* %188, i8* %190, i64 %191)
  store i32 2, i32* %5, align 4
  br label %197

193:                                              ; preds = %4
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i32 (i32*, i8*, ...) @luaL_error(i32* %194, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %195)
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %193, %184, %180, %176, %172, %153, %150, %106, %103, %91, %88, %78, %37, %18
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
