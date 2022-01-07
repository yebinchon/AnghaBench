; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_lstrlib.c_str_unpack.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_lstrlib.c_str_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"initial position out of string\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"data string too short\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"too many results\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_unpack(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i8* @luaL_checkstring(i32* %17, i32 1)
  store i8* %18, i8** %4, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i8* @luaL_checklstring(i32* %19, i32 2, i64* %5)
  store i8* %20, i8** %6, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @luaL_optinteger(i32* %21, i32 3, i32 1)
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @posrelat(i32 %22, i64 %23)
  %25 = sub i64 %24, 1
  store i64 %25, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ule i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @luaL_argcheck(i32* %26, i32 %30, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @initheader(i32* %32, %struct.TYPE_5__* %3)
  br label %34

34:                                               ; preds = %179, %1
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %184

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @getdetails(%struct.TYPE_5__* %3, i64 %40, i8** %4, i32* %9, i32* %10)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %43, %45
  %47 = load i64, i64* %7, align 8
  %48 = xor i64 %47, -1
  %49 = icmp ugt i64 %46, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %39
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = load i64, i64* %5, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50, %39
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @luaL_argerror(i32* %61, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %50
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %7, align 8
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @luaL_checkstack(i32* %68, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %11, align 4
  switch i32 %72, label %179 [
    i32 134, label %73
    i32 129, label %73
    i32 135, label %88
    i32 136, label %119
    i32 130, label %127
    i32 128, label %159
    i32 132, label %176
    i32 131, label %176
    i32 133, label %176
  ]

73:                                               ; preds = %63, %63
  %74 = load i32*, i32** %2, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 134
  %83 = zext i1 %82 to i32
  %84 = call i64 @unpackint(i32* %74, i8* %77, i32 %79, i32 %80, i32 %83)
  store i64 %84, i64* %12, align 8
  %85 = load i32*, i32** %2, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @lua_pushinteger(i32* %85, i64 %86)
  br label %179

88:                                               ; preds = %63
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %90 = load volatile i32, i32* %89, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i32, i32* %9, align 4
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @copywithendian(i32 %90, i8* %93, i32 %94, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp eq i64 %99, 4
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %103 = load volatile i32, i32* %102, align 4
  store i32 %103, i32* %14, align 4
  br label %115

104:                                              ; preds = %88
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp eq i64 %106, 4
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %110 = load volatile i32, i32* %109, align 4
  store i32 %110, i32* %14, align 4
  br label %114

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %113 = load volatile i32, i32* %112, align 4
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %101
  %116 = load i32*, i32** %2, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @lua_pushnumber(i32* %116, i32 %117)
  br label %179

119:                                              ; preds = %63
  %120 = load i32*, i32** %2, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load i64, i64* %7, align 8
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = call i32 @lua_pushlstring(i32* %120, i8* %123, i64 %125)
  br label %179

127:                                              ; preds = %63
  %128 = load i32*, i32** %2, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i64 @unpackint(i32* %128, i8* %131, i32 %133, i32 %134, i32 0)
  store i64 %135, i64* %15, align 8
  %136 = load i32*, i32** %2, align 8
  %137 = load i64, i64* %7, align 8
  %138 = load i64, i64* %15, align 8
  %139 = add i64 %137, %138
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %139, %141
  %143 = load i64, i64* %5, align 8
  %144 = icmp ule i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @luaL_argcheck(i32* %136, i32 %145, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i32*, i32** %2, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = load i64, i64* %7, align 8
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i64, i64* %15, align 8
  %155 = call i32 @lua_pushlstring(i32* %147, i8* %153, i64 %154)
  %156 = load i64, i64* %15, align 8
  %157 = load i64, i64* %7, align 8
  %158 = add i64 %157, %156
  store i64 %158, i64* %7, align 8
  br label %179

159:                                              ; preds = %63
  %160 = load i8*, i8** %6, align 8
  %161 = load i64, i64* %7, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = call i64 @strlen(i8* %162)
  %164 = trunc i64 %163 to i32
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %16, align 8
  %166 = load i32*, i32** %2, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = load i64, i64* %7, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  %170 = load i64, i64* %16, align 8
  %171 = call i32 @lua_pushlstring(i32* %166, i8* %169, i64 %170)
  %172 = load i64, i64* %16, align 8
  %173 = add i64 %172, 1
  %174 = load i64, i64* %7, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %7, align 8
  br label %179

176:                                              ; preds = %63, %63, %63
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %63, %176, %159, %127, %119, %115, %73
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %7, align 8
  %183 = add i64 %182, %181
  store i64 %183, i64* %7, align 8
  br label %34

184:                                              ; preds = %34
  %185 = load i32*, i32** %2, align 8
  %186 = load i64, i64* %7, align 8
  %187 = add i64 %186, 1
  %188 = call i32 @lua_pushinteger(i32* %185, i64 %187)
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  ret i32 %190
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @posrelat(i32, i64) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @initheader(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @getdetails(%struct.TYPE_5__*, i64, i8**, i32*, i32*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i64 @unpackint(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

declare dso_local i32 @copywithendian(i32, i8*, i32, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
