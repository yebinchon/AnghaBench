; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_meta.c_init.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_meta.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Could not create new Lua State\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vlc\00", align 1
@p_reg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Error while setting the module search path for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @init(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call i32* (...) @luaL_newstate()
  store i32* %9, i32** %8, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @msg_Err(i32* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %51

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @vlclua_set_this(i32* %16, i32* %17)
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @luaL_openlibs(i32* %19)
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @p_reg, align 4
  %23 = call i32 @luaL_register_namespace(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @luaopen_msg(i32* %24)
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @luaopen_stream(i32* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @luaopen_strings(i32* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @luaopen_variables(i32* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @luaopen_object(i32* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @luaopen_xml(i32* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @luaopen_input_item(i32* %36, i32* %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @vlclua_add_modules_path(i32* %39, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %15
  %44 = load i32*, i32** %5, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @msg_Warn(i32* %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @lua_close(i32* %47)
  store i32* null, i32** %4, align 8
  br label %51

49:                                               ; preds = %15
  %50 = load i32*, i32** %8, align 8
  store i32* %50, i32** %4, align 8
  br label %51

51:                                               ; preds = %49, %43, %12
  %52 = load i32*, i32** %4, align 8
  ret i32* %52
}

declare dso_local i32* @luaL_newstate(...) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @vlclua_set_this(i32*, i32*) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @luaL_register_namespace(i32*, i8*, i32) #1

declare dso_local i32 @luaopen_msg(i32*) #1

declare dso_local i32 @luaopen_stream(i32*) #1

declare dso_local i32 @luaopen_strings(i32*) #1

declare dso_local i32 @luaopen_variables(i32*) #1

declare dso_local i32 @luaopen_object(i32*) #1

declare dso_local i32 @luaopen_xml(i32*) #1

declare dso_local i32 @luaopen_input_item(i32*, i32*) #1

declare dso_local i64 @vlclua_add_modules_path(i32*, i8*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i8*) #1

declare dso_local i32 @lua_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
