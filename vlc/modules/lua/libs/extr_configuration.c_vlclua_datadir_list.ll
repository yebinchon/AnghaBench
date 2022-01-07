; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_configuration.c_vlclua_datadir_list.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_configuration.c_vlclua_datadir_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_datadir_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_datadir_list(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i8* @luaL_checkstring(i32* %8, i32 1)
  store i8* %9, i8** %4, align 8
  store i8** null, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @vlclua_dir_list(i8* %10, i8*** %5)
  %12 = load i64, i64* @VLC_SUCCESS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @lua_newtable(i32* %16)
  %18 = load i8**, i8*** %5, align 8
  store i8** %18, i8*** %7, align 8
  br label %19

19:                                               ; preds = %33, %15
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @lua_pushstring(i32* %24, i8* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @lua_rawseti(i32* %28, i32 -2, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %23
  %34 = load i8**, i8*** %7, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %7, align 8
  br label %19

36:                                               ; preds = %19
  %37 = load i8**, i8*** %5, align 8
  %38 = call i32 @vlclua_dir_list_free(i8** %37)
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i64 @vlclua_dir_list(i8*, i8***) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @vlclua_dir_list_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
