; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lstrlib.c_str_format.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_lstrlib.c_str_format.c"
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
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @lua_gettop(i32* %18)
  store i32 %19, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @luaL_checklstring(i32* %20, i32 %21, i64* %6)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %8, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @luaL_buffinit(i32* %26, i32* %9)
  br label %28

28:                                               ; preds = %177, %1
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %178

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* @L_ESC, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  %42 = load i8, i8* %40, align 1
  %43 = sext i8 %42 to i32
  %44 = call i32 @luaL_addchar(i32* %9, i32 %43)
  br label %177

45:                                               ; preds = %32
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* @L_ESC, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  %56 = load i8, i8* %54, align 1
  %57 = sext i8 %56 to i32
  %58 = call i32 @luaL_addchar(i32* %9, i32 %57)
  br label %176

59:                                               ; preds = %45
  %60 = load i32, i32* @MAX_FORMAT, align 4
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %10, align 8
  %63 = alloca i8, i64 %61, align 16
  store i64 %61, i64* %11, align 8
  %64 = load i32, i32* @MAX_ITEM, align 4
  %65 = call i8* @luaL_prepbuffsize(i32* %9, i32 %64)
  store i8* %65, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @luaL_argerror(i32* %71, i32 %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %59
  %75 = load i32*, i32** %3, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i8* @scanformat(i32* %75, i8* %76, i8* %63)
  store i8* %77, i8** %7, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  %80 = load i8, i8* %78, align 1
  %81 = sext i8 %80 to i32
  switch i32 %81, label %158 [
    i32 99, label %82
    i32 100, label %90
    i32 105, label %90
    i32 111, label %90
    i32 117, label %90
    i32 120, label %90
    i32 88, label %90
    i32 97, label %100
    i32 65, label %100
    i32 101, label %110
    i32 69, label %110
    i32 102, label %110
    i32 103, label %110
    i32 71, label %110
    i32 113, label %119
    i32 115, label %123
  ]

82:                                               ; preds = %74
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* @MAX_ITEM, align 4
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i8* @luaL_checkinteger(i32* %85, i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = call i32 (i8*, i32, i8*, ...) @l_sprintf(i8* %83, i32 %84, i8* %63, i32 %88)
  store i32 %89, i32* %13, align 4
  br label %164

90:                                               ; preds = %74, %74, %74, %74, %74, %74
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i8* @luaL_checkinteger(i32* %91, i32 %92)
  store i8* %93, i8** %14, align 8
  %94 = load i32, i32* @LUA_INTEGER_FRMLEN, align 4
  %95 = call i32 @addlenmod(i8* %63, i32 %94)
  %96 = load i8*, i8** %12, align 8
  %97 = load i32, i32* @MAX_ITEM, align 4
  %98 = load i8*, i8** %14, align 8
  %99 = call i32 (i8*, i32, i8*, ...) @l_sprintf(i8* %96, i32 %97, i8* %63, i8* %98)
  store i32 %99, i32* %13, align 4
  br label %164

100:                                              ; preds = %74, %74
  %101 = load i32, i32* @LUA_NUMBER_FRMLEN, align 4
  %102 = call i32 @addlenmod(i8* %63, i32 %101)
  %103 = load i32*, i32** %3, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load i32, i32* @MAX_ITEM, align 4
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i8* @luaL_checknumber(i32* %106, i32 %107)
  %109 = call i32 @lua_number2strx(i32* %103, i8* %104, i32 %105, i8* %63, i8* %108)
  store i32 %109, i32* %13, align 4
  br label %164

110:                                              ; preds = %74, %74, %74, %74, %74
  %111 = load i32, i32* @LUA_NUMBER_FRMLEN, align 4
  %112 = call i32 @addlenmod(i8* %63, i32 %111)
  %113 = load i8*, i8** %12, align 8
  %114 = load i32, i32* @MAX_ITEM, align 4
  %115 = load i32*, i32** %3, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i8* @luaL_checknumber(i32* %115, i32 %116)
  %118 = call i32 (i8*, i32, i8*, ...) @l_sprintf(i8* %113, i32 %114, i8* %63, i8* %117)
  store i32 %118, i32* %13, align 4
  br label %164

119:                                              ; preds = %74
  %120 = load i32*, i32** %3, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @addliteral(i32* %120, i32* %9, i32 %121)
  br label %164

123:                                              ; preds = %74
  %124 = load i32*, i32** %3, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i8* @luaL_tolstring(i32* %124, i32 %125, i64* %15)
  store i8* %126, i8** %16, align 8
  %127 = getelementptr inbounds i8, i8* %63, i64 2
  %128 = load i8, i8* %127, align 2
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = call i32 @luaL_addvalue(i32* %9)
  br label %157

133:                                              ; preds = %123
  %134 = load i32*, i32** %3, align 8
  %135 = load i64, i64* %15, align 8
  %136 = load i8*, i8** %16, align 8
  %137 = call i64 @strlen(i8* %136)
  %138 = icmp eq i64 %135, %137
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @luaL_argcheck(i32* %134, i32 %139, i32 %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %142 = call i32 @strchr(i8* %63, i8 signext 46)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %133
  %145 = load i64, i64* %15, align 8
  %146 = icmp uge i64 %145, 100
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 @luaL_addvalue(i32* %9)
  br label %156

149:                                              ; preds = %144, %133
  %150 = load i8*, i8** %12, align 8
  %151 = load i32, i32* @MAX_ITEM, align 4
  %152 = load i8*, i8** %16, align 8
  %153 = call i32 (i8*, i32, i8*, ...) @l_sprintf(i8* %150, i32 %151, i8* %63, i8* %152)
  store i32 %153, i32* %13, align 4
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 @lua_pop(i32* %154, i32 1)
  br label %156

156:                                              ; preds = %149, %147
  br label %157

157:                                              ; preds = %156, %131
  br label %164

158:                                              ; preds = %74
  %159 = load i32*, i32** %3, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 -1
  %162 = load i8, i8* %161, align 1
  %163 = call i32 @luaL_error(i32* %159, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8 signext %162)
  store i32 %163, i32* %2, align 4
  store i32 1, i32* %17, align 4
  br label %172

164:                                              ; preds = %157, %119, %110, %100, %90, %82
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @MAX_ITEM, align 4
  %167 = icmp slt i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @lua_assert(i32 %168)
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @luaL_addsize(i32* %9, i32 %170)
  store i32 0, i32* %17, align 4
  br label %172

172:                                              ; preds = %164, %158
  %173 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %173)
  %174 = load i32, i32* %17, align 4
  switch i32 %174, label %182 [
    i32 0, label %175
    i32 1, label %180
  ]

175:                                              ; preds = %172
  br label %176

176:                                              ; preds = %175, %53
  br label %177

177:                                              ; preds = %176, %39
  br label %28

178:                                              ; preds = %28
  %179 = call i32 @luaL_pushresult(i32* %9)
  store i32 1, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %172
  %181 = load i32, i32* %2, align 4
  ret i32 %181

182:                                              ; preds = %172
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

declare dso_local i8* @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @addlenmod(i8*, i32) #1

declare dso_local i32 @lua_number2strx(i32*, i8*, i32, i8*, i8*) #1

declare dso_local i8* @luaL_checknumber(i32*, i32) #1

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
