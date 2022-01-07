; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_luajit.c_pmain.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_luajit.c_pmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Smain = type { i8**, i32, i32 }

@smain = common dso_local global %struct.Smain zeroinitializer, align 8
@globalL = common dso_local global i32* null, align 8
@progname = common dso_local global i8* null, align 8
@FLAGS_NOENV = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"LUA_NOENV\00", align 1
@LUA_GCSTOP = common dso_local global i32 0, align 4
@LUA_GCRESTART = common dso_local global i32 0, align 4
@FLAGS_VERSION = common dso_local global i32 0, align 4
@FLAGS_INTERACTIVE = common dso_local global i32 0, align 4
@FLAGS_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pmain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmain(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Smain*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.Smain* @smain, %struct.Smain** %4, align 8
  %8 = load %struct.Smain*, %struct.Smain** %4, align 8
  %9 = getelementptr inbounds %struct.Smain, %struct.Smain* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  store i8** %10, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32*, i32** %3, align 8
  store i32* %11, i32** @globalL, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** @progname, align 8
  br label %28

28:                                               ; preds = %24, %16, %1
  %29 = call i32 (...) @LUAJIT_VERSION_SYM()
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @collectargs(i8** %30, i32* %7)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = call i32 (...) @print_usage()
  %36 = load %struct.Smain*, %struct.Smain** %4, align 8
  %37 = getelementptr inbounds %struct.Smain, %struct.Smain* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %152

38:                                               ; preds = %28
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @FLAGS_NOENV, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @lua_pushboolean(i32* %44, i32 1)
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %48 = call i32 @lua_setfield(i32* %46, i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @LUA_GCSTOP, align 4
  %52 = call i32 @lua_gc(i32* %50, i32 %51, i32 0)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @luaL_openlibs(i32* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @LUA_GCRESTART, align 4
  %57 = call i32 @lua_gc(i32* %55, i32 %56, i32 -1)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @FLAGS_NOENV, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %49
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @handle_luainit(i32* %63)
  %65 = load %struct.Smain*, %struct.Smain** %4, align 8
  %66 = getelementptr inbounds %struct.Smain, %struct.Smain* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.Smain*, %struct.Smain** %4, align 8
  %68 = getelementptr inbounds %struct.Smain, %struct.Smain* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %152

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %49
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @FLAGS_VERSION, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (...) @print_version()
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32*, i32** %3, align 8
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  br label %91

87:                                               ; preds = %80
  %88 = load %struct.Smain*, %struct.Smain** %4, align 8
  %89 = getelementptr inbounds %struct.Smain, %struct.Smain* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  br label %91

91:                                               ; preds = %87, %85
  %92 = phi i32 [ %86, %85 ], [ %90, %87 ]
  %93 = call i32 @runargs(i32* %81, i8** %82, i32 %92)
  %94 = load %struct.Smain*, %struct.Smain** %4, align 8
  %95 = getelementptr inbounds %struct.Smain, %struct.Smain* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.Smain*, %struct.Smain** %4, align 8
  %97 = getelementptr inbounds %struct.Smain, %struct.Smain* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %152

101:                                              ; preds = %91
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i32*, i32** %3, align 8
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @handle_script(i32* %105, i8** %106, i32 %107)
  %109 = load %struct.Smain*, %struct.Smain** %4, align 8
  %110 = getelementptr inbounds %struct.Smain, %struct.Smain* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.Smain*, %struct.Smain** %4, align 8
  %112 = getelementptr inbounds %struct.Smain, %struct.Smain* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %152

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %101
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @FLAGS_INTERACTIVE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 @print_jit_status(i32* %123)
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @dotty(i32* %125)
  br label %151

127:                                              ; preds = %117
  %128 = load i32, i32* %6, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %127
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @FLAGS_EXEC, align 4
  %133 = load i32, i32* @FLAGS_VERSION, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %150, label %137

137:                                              ; preds = %130
  %138 = call i64 (...) @lua_stdin_is_tty()
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = call i32 (...) @print_version()
  %142 = load i32*, i32** %3, align 8
  %143 = call i32 @print_jit_status(i32* %142)
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @dotty(i32* %144)
  br label %149

146:                                              ; preds = %137
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @dofile(i32* %147, i32* null)
  br label %149

149:                                              ; preds = %146, %140
  br label %150

150:                                              ; preds = %149, %130, %127
  br label %151

151:                                              ; preds = %150, %122
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %115, %100, %71, %34
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @LUAJIT_VERSION_SYM(...) #1

declare dso_local i32 @collectargs(i8**, i32*) #1

declare dso_local i32 @print_usage(...) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @handle_luainit(i32*) #1

declare dso_local i32 @print_version(...) #1

declare dso_local i32 @runargs(i32*, i8**, i32) #1

declare dso_local i32 @handle_script(i32*, i8**, i32) #1

declare dso_local i32 @print_jit_status(i32*) #1

declare dso_local i32 @dotty(i32*) #1

declare dso_local i64 @lua_stdin_is_tty(...) #1

declare dso_local i32 @dofile(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
