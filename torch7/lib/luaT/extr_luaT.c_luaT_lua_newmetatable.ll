; ModuleID = '/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_newmetatable.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/luaT/extr_luaT.c_luaT_lua_newmetatable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"parent class name or nil expected\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"constructor function or nil expected\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"destructor function or nil expected\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"factory function or nil expected\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"module table or nil expected\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"while creating metatable %s: bad argument #1 (%s is an invalid module name)\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@luaT_mt__index = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@luaT_mt__newindex = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"__typename\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"__metatable\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"__version\00", align 1
@luaT_mt__tostring = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@luaT_mt__add = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"__add\00", align 1
@luaT_mt__sub = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"__sub\00", align 1
@luaT_mt__mul = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"__mul\00", align 1
@luaT_mt__div = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"__div\00", align 1
@luaT_mt__mod = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"__mod\00", align 1
@luaT_mt__pow = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"__pow\00", align 1
@luaT_mt__unm = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"__unm\00", align 1
@luaT_mt__concat = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"__concat\00", align 1
@luaT_mt__len = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@luaT_mt__eq = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"__eq\00", align 1
@luaT_mt__lt = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"__lt\00", align 1
@luaT_mt__le = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"__le\00", align 1
@luaT_mt__call = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"__call\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"class %s has been already assigned a parent class\0A\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"bad argument #2 (invalid parent class name %s)\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"%s has been already assigned a destructor\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"__factory\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"%s has been already assigned a factory\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"__constructor\00", align 1
@luaT_cmt__newindex = common dso_local global i32 0, align 4
@luaT_cmt__call = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"__new\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"%s has been already assigned a constructor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaT_lua_newmetatable(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @luaL_checkstring(i32* %7, i32 1)
  store i8* %8, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_settop(i32* %9, i32 6)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @lua_isnoneornil(i32* %12, i32 2)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @lua_isstring(i32* %16, i32 2)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %1
  %20 = phi i1 [ true, %1 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @luaL_argcheck(i32* %11, i32 %21, i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %2, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @lua_isnoneornil(i32* %24, i32 3)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @lua_isfunction(i32* %28, i32 3)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %19
  %32 = phi i1 [ true, %19 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @luaL_argcheck(i32* %23, i32 %33, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @lua_isnoneornil(i32* %36, i32 4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = load i32*, i32** %2, align 8
  %41 = call i64 @lua_isfunction(i32* %40, i32 4)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %39, %31
  %44 = phi i1 [ true, %31 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @luaL_argcheck(i32* %35, i32 %45, i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32*, i32** %2, align 8
  %48 = load i32*, i32** %2, align 8
  %49 = call i64 @lua_isnoneornil(i32* %48, i32 5)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load i32*, i32** %2, align 8
  %53 = call i64 @lua_isfunction(i32* %52, i32 5)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %51, %43
  %56 = phi i1 [ true, %43 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @luaL_argcheck(i32* %47, i32 %57, i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32*, i32** %2, align 8
  %60 = load i32*, i32** %2, align 8
  %61 = call i64 @lua_isnoneornil(i32* %60, i32 6)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = load i32*, i32** %2, align 8
  %65 = call i64 @lua_istable(i32* %64, i32 6)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %63, %55
  %68 = phi i1 [ true, %55 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @luaL_argcheck(i32* %59, i32 %69, i32 6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32*, i32** %2, align 8
  %72 = call i64 @lua_isnoneornil(i32* %71, i32 6)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %67
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @lua_pop(i32* %75, i32 1)
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %79 = call i32 @luaT_fullparentname(i8* %77, i8* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i32*, i32** %2, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @luaT_getinnerparent(i32* %83, i8* %84)
  br label %89

86:                                               ; preds = %74
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 @lua_pushglobaltable(i32* %87)
  br label %89

89:                                               ; preds = %86, %82
  br label %90

90:                                               ; preds = %89, %67
  %91 = load i32*, i32** %2, align 8
  %92 = call i64 @lua_istable(i32* %91, i32 -1)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load i32*, i32** %2, align 8
  %96 = load i8*, i8** %3, align 8
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %98 = call i32 (i32*, i8*, i8*, ...) @luaL_error(i32* %95, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.5, i64 0, i64 0), i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %94, %90
  %100 = load i32*, i32** %2, align 8
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 @luaT_pushmetatable(i32* %100, i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %214, label %104

104:                                              ; preds = %99
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 @lua_newtable(i32* %105)
  %107 = load i32*, i32** %2, align 8
  %108 = call i32 @lua_pushvalue(i32* %107, i32 -1)
  %109 = load i32*, i32** %2, align 8
  %110 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %111 = load i8*, i8** %3, align 8
  %112 = call i32 @lua_setfield(i32* %109, i32 %110, i8* %111)
  %113 = load i32*, i32** %2, align 8
  %114 = call i32 @lua_pushvalue(i32* %113, i32 -1)
  %115 = load i32*, i32** %2, align 8
  %116 = load i8*, i8** %3, align 8
  %117 = call i32 @lua_pushstring(i32* %115, i8* %116)
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %120 = call i32 @lua_rawset(i32* %118, i32 %119)
  %121 = load i32*, i32** %2, align 8
  %122 = load i32, i32* @luaT_mt__index, align 4
  %123 = call i32 @lua_pushcfunction(i32* %121, i32 %122)
  %124 = load i32*, i32** %2, align 8
  %125 = call i32 @lua_setfield(i32* %124, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %126 = load i32*, i32** %2, align 8
  %127 = load i32, i32* @luaT_mt__newindex, align 4
  %128 = call i32 @lua_pushcfunction(i32* %126, i32 %127)
  %129 = load i32*, i32** %2, align 8
  %130 = call i32 @lua_setfield(i32* %129, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %131 = load i32*, i32** %2, align 8
  %132 = load i8*, i8** %3, align 8
  %133 = call i32 @lua_pushstring(i32* %131, i8* %132)
  %134 = load i32*, i32** %2, align 8
  %135 = call i32 @lua_setfield(i32* %134, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %136 = load i32*, i32** %2, align 8
  %137 = call i32 @lua_pushvalue(i32* %136, i32 -1)
  %138 = load i32*, i32** %2, align 8
  %139 = call i32 @lua_setfield(i32* %138, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %140 = load i32*, i32** %2, align 8
  %141 = call i32 @lua_pushnumber(i32* %140, i32 1)
  %142 = load i32*, i32** %2, align 8
  %143 = call i32 @lua_setfield(i32* %142, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %144 = load i32*, i32** %2, align 8
  %145 = load i32, i32* @luaT_mt__tostring, align 4
  %146 = call i32 @lua_pushcfunction(i32* %144, i32 %145)
  %147 = load i32*, i32** %2, align 8
  %148 = call i32 @lua_setfield(i32* %147, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %149 = load i32*, i32** %2, align 8
  %150 = load i32, i32* @luaT_mt__add, align 4
  %151 = call i32 @lua_pushcfunction(i32* %149, i32 %150)
  %152 = load i32*, i32** %2, align 8
  %153 = call i32 @lua_setfield(i32* %152, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %154 = load i32*, i32** %2, align 8
  %155 = load i32, i32* @luaT_mt__sub, align 4
  %156 = call i32 @lua_pushcfunction(i32* %154, i32 %155)
  %157 = load i32*, i32** %2, align 8
  %158 = call i32 @lua_setfield(i32* %157, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %159 = load i32*, i32** %2, align 8
  %160 = load i32, i32* @luaT_mt__mul, align 4
  %161 = call i32 @lua_pushcfunction(i32* %159, i32 %160)
  %162 = load i32*, i32** %2, align 8
  %163 = call i32 @lua_setfield(i32* %162, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %164 = load i32*, i32** %2, align 8
  %165 = load i32, i32* @luaT_mt__div, align 4
  %166 = call i32 @lua_pushcfunction(i32* %164, i32 %165)
  %167 = load i32*, i32** %2, align 8
  %168 = call i32 @lua_setfield(i32* %167, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %169 = load i32*, i32** %2, align 8
  %170 = load i32, i32* @luaT_mt__mod, align 4
  %171 = call i32 @lua_pushcfunction(i32* %169, i32 %170)
  %172 = load i32*, i32** %2, align 8
  %173 = call i32 @lua_setfield(i32* %172, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %174 = load i32*, i32** %2, align 8
  %175 = load i32, i32* @luaT_mt__pow, align 4
  %176 = call i32 @lua_pushcfunction(i32* %174, i32 %175)
  %177 = load i32*, i32** %2, align 8
  %178 = call i32 @lua_setfield(i32* %177, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %179 = load i32*, i32** %2, align 8
  %180 = load i32, i32* @luaT_mt__unm, align 4
  %181 = call i32 @lua_pushcfunction(i32* %179, i32 %180)
  %182 = load i32*, i32** %2, align 8
  %183 = call i32 @lua_setfield(i32* %182, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %184 = load i32*, i32** %2, align 8
  %185 = load i32, i32* @luaT_mt__concat, align 4
  %186 = call i32 @lua_pushcfunction(i32* %184, i32 %185)
  %187 = load i32*, i32** %2, align 8
  %188 = call i32 @lua_setfield(i32* %187, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %189 = load i32*, i32** %2, align 8
  %190 = load i32, i32* @luaT_mt__len, align 4
  %191 = call i32 @lua_pushcfunction(i32* %189, i32 %190)
  %192 = load i32*, i32** %2, align 8
  %193 = call i32 @lua_setfield(i32* %192, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %194 = load i32*, i32** %2, align 8
  %195 = load i32, i32* @luaT_mt__eq, align 4
  %196 = call i32 @lua_pushcfunction(i32* %194, i32 %195)
  %197 = load i32*, i32** %2, align 8
  %198 = call i32 @lua_setfield(i32* %197, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %199 = load i32*, i32** %2, align 8
  %200 = load i32, i32* @luaT_mt__lt, align 4
  %201 = call i32 @lua_pushcfunction(i32* %199, i32 %200)
  %202 = load i32*, i32** %2, align 8
  %203 = call i32 @lua_setfield(i32* %202, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %204 = load i32*, i32** %2, align 8
  %205 = load i32, i32* @luaT_mt__le, align 4
  %206 = call i32 @lua_pushcfunction(i32* %204, i32 %205)
  %207 = load i32*, i32** %2, align 8
  %208 = call i32 @lua_setfield(i32* %207, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  %209 = load i32*, i32** %2, align 8
  %210 = load i32, i32* @luaT_mt__call, align 4
  %211 = call i32 @lua_pushcfunction(i32* %209, i32 %210)
  %212 = load i32*, i32** %2, align 8
  %213 = call i32 @lua_setfield(i32* %212, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  br label %214

214:                                              ; preds = %104, %99
  %215 = load i32*, i32** %2, align 8
  %216 = call i64 @lua_isnoneornil(i32* %215, i32 2)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %241, label %218

218:                                              ; preds = %214
  %219 = load i32*, i32** %2, align 8
  %220 = call i64 @lua_getmetatable(i32* %219, i32 -1)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %218
  %223 = load i32*, i32** %2, align 8
  %224 = load i8*, i8** %3, align 8
  %225 = call i32 (i32*, i8*, i8*, ...) @luaL_error(i32* %223, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i8* %224)
  br label %240

226:                                              ; preds = %218
  %227 = load i32*, i32** %2, align 8
  %228 = call i8* @luaL_checkstring(i32* %227, i32 2)
  store i8* %228, i8** %6, align 8
  %229 = load i32*, i32** %2, align 8
  %230 = load i8*, i8** %6, align 8
  %231 = call i32 @luaT_pushmetatable(i32* %229, i8* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %226
  %234 = load i32*, i32** %2, align 8
  %235 = load i8*, i8** %6, align 8
  %236 = call i32 (i32*, i8*, i8*, ...) @luaL_error(i32* %234, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.26, i64 0, i64 0), i8* %235)
  br label %237

237:                                              ; preds = %233, %226
  %238 = load i32*, i32** %2, align 8
  %239 = call i32 @lua_setmetatable(i32* %238, i32 -2)
  br label %240

240:                                              ; preds = %237, %222
  br label %241

241:                                              ; preds = %240, %214
  %242 = load i32*, i32** %2, align 8
  %243 = call i64 @lua_isnoneornil(i32* %242, i32 4)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %267, label %245

245:                                              ; preds = %241
  %246 = load i32*, i32** %2, align 8
  %247 = call i32 @lua_pushstring(i32* %246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %248 = load i32*, i32** %2, align 8
  %249 = call i32 @lua_rawget(i32* %248, i32 -2)
  %250 = load i32*, i32** %2, align 8
  %251 = call i64 @lua_isnil(i32* %250, i32 -1)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %245
  %254 = load i32*, i32** %2, align 8
  %255 = call i32 @lua_pop(i32* %254, i32 1)
  %256 = load i32*, i32** %2, align 8
  %257 = call i32 @lua_pushstring(i32* %256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %258 = load i32*, i32** %2, align 8
  %259 = call i32 @lua_pushvalue(i32* %258, i32 4)
  %260 = load i32*, i32** %2, align 8
  %261 = call i32 @lua_rawset(i32* %260, i32 -3)
  br label %266

262:                                              ; preds = %245
  %263 = load i32*, i32** %2, align 8
  %264 = load i8*, i8** %3, align 8
  %265 = call i32 (i32*, i8*, i8*, ...) @luaL_error(i32* %263, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0), i8* %264)
  br label %266

266:                                              ; preds = %262, %253
  br label %267

267:                                              ; preds = %266, %241
  %268 = load i32*, i32** %2, align 8
  %269 = call i64 @lua_isnoneornil(i32* %268, i32 5)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %293, label %271

271:                                              ; preds = %267
  %272 = load i32*, i32** %2, align 8
  %273 = call i32 @lua_pushstring(i32* %272, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %274 = load i32*, i32** %2, align 8
  %275 = call i32 @lua_rawget(i32* %274, i32 -2)
  %276 = load i32*, i32** %2, align 8
  %277 = call i64 @lua_isnil(i32* %276, i32 -1)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %271
  %280 = load i32*, i32** %2, align 8
  %281 = call i32 @lua_pop(i32* %280, i32 1)
  %282 = load i32*, i32** %2, align 8
  %283 = call i32 @lua_pushstring(i32* %282, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %284 = load i32*, i32** %2, align 8
  %285 = call i32 @lua_pushvalue(i32* %284, i32 5)
  %286 = load i32*, i32** %2, align 8
  %287 = call i32 @lua_rawset(i32* %286, i32 -3)
  br label %292

288:                                              ; preds = %271
  %289 = load i32*, i32** %2, align 8
  %290 = load i8*, i8** %3, align 8
  %291 = call i32 (i32*, i8*, i8*, ...) @luaL_error(i32* %289, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* %290)
  br label %292

292:                                              ; preds = %288, %279
  br label %293

293:                                              ; preds = %292, %267
  %294 = load i32*, i32** %2, align 8
  %295 = call i32 @lua_pushstring(i32* %294, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0))
  %296 = load i32*, i32** %2, align 8
  %297 = call i32 @lua_rawget(i32* %296, i32 -2)
  %298 = load i32*, i32** %2, align 8
  %299 = call i64 @lua_isnil(i32* %298, i32 -1)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %334

301:                                              ; preds = %293
  %302 = load i32*, i32** %2, align 8
  %303 = call i32 @lua_pop(i32* %302, i32 1)
  %304 = load i32*, i32** %2, align 8
  %305 = call i32 @lua_newtable(i32* %304)
  %306 = load i32*, i32** %2, align 8
  %307 = call i32 @lua_newtable(i32* %306)
  %308 = load i32*, i32** %2, align 8
  %309 = call i32 @lua_pushvalue(i32* %308, i32 -3)
  %310 = load i32*, i32** %2, align 8
  %311 = call i32 @lua_setfield(i32* %310, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %312 = load i32*, i32** %2, align 8
  %313 = load i32, i32* @luaT_cmt__newindex, align 4
  %314 = call i32 @lua_pushcfunction(i32* %312, i32 %313)
  %315 = load i32*, i32** %2, align 8
  %316 = call i32 @lua_setfield(i32* %315, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %317 = load i32*, i32** %2, align 8
  %318 = load i32, i32* @luaT_cmt__call, align 4
  %319 = call i32 @lua_pushcfunction(i32* %317, i32 %318)
  %320 = load i32*, i32** %2, align 8
  %321 = call i32 @lua_setfield(i32* %320, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %322 = load i32*, i32** %2, align 8
  %323 = call i32 @lua_pushvalue(i32* %322, i32 -3)
  %324 = load i32*, i32** %2, align 8
  %325 = call i32 @lua_setfield(i32* %324, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %326 = load i32*, i32** %2, align 8
  %327 = call i32 @lua_setmetatable(i32* %326, i32 -2)
  %328 = load i32*, i32** %2, align 8
  %329 = call i32 @lua_pushstring(i32* %328, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0))
  %330 = load i32*, i32** %2, align 8
  %331 = call i32 @lua_pushvalue(i32* %330, i32 -2)
  %332 = load i32*, i32** %2, align 8
  %333 = call i32 @lua_rawset(i32* %332, i32 -4)
  br label %334

334:                                              ; preds = %301, %293
  %335 = load i32*, i32** %2, align 8
  %336 = call i64 @lua_isnoneornil(i32* %335, i32 3)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %370, label %338

338:                                              ; preds = %334
  %339 = load i32*, i32** %2, align 8
  %340 = call i64 @lua_getmetatable(i32* %339, i32 -1)
  %341 = load i32*, i32** %2, align 8
  %342 = call i32 @lua_pushstring(i32* %341, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0))
  %343 = load i32*, i32** %2, align 8
  %344 = call i32 @lua_rawget(i32* %343, i32 -2)
  %345 = load i32*, i32** %2, align 8
  %346 = call i64 @lua_isnil(i32* %345, i32 -1)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %363

348:                                              ; preds = %338
  %349 = load i32*, i32** %2, align 8
  %350 = call i32 @lua_pop(i32* %349, i32 1)
  %351 = load i32*, i32** %2, align 8
  %352 = call i32 @lua_pushstring(i32* %351, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0))
  %353 = load i32*, i32** %2, align 8
  %354 = call i32 @lua_pushvalue(i32* %353, i32 3)
  %355 = load i32*, i32** %2, align 8
  %356 = call i32 @lua_rawset(i32* %355, i32 -3)
  %357 = load i32*, i32** %2, align 8
  %358 = call i32 @lua_pushstring(i32* %357, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  %359 = load i32*, i32** %2, align 8
  %360 = call i32 @lua_pushvalue(i32* %359, i32 3)
  %361 = load i32*, i32** %2, align 8
  %362 = call i32 @lua_rawset(i32* %361, i32 -5)
  br label %367

363:                                              ; preds = %338
  %364 = load i32*, i32** %2, align 8
  %365 = load i8*, i8** %3, align 8
  %366 = call i32 (i32*, i8*, i8*, ...) @luaL_error(i32* %364, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.34, i64 0, i64 0), i8* %365)
  br label %367

367:                                              ; preds = %363, %348
  %368 = load i32*, i32** %2, align 8
  %369 = call i32 @lua_pop(i32* %368, i32 1)
  br label %370

370:                                              ; preds = %367, %334
  %371 = load i32*, i32** %2, align 8
  %372 = load i8*, i8** %3, align 8
  %373 = call i8* @luaT_classrootname(i8* %372)
  %374 = call i32 @lua_setfield(i32* %371, i32 6, i8* %373)
  ret i32 1
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaT_fullparentname(i8*, i8*) #1

declare dso_local i32 @luaT_getinnerparent(i32*, i8*) #1

declare dso_local i32 @lua_pushglobaltable(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*, ...) #1

declare dso_local i32 @luaT_pushmetatable(i32*, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i64 @lua_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i8* @luaT_classrootname(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
