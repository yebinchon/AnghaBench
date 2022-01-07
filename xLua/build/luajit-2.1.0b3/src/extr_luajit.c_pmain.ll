; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_luajit.c_pmain.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_luajit.c_pmain.c"
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
@LUA_OK = common dso_local global i32 0, align 4
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
  br label %161

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
  %58 = load i32*, i32** %3, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = load %struct.Smain*, %struct.Smain** %4, align 8
  %61 = getelementptr inbounds %struct.Smain, %struct.Smain* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @createargtable(i32* %58, i8** %59, i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @FLAGS_NOENV, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %49
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @handle_luainit(i32* %70)
  %72 = load %struct.Smain*, %struct.Smain** %4, align 8
  %73 = getelementptr inbounds %struct.Smain, %struct.Smain* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.Smain*, %struct.Smain** %4, align 8
  %75 = getelementptr inbounds %struct.Smain, %struct.Smain* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @LUA_OK, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %161

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %49
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @FLAGS_VERSION, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 (...) @print_version()
  br label %88

88:                                               ; preds = %86, %81
  %89 = load i32*, i32** %3, align 8
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @runargs(i32* %89, i8** %90, i32 %91)
  %93 = load %struct.Smain*, %struct.Smain** %4, align 8
  %94 = getelementptr inbounds %struct.Smain, %struct.Smain* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.Smain*, %struct.Smain** %4, align 8
  %96 = getelementptr inbounds %struct.Smain, %struct.Smain* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @LUA_OK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  store i32 0, i32* %2, align 4
  br label %161

101:                                              ; preds = %88
  %102 = load %struct.Smain*, %struct.Smain** %4, align 8
  %103 = getelementptr inbounds %struct.Smain, %struct.Smain* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %101
  %108 = load i32*, i32** %3, align 8
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = call i32 @handle_script(i32* %108, i8** %112)
  %114 = load %struct.Smain*, %struct.Smain** %4, align 8
  %115 = getelementptr inbounds %struct.Smain, %struct.Smain* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.Smain*, %struct.Smain** %4, align 8
  %117 = getelementptr inbounds %struct.Smain, %struct.Smain* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @LUA_OK, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %161

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %122, %101
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @FLAGS_INTERACTIVE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @print_jit_status(i32* %129)
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @dotty(i32* %131)
  br label %160

133:                                              ; preds = %123
  %134 = load %struct.Smain*, %struct.Smain** %4, align 8
  %135 = getelementptr inbounds %struct.Smain, %struct.Smain* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %133
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @FLAGS_EXEC, align 4
  %142 = load i32, i32* @FLAGS_VERSION, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %140, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %159, label %146

146:                                              ; preds = %139
  %147 = call i64 (...) @lua_stdin_is_tty()
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = call i32 (...) @print_version()
  %151 = load i32*, i32** %3, align 8
  %152 = call i32 @print_jit_status(i32* %151)
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @dotty(i32* %153)
  br label %158

155:                                              ; preds = %146
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @dofile(i32* %156, i32* null)
  br label %158

158:                                              ; preds = %155, %149
  br label %159

159:                                              ; preds = %158, %139, %133
  br label %160

160:                                              ; preds = %159, %128
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %121, %100, %79, %34
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @LUAJIT_VERSION_SYM(...) #1

declare dso_local i32 @collectargs(i8**, i32*) #1

declare dso_local i32 @print_usage(...) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @createargtable(i32*, i8**, i32, i32) #1

declare dso_local i32 @handle_luainit(i32*) #1

declare dso_local i32 @print_version(...) #1

declare dso_local i32 @runargs(i32*, i8**, i32) #1

declare dso_local i32 @handle_script(i32*, i8**) #1

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
