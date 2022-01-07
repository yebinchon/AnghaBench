; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lstrlib.c_str_format.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lstrlib.c_str_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L_ESC = common dso_local global i8 0, align 1
@MAX_FORMAT = common dso_local global i32 0, align 4
@MAX_ITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@LUA_INTEGER_FRMLEN = common dso_local global i32 0, align 4
@LUA_NUMBER_FRMLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"string contains zeros\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid option '%%%c' to 'format'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_format(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @lua_gettop(i32* %19)
  store i32 %20, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @luaL_checklstring(i32* %21, i32 %22, i64* %6)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %8, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @luaL_buffinit(i32* %27, i32* %9)
  br label %29

29:                                               ; preds = %182, %1
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %33, label %183

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @L_ESC, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  %45 = call i32 @luaL_addchar(i32* %9, i32 %44)
  br label %182

46:                                               ; preds = %33
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @L_ESC, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %7, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  %59 = call i32 @luaL_addchar(i32* %9, i32 %58)
  br label %181

60:                                               ; preds = %46
  %61 = load i32, i32* @MAX_FORMAT, align 4
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %10, align 8
  %64 = alloca i8, i64 %62, align 16
  store i64 %62, i64* %11, align 8
  %65 = load i32, i32* @MAX_ITEM, align 4
  %66 = call i8* @luaL_prepbuffsize(i32* %9, i32 %65)
  store i8* %66, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @luaL_argerror(i32* %72, i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %60
  %76 = load i32*, i32** %3, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i8* @scanformat(i32* %76, i8* %77, i8* %64)
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  %81 = load i8, i8* %79, align 1
  %82 = sext i8 %81 to i32
  switch i32 %82, label %163 [
    i32 99, label %83
    i32 100, label %91
    i32 105, label %91
    i32 111, label %91
    i32 117, label %91
    i32 120, label %91
    i32 88, label %91
    i32 97, label %102
    i32 65, label %102
    i32 101, label %112
    i32 69, label %112
    i32 102, label %112
    i32 103, label %112
    i32 71, label %112
    i32 113, label %124
    i32 115, label %128
  ]

83:                                               ; preds = %75
  %84 = load i8*, i8** %12, align 8
  %85 = load i32, i32* @MAX_ITEM, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @luaL_checkinteger(i32* %86, i32 %87)
  %89 = trunc i64 %88 to i32
  %90 = call i32 (i8*, i32, i8*, ...) @l_sprintf(i8* %84, i32 %85, i8* %64, i32 %89)
  store i32 %90, i32* %13, align 4
  br label %169

91:                                               ; preds = %75, %75, %75, %75, %75, %75
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i64 @luaL_checkinteger(i32* %92, i32 %93)
  store i64 %94, i64* %14, align 8
  %95 = load i32, i32* @LUA_INTEGER_FRMLEN, align 4
  %96 = call i32 @addlenmod(i8* %64, i32 %95)
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* @MAX_ITEM, align 4
  %99 = load i64, i64* %14, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 (i8*, i32, i8*, ...) @l_sprintf(i8* %97, i32 %98, i8* %64, i8* %100)
  store i32 %101, i32* %13, align 4
  br label %169

102:                                              ; preds = %75, %75
  %103 = load i32, i32* @LUA_NUMBER_FRMLEN, align 4
  %104 = call i32 @addlenmod(i8* %64, i32 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i32, i32* @MAX_ITEM, align 4
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @luaL_checknumber(i32* %108, i32 %109)
  %111 = call i32 @lua_number2strx(i32* %105, i8* %106, i32 %107, i8* %64, i32 %110)
  store i32 %111, i32* %13, align 4
  br label %169

112:                                              ; preds = %75, %75, %75, %75, %75
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @luaL_checknumber(i32* %113, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* @LUA_NUMBER_FRMLEN, align 4
  %117 = call i32 @addlenmod(i8* %64, i32 %116)
  %118 = load i8*, i8** %12, align 8
  %119 = load i32, i32* @MAX_ITEM, align 4
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 (i8*, i32, i8*, ...) @l_sprintf(i8* %118, i32 %119, i8* %64, i8* %122)
  store i32 %123, i32* %13, align 4
  br label %169

124:                                              ; preds = %75
  %125 = load i32*, i32** %3, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @addliteral(i32* %125, i32* %9, i32 %126)
  br label %169

128:                                              ; preds = %75
  %129 = load i32*, i32** %3, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i8* @luaL_tolstring(i32* %129, i32 %130, i64* %16)
  store i8* %131, i8** %17, align 8
  %132 = getelementptr inbounds i8, i8* %64, i64 2
  %133 = load i8, i8* %132, align 2
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = call i32 @luaL_addvalue(i32* %9)
  br label %162

138:                                              ; preds = %128
  %139 = load i32*, i32** %3, align 8
  %140 = load i64, i64* %16, align 8
  %141 = load i8*, i8** %17, align 8
  %142 = call i64 @strlen(i8* %141)
  %143 = icmp eq i64 %140, %142
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @luaL_argcheck(i32* %139, i32 %144, i32 %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %147 = call i32 @strchr(i8* %64, i8 signext 46)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %138
  %150 = load i64, i64* %16, align 8
  %151 = icmp uge i64 %150, 100
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 @luaL_addvalue(i32* %9)
  br label %161

154:                                              ; preds = %149, %138
  %155 = load i8*, i8** %12, align 8
  %156 = load i32, i32* @MAX_ITEM, align 4
  %157 = load i8*, i8** %17, align 8
  %158 = call i32 (i8*, i32, i8*, ...) @l_sprintf(i8* %155, i32 %156, i8* %64, i8* %157)
  store i32 %158, i32* %13, align 4
  %159 = load i32*, i32** %3, align 8
  %160 = call i32 @lua_pop(i32* %159, i32 1)
  br label %161

161:                                              ; preds = %154, %152
  br label %162

162:                                              ; preds = %161, %136
  br label %169

163:                                              ; preds = %75
  %164 = load i32*, i32** %3, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 -1
  %167 = load i8, i8* %166, align 1
  %168 = call i32 @luaL_error(i32* %164, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8 signext %167)
  store i32 %168, i32* %2, align 4
  store i32 1, i32* %18, align 4
  br label %177

169:                                              ; preds = %162, %124, %112, %102, %91, %83
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* @MAX_ITEM, align 4
  %172 = icmp slt i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @lua_assert(i32 %173)
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @luaL_addsize(i32* %9, i32 %175)
  store i32 0, i32* %18, align 4
  br label %177

177:                                              ; preds = %169, %163
  %178 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %18, align 4
  switch i32 %179, label %187 [
    i32 0, label %180
    i32 1, label %185
  ]

180:                                              ; preds = %177
  br label %181

181:                                              ; preds = %180, %54
  br label %182

182:                                              ; preds = %181, %40
  br label %29

183:                                              ; preds = %29
  %184 = call i32 @luaL_pushresult(i32* %9)
  store i32 1, i32* %2, align 4
  br label %185

185:                                              ; preds = %183, %177
  %186 = load i32, i32* %2, align 4
  ret i32 %186

187:                                              ; preds = %177
  unreachable
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @luaL_prepbuffsize(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i8* @scanformat(i32*, i8*, i8*) #1

declare dso_local i32 @l_sprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @addlenmod(i8*, i32) #1

declare dso_local i32 @lua_number2strx(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @luaL_checknumber(i32*, i32) #1

declare dso_local i32 @addliteral(i32*, i32*, i32) #1

declare dso_local i8* @luaL_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_addvalue(i32*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8 signext) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @luaL_addsize(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
