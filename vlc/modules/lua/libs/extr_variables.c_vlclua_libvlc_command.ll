; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_variables.c_vlclua_libvlc_command.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_variables.c_vlclua_libvlc_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VLC_VAR_ISCOMMAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"libvlc's \22%s\22 is not a command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_libvlc_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_libvlc_command(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @vlclua_get_this(i32* %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @vlc_object_instance(i32* %12)
  %14 = call i32* @VLC_OBJECT(i32 %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i8* @luaL_checkstring(i32* %15, i32 1)
  store i8* %16, i8** %7, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @luaL_optstring(i32* %17, i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %19 = inttoptr i64 %18 to i8*
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @var_Type(i32* %21, i8* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @VLC_VAR_ISCOMMAND, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @luaL_error(i32* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 %31, i32* %2, align 4
  br label %43

32:                                               ; preds = %1
  %33 = load i32*, i32** %5, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @var_Set(i32* %33, i8* %34, i8* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_pop(i32* %38, i32 2)
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @vlclua_push_ret(i32* %40, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %32, %28
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32* @vlclua_get_this(i32*) #1

declare dso_local i32* @VLC_OBJECT(i32) #1

declare dso_local i32 @vlc_object_instance(i32*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i64 @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i32 @var_Type(i32*, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i32 @var_Set(i32*, i8*, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @vlclua_push_ret(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
