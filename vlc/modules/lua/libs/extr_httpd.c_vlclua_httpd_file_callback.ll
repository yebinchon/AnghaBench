; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_httpd.c_vlclua_httpd_file_callback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_httpd.c_vlclua_httpd_file_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [52 x i8] c"Error while running the lua HTTPd file callback: %s\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@no_password_fmt = common dso_local global i32 0, align 4
@no_password_title = common dso_local global i32 0, align 4
@no_password_body = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32**, i32*)* @vlclua_httpd_file_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_httpd_file_callback(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @VLC_UNUSED(i32* %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @lua_pushvalue(i32* %20, i32 1)
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 @lua_pushvalue(i32* %22, i32 2)
  %24 = load i32*, i32** %12, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = call i32 @lua_pushstring(i32* %24, i8* %26)
  %28 = load i32*, i32** %12, align 8
  %29 = call i64 @lua_pcall(i32* %28, i32 2, i32 1, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %5
  %32 = load i32*, i32** %12, align 8
  %33 = call i32* @vlclua_get_this(i32* %32)
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i8* @lua_tostring(i32* %34, i32 -1)
  store i8* %35, i8** %14, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = call i32 @msg_Err(i32* %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @lua_settop(i32* %39, i32 2)
  %41 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %41, i32* %6, align 4
  br label %77

42:                                               ; preds = %5
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32* @vlclua_todata(i32* %43, i32 -1, i32* %44)
  %46 = load i32**, i32*** %10, align 8
  store i32* %45, i32** %46, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %42
  %52 = load i32**, i32*** %10, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @free(i32* %53)
  %55 = load i32**, i32*** %10, align 8
  %56 = bitcast i32** %55 to i8**
  %57 = load i32, i32* @no_password_fmt, align 4
  %58 = load i32, i32* @no_password_title, align 4
  %59 = call i32 @_(i32 %58)
  %60 = load i32, i32* @no_password_body, align 4
  %61 = call i32 @_(i32 %60)
  %62 = call i64 @asprintf(i8** %56, i32 %57, i32 %59, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32*, i32** %11, align 8
  store i32 0, i32* %65, align 4
  br label %72

66:                                               ; preds = %51
  %67 = load i32**, i32*** %10, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = bitcast i32* %68 to i8*
  %70 = call i32 @strlen(i8* %69)
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %64
  br label %73

73:                                               ; preds = %72, %42
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @lua_pop(i32* %74, i32 1)
  %76 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %31
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32* @vlclua_get_this(i32*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32* @vlclua_todata(i32*, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @asprintf(i8**, i32, i32, i32) #1

declare dso_local i32 @_(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
