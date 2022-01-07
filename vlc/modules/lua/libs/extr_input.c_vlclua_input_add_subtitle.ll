; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_input.c_vlclua_input_add_subtitle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_input.c_vlclua_input_add_subtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"vlc.player.add_subtitle() usage: (path, autoselect=false)\00", align 1
@SPU_ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @vlclua_input_add_subtitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_input_add_subtitle(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* @vlclua_get_player_internal(i32* %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @lua_isstring(i32* %13, i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @luaL_error(i32* %17, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @lua_gettop(i32* %20)
  %22 = icmp sge i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @lua_toboolean(i32* %24, i32 2)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @luaL_checkstring(i32* %27, i32 1)
  store i8* %28, i8** %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = call i8* @vlc_path2uri(i8* %32, i32* null)
  store i8* %33, i8** %9, align 8
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  br label %41

39:                                               ; preds = %34
  %40 = load i8*, i8** %8, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i8* [ %38, %37 ], [ %40, %39 ]
  store i8* %42, i8** %10, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @SPU_ES, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @vlc_player_AddAssociatedMedia(i32* %43, i32 %44, i8* %45, i32 %46, i32 1, i32 0)
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @free(i8* %51)
  br label %53

53:                                               ; preds = %50, %41
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32* @vlclua_get_player_internal(i32*) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i8* @vlc_path2uri(i8*, i32*) #1

declare dso_local i32 @vlc_player_AddAssociatedMedia(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
