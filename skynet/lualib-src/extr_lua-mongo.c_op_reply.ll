; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_op_reply.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_op_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i64, i64, i64, [2 x i64], i64, i64 }

@REPLY_QUERYFAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid result bson document\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @op_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_reply(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.anon*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @luaL_checklstring(i32* %16, i32 1, i64* %4)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.anon*
  store %struct.anon* %19, %struct.anon** %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ult i64 %20, 64
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_pushboolean(i32* %23, i32 0)
  store i32 1, i32* %2, align 4
  br label %183

25:                                               ; preds = %1
  %26 = load %struct.anon*, %struct.anon** %6, align 8
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @little_endian(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.anon*, %struct.anon** %6, align 8
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @little_endian(i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @REPLY_QUERYFAILURE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %25
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @lua_pushboolean(i32* %39, i32 0)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @lua_pushinteger(i32* %41, i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.anon*, %struct.anon** %6, align 8
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i64 1
  %47 = bitcast %struct.anon* %46 to i8*
  %48 = call i32 @lua_pushlightuserdata(i32* %44, i8* %47)
  store i32 3, i32* %2, align 4
  br label %183

49:                                               ; preds = %25
  %50 = load %struct.anon*, %struct.anon** %6, align 8
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @little_endian(i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.anon*, %struct.anon** %6, align 8
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @little_endian(i64 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i64, i64* %4, align 8
  %59 = trunc i64 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = sub i64 %60, 64
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = load %struct.anon*, %struct.anon** %6, align 8
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i64 1
  %65 = bitcast %struct.anon* %64 to i32*
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @lua_istable(i32* %66, i32 2)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %122

69:                                               ; preds = %49
  store i32 1, i32* %13, align 4
  br label %70

70:                                               ; preds = %73, %69
  %71 = load i32, i32* %11, align 4
  %72 = icmp sgt i32 %71, 4
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = load i32*, i32** %3, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = bitcast i32* %75 to i8*
  %77 = call i32 @lua_pushlightuserdata(i32* %74, i8* %76)
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @lua_rawseti(i32* %78, i32 2, i32 %79)
  %81 = load i32*, i32** %12, align 8
  %82 = ptrtoint i32* %81 to i32
  %83 = call i64 @get_length(i32 %82)
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 %84
  store i32* %86, i32** %12, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = sub nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %70

94:                                               ; preds = %70
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @lua_pushboolean(i32* %100, i32 0)
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @lua_pushinteger(i32* %102, i32 %103)
  store i32 2, i32* %2, align 4
  br label %183

105:                                              ; preds = %94
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @lua_rawlen(i32* %106, i32 2)
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %118, %105
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @lua_pushnil(i32* %113)
  %115 = load i32*, i32** %3, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @lua_rawseti(i32* %115, i32 2, i32 %116)
  br label %118

118:                                              ; preds = %112
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %108

121:                                              ; preds = %108
  br label %134

122:                                              ; preds = %49
  %123 = load i32, i32* %11, align 4
  %124 = icmp sge i32 %123, 4
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i32*, i32** %12, align 8
  %127 = ptrtoint i32* %126 to i32
  %128 = call i64 @get_length(i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = sub nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %125, %122
  br label %134

134:                                              ; preds = %133, %121
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @luaL_error(i32* %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %139, i32* %2, align 4
  br label %183

140:                                              ; preds = %134
  %141 = load i32*, i32** %3, align 8
  %142 = call i32 @lua_pushboolean(i32* %141, i32 1)
  %143 = load i32*, i32** %3, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @lua_pushinteger(i32* %143, i32 %144)
  %146 = load i32, i32* %10, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load i32*, i32** %3, align 8
  %150 = call i32 @lua_pushnil(i32* %149)
  br label %157

151:                                              ; preds = %140
  %152 = load i32*, i32** %3, align 8
  %153 = load %struct.anon*, %struct.anon** %6, align 8
  %154 = getelementptr inbounds %struct.anon, %struct.anon* %153, i64 1
  %155 = bitcast %struct.anon* %154 to i8*
  %156 = call i32 @lua_pushlightuserdata(i32* %152, i8* %155)
  br label %157

157:                                              ; preds = %151, %148
  %158 = load %struct.anon*, %struct.anon** %6, align 8
  %159 = getelementptr inbounds %struct.anon, %struct.anon* %158, i32 0, i32 4
  %160 = getelementptr inbounds [2 x i64], [2 x i64]* %159, i64 0, i64 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %157
  %164 = load %struct.anon*, %struct.anon** %6, align 8
  %165 = getelementptr inbounds %struct.anon, %struct.anon* %164, i32 0, i32 4
  %166 = getelementptr inbounds [2 x i64], [2 x i64]* %165, i64 0, i64 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load i32*, i32** %3, align 8
  %171 = call i32 @lua_pushnil(i32* %170)
  br label %179

172:                                              ; preds = %163, %157
  %173 = load i32*, i32** %3, align 8
  %174 = load %struct.anon*, %struct.anon** %6, align 8
  %175 = getelementptr inbounds %struct.anon, %struct.anon* %174, i32 0, i32 4
  %176 = getelementptr inbounds [2 x i64], [2 x i64]* %175, i64 0, i64 0
  %177 = bitcast i64* %176 to i8*
  %178 = call i32 @lua_pushlstring(i32* %173, i8* %177, i32 8)
  br label %179

179:                                              ; preds = %172, %169
  %180 = load i32*, i32** %3, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @lua_pushinteger(i32* %180, i32 %181)
  store i32 5, i32* %2, align 4
  br label %183

183:                                              ; preds = %179, %137, %99, %38, %22
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @little_endian(i64) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i8*) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i64 @get_length(i32) #1

declare dso_local i32 @lua_rawlen(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
