; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_sd.c_vlclua_sd_create_node.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_sd.c_vlclua_sd_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Error: argument must be table\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Error: \22%s\22 parameter is required\00", align 1
@INPUT_ITEM_URI_NOP = common dso_local global i32 0, align 4
@INPUT_DURATION_INDEFINITE = common dso_local global i32 0, align 4
@ITEM_TYPE_NODE = common dso_local global i32 0, align 4
@ITEM_NET_UNKNOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"arturl\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ArtURL: %s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@vlclua_node_reg = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@vlclua_sd_node_delete = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @vlclua_sd_create_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @vlclua_sd_create_node(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @lua_istable(i32* %10, i32 -1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 (i32*, i8*, ...) @msg_Err(i32* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %94

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @lua_getfield(i32* %17, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @lua_isstring(i32* %19, i32 -1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 (i32*, i8*, ...) @msg_Err(i32* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %94

25:                                               ; preds = %16
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @lua_tostring(i32* %26, i32 -1)
  store i8* %27, i8** %6, align 8
  %28 = load i32, i32* @INPUT_ITEM_URI_NOP, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @INPUT_DURATION_INDEFINITE, align 4
  %31 = load i32, i32* @ITEM_TYPE_NODE, align 4
  %32 = load i32, i32* @ITEM_NET_UNKNOWN, align 4
  %33 = call i32* @input_item_NewExt(i32 %28, i8* %29, i32 %30, i32 %31, i32 %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @lua_pop(i32* %34, i32 1)
  %36 = load i32*, i32** %7, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %25
  store i32* null, i32** %3, align 8
  br label %94

42:                                               ; preds = %25
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @lua_getfield(i32* %43, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32*, i32** %5, align 8
  %46 = call i64 @lua_isstring(i32* %45, i32 -1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load i32*, i32** %5, align 8
  %50 = call i8* @lua_tostring(i32* %49, i32 -1)
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load i32*, i32** %5, align 8
  %55 = call i8* @lua_tostring(i32* %54, i32 -1)
  %56 = call i8* @strdup(i8* %55)
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @EnsureUTF8(i8* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @msg_Dbg(i32* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @input_item_SetArtURL(i32* %62, i8* %63)
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @free(i8* %65)
  br label %67

67:                                               ; preds = %53, %48, %42
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @lua_pop(i32* %68, i32 1)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32** @lua_newuserdata(i32* %70, i32 8)
  store i32** %71, i32*** %9, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32**, i32*** %9, align 8
  store i32* %72, i32** %73, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = call i64 @luaL_newmetatable(i32* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %67
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @lua_newtable(i32* %78)
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* @vlclua_node_reg, align 4
  %82 = call i32 @luaL_register(i32* %80, i32* null, i32 %81)
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @lua_setfield(i32* %83, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @vlclua_sd_node_delete, align 4
  %87 = call i32 @lua_pushcfunction(i32* %85, i32 %86)
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @lua_setfield(i32* %88, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %90

90:                                               ; preds = %77, %67
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @lua_setmetatable(i32* %91, i32 -2)
  %93 = load i32*, i32** %7, align 8
  store i32* %93, i32** %3, align 8
  br label %94

94:                                               ; preds = %90, %41, %22, %13
  %95 = load i32*, i32** %3, align 8
  ret i32* %95
}

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32* @input_item_NewExt(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @EnsureUTF8(i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

declare dso_local i32 @input_item_SetArtURL(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32** @lua_newuserdata(i32*, i32) #1

declare dso_local i64 @luaL_newmetatable(i32*, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @luaL_register(i32*, i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
