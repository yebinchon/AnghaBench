; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lstrlib.c_str_find_aux.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lstrlib.c_str_find_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @str_find_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_find_aux(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @luaL_checklstring(i32* %16, i32 1, i64* %6)
  store i8* %17, i8** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @luaL_checklstring(i32* %18, i32 2, i64* %7)
  store i8* %19, i8** %9, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @luaL_optinteger(i32* %20, i32 3, i32 1)
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @posrelat(i32 %21, i64 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %37

27:                                               ; preds = %2
  %28 = load i32, i32* %10, align 4
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  %31 = add nsw i32 %30, 1
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @lua_pushnil(i32* %34)
  store i32 1, i32* %3, align 4
  br label %163

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %37
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @lua_toboolean(i32* %41, i32 4)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @nospecials(i8* %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %86

49:                                               ; preds = %44, %40
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = getelementptr inbounds i8, i8* %53, i64 -1
  %55 = load i64, i64* %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %55, %57
  %59 = add i64 %58, 1
  %60 = load i8*, i8** %9, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i8* @lmemfind(i8* %54, i64 %59, i8* %60, i64 %61)
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %85

65:                                               ; preds = %49
  %66 = load i32*, i32** %4, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = add nsw i64 %71, 1
  %73 = trunc i64 %72 to i32
  %74 = call i32 @lua_pushinteger(i32* %66, i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @lua_pushinteger(i32* %75, i32 %83)
  store i32 2, i32* %3, align 4
  br label %163

85:                                               ; preds = %49
  br label %160

86:                                               ; preds = %44, %37
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = getelementptr inbounds i8, i8* %90, i64 -1
  store i8* %91, i8** %13, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 94
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %86
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %9, align 8
  %102 = load i64, i64* %7, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %99, %86
  %105 = load i32*, i32** %4, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @prepstate(%struct.TYPE_6__* %12, i32* %105, i8* %106, i64 %107, i8* %108, i64 %109)
  br label %111

111:                                              ; preds = %157, %104
  %112 = call i32 @reprepstate(%struct.TYPE_6__* %12)
  %113 = load i8*, i8** %13, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = call i8* @match(%struct.TYPE_6__* %12, i8* %113, i8* %114)
  store i8* %115, i8** %15, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %144

117:                                              ; preds = %111
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %117
  %121 = load i32*, i32** %4, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = add nsw i64 %126, 1
  %128 = trunc i64 %127 to i32
  %129 = call i32 @lua_pushinteger(i32* %121, i32 %128)
  %130 = load i32*, i32** %4, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = call i32 @lua_pushinteger(i32* %130, i32 %136)
  %138 = call i32 @push_captures(%struct.TYPE_6__* %12, i8* null, i8* null)
  %139 = add nsw i32 %138, 2
  store i32 %139, i32* %3, align 4
  br label %163

140:                                              ; preds = %117
  %141 = load i8*, i8** %13, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = call i32 @push_captures(%struct.TYPE_6__* %12, i8* %141, i8* %142)
  store i32 %143, i32* %3, align 4
  br label %163

144:                                              ; preds = %111
  br label %145

145:                                              ; preds = %144
  %146 = load i8*, i8** %13, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = icmp ult i8* %146, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %145
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  br label %157

157:                                              ; preds = %153, %145
  %158 = phi i1 [ false, %145 ], [ %156, %153 ]
  br i1 %158, label %111, label %159

159:                                              ; preds = %157
  br label %160

160:                                              ; preds = %159, %85
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @lua_pushnil(i32* %161)
  store i32 1, i32* %3, align 4
  br label %163

163:                                              ; preds = %160, %140, %120, %65, %33
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @posrelat(i32, i64) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_toboolean(i32*, i32) #1

declare dso_local i64 @nospecials(i8*, i64) #1

declare dso_local i8* @lmemfind(i8*, i64, i8*, i64) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @prepstate(%struct.TYPE_6__*, i32*, i8*, i64, i8*, i64) #1

declare dso_local i32 @reprepstate(%struct.TYPE_6__*) #1

declare dso_local i8* @match(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @push_captures(%struct.TYPE_6__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
