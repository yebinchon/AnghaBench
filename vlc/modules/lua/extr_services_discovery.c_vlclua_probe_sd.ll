; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_services_discovery.c_vlclua_probe_sd.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_services_discovery.c_vlclua_probe_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Couldn't probe lua services discovery script \22%s\22.\00", align 1
@VLC_PROBE_CONTINUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not create new Lua State\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Error while setting the module search path for %s\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Error loading script %s: %s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"lua{sd='%s'}\00", align 1
@SD_CAT_INTERNET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlclua_probe_sd(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @vlclua_find_file(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i32*, i8*, ...) @msg_Err(i32* %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @VLC_PROBE_CONTINUE, align 4
  store i32 %22, i32* %3, align 4
  br label %98

23:                                               ; preds = %2
  %24 = call i32* (...) @luaL_newstate()
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 (i32*, i8*, ...) @msg_Err(i32* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %32, i32* %3, align 4
  br label %98

33:                                               ; preds = %23
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @luaL_openlibs(i32* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @vlclua_add_modules_path(i32* %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32*, i32** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (i32*, i8*, ...) @msg_Err(i32* %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @lua_close(i32* %44)
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %48, i32* %3, align 4
  br label %98

49:                                               ; preds = %33
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @vlclua_dofile(i32* %50, i32* %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i32*, i32** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @lua_tostring(i32* %58, i32 -1)
  %60 = call i32 (i32*, i8*, ...) @msg_Err(i32* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %57, i32 %59)
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @lua_close(i32* %61)
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32, i32* @VLC_PROBE_CONTINUE, align 4
  store i32 %65, i32* %3, align 4
  br label %98

66:                                               ; preds = %49
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i8* @vlclua_sd_description(i32* %67, i32* %68, i8* %69)
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i8*, i8** %5, align 8
  store i8* %74, i8** %9, align 8
  br label %75

75:                                               ; preds = %73, %66
  %76 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %76, i32* %10, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = call i8* @config_StringEscape(i8* %77)
  store i8* %78, i8** %11, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @asprintf(i8** %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %79)
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load i32*, i32** %6, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* @SD_CAT_INTERNET, align 4
  %87 = call i32 @vlc_sd_probe_Add(i32* %83, i8* %84, i8* %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @free(i8* %88)
  br label %90

90:                                               ; preds = %82, %75
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @lua_close(i32* %93)
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %90, %55, %40, %27, %18
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i8* @vlclua_find_file(i8*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32* @luaL_newstate(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i64 @vlclua_add_modules_path(i32*, i8*) #1

declare dso_local i32 @lua_close(i32*) #1

declare dso_local i64 @vlclua_dofile(i32*, i32*, i8*) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i8* @vlclua_sd_description(i32*, i32*, i8*) #1

declare dso_local i8* @config_StringEscape(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @vlc_sd_probe_Add(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
