; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_create_widget_inner.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_create_widget_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"dialog\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't get pointer to dialog\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"widget\00", align 1
@vlclua_widget_reg = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_7__*)* @vlclua_create_widget_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_create_widget_inner(i32* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__**, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @luaL_checkudata(i32* %14, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = inttoptr i64 %15 to %struct.TYPE_8__**
  store %struct.TYPE_8__** %16, %struct.TYPE_8__*** %9, align 8
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %18 = icmp ne %struct.TYPE_8__** %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %3
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @luaL_error(i32* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %4, align 4
  br label %139

26:                                               ; preds = %19
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %10, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 6
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @lua_isnumber(i32* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i8* @luaL_checkinteger(i32* %37, i32 %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  br label %43

42:                                               ; preds = %26
  br label %109

43:                                               ; preds = %36
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = call i64 @lua_isnumber(i32* %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @luaL_checkinteger(i32* %50, i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  br label %56

55:                                               ; preds = %43
  br label %109

56:                                               ; preds = %49
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = call i64 @lua_isnumber(i32* %57, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i8* @luaL_checkinteger(i32* %63, i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  br label %69

68:                                               ; preds = %56
  br label %109

69:                                               ; preds = %62
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = call i64 @lua_isnumber(i32* %70, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i8* @luaL_checkinteger(i32* %76, i32 %77)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  br label %82

81:                                               ; preds = %69
  br label %109

82:                                               ; preds = %75
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = call i64 @lua_isnumber(i32* %83, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i8* @luaL_checkinteger(i32* %89, i32 %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %95

94:                                               ; preds = %82
  br label %109

95:                                               ; preds = %88
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  %99 = call i64 @lua_isnumber(i32* %96, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i8* @luaL_checkinteger(i32* %102, i32 %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %108

107:                                              ; preds = %95
  br label %109

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %107, %94, %81, %68, %55, %42
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = call i32 @vlc_mutex_lock(i32* %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %115 = call i32 @AddWidget(%struct.TYPE_8__* %113, %struct.TYPE_7__* %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = call i32 @vlc_mutex_unlock(i32* %117)
  %119 = load i32*, i32** %5, align 8
  %120 = call %struct.TYPE_7__** @lua_newuserdata(i32* %119, i32 8)
  store %struct.TYPE_7__** %120, %struct.TYPE_7__*** %11, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %122, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = call i64 @luaL_newmetatable(i32* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %109
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @lua_newtable(i32* %127)
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* @vlclua_widget_reg, align 4
  %131 = call i32 @luaL_register(i32* %129, i32* null, i32 %130)
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @lua_setfield(i32* %132, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %134

134:                                              ; preds = %126, %109
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @lua_setmetatable(i32* %135, i32 -2)
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @lua_SetDialogUpdate(i32* %137, i32 1)
  store i32 1, i32* %4, align 4
  br label %139

139:                                              ; preds = %134, %23
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i64 @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i8* @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @AddWidget(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_7__** @lua_newuserdata(i32*, i32) #1

declare dso_local i64 @luaL_newmetatable(i32*, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @luaL_register(i32*, i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_SetDialogUpdate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
