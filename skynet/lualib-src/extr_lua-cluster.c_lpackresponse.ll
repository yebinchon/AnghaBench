; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_lpackresponse.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_lpackresponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TSTRING = common dso_local global i64 0, align 8
@MULTI_PART = common dso_local global i64 0, align 8
@TEMP_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lpackresponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpackresponse(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @luaL_checkinteger(i32* %16, i32 1)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_toboolean(i32* %19, i32 2)
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @lua_type(i32* %21, i32 3)
  %23 = load i64, i64* @LUA_TSTRING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @lua_tolstring(i32* %26, i32 3, i64* %7)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %6, align 8
  br label %34

29:                                               ; preds = %1
  %30 = load i32*, i32** %3, align 8
  %31 = call i8* @lua_touserdata(i32* %30, i32 3)
  store i8* %31, i8** %6, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @luaL_checkinteger(i32* %32, i32 4)
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @MULTI_PART, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @MULTI_PART, align 8
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %41, %37
  br label %133

44:                                               ; preds = %34
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @MULTI_PART, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %132

48:                                               ; preds = %44
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, 1
  %51 = load i64, i64* @MULTI_PART, align 8
  %52 = udiv i64 %50, %51
  %53 = add i64 %52, 1
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i32 @lua_createtable(i32* %55, i32 %57, i32 0)
  %59 = load i32, i32* @TEMP_LENGTH, align 4
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %9, align 8
  %62 = alloca i32, i64 %60, align 16
  store i64 %60, i64* %10, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @fill_header(i32* %63, i32* %62, i64 9)
  %65 = getelementptr inbounds i32, i32* %62, i64 2
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @fill_uint32(i32* %65, i32 %66)
  %68 = getelementptr inbounds i32, i32* %62, i64 6
  store i32 2, i32* %68, align 8
  %69 = getelementptr inbounds i32, i32* %62, i64 7
  %70 = load i64, i64* %7, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @fill_uint32(i32* %69, i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = bitcast i32* %62 to i8*
  %75 = call i32 @lua_pushlstring(i32* %73, i8* %74, i64 11)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @lua_rawseti(i32* %76, i32 -2, i32 1)
  %78 = load i8*, i8** %6, align 8
  store i8* %78, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %127, %48
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %130

83:                                               ; preds = %79
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @MULTI_PART, align 8
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i64, i64* @MULTI_PART, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %13, align 4
  %90 = getelementptr inbounds i32, i32* %62, i64 6
  store i32 3, i32* %90, align 8
  br label %95

91:                                               ; preds = %83
  %92 = load i64, i64* %7, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %13, align 4
  %94 = getelementptr inbounds i32, i32* %62, i64 6
  store i32 4, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32*, i32** %3, align 8
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 5
  %99 = sext i32 %98 to i64
  %100 = call i32 @fill_header(i32* %96, i32* %62, i64 %99)
  %101 = getelementptr inbounds i32, i32* %62, i64 2
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @fill_uint32(i32* %101, i32 %102)
  %104 = getelementptr inbounds i32, i32* %62, i64 7
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = call i32 @memcpy(i32* %104, i8* %105, i64 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = bitcast i32* %62 to i8*
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 7
  %113 = sext i32 %112 to i64
  %114 = call i32 @lua_pushlstring(i32* %109, i8* %110, i64 %113)
  %115 = load i32*, i32** %3, align 8
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 2
  %118 = call i32 @lua_rawseti(i32* %115, i32 -2, i32 %117)
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %7, align 8
  %122 = sub i64 %121, %120
  store i64 %122, i64* %7, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i8*, i8** %11, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %11, align 8
  br label %127

127:                                              ; preds = %95
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %79

130:                                              ; preds = %79
  store i32 1, i32* %2, align 4
  %131 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %131)
  br label %157

132:                                              ; preds = %44
  br label %133

133:                                              ; preds = %132, %43
  %134 = load i32, i32* @TEMP_LENGTH, align 4
  %135 = zext i32 %134 to i64
  %136 = call i8* @llvm.stacksave()
  store i8* %136, i8** %14, align 8
  %137 = alloca i32, i64 %135, align 16
  store i64 %135, i64* %15, align 8
  %138 = load i32*, i32** %3, align 8
  %139 = load i64, i64* %7, align 8
  %140 = add i64 %139, 5
  %141 = call i32 @fill_header(i32* %138, i32* %137, i64 %140)
  %142 = getelementptr inbounds i32, i32* %137, i64 2
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @fill_uint32(i32* %142, i32 %143)
  %145 = load i32, i32* %5, align 4
  %146 = getelementptr inbounds i32, i32* %137, i64 6
  store i32 %145, i32* %146, align 8
  %147 = getelementptr inbounds i32, i32* %137, i64 7
  %148 = load i8*, i8** %6, align 8
  %149 = load i64, i64* %7, align 8
  %150 = call i32 @memcpy(i32* %147, i8* %148, i64 %149)
  %151 = load i32*, i32** %3, align 8
  %152 = bitcast i32* %137 to i8*
  %153 = load i64, i64* %7, align 8
  %154 = add i64 %153, 7
  %155 = call i32 @lua_pushlstring(i32* %151, i8* %152, i64 %154)
  store i32 1, i32* %2, align 4
  %156 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %156)
  br label %157

157:                                              ; preds = %133, %130
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i8* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fill_header(i32*, i32*, i64) #1

declare dso_local i32 @fill_uint32(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
