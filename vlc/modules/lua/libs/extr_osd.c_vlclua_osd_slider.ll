; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_osd.c_vlclua_osd_slider.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_osd.c_vlclua_osd_slider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOUT_SPU_CHANNEL_OSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"\22%s\22 is not a valid slider type.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_osd_slider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_osd_slider(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @luaL_checkinteger(i32* %9, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @luaL_checkstring(i32* %11, i32 2)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @vlc_osd_slider_type_from_string(i8* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @VOUT_SPU_CHANNEL_OSD, align 4
  %17 = call i64 @luaL_optinteger(i32* %15, i32 3, i32 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @luaL_error(i32* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %1
  %26 = load i32*, i32** %3, align 8
  %27 = call i32* @vlclua_get_vout_internal(i32* %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @vout_OSDSlider(i32* %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @vout_Release(i32* %36)
  br label %38

38:                                               ; preds = %30, %25
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @vlc_osd_slider_type_from_string(i8*) #1

declare dso_local i64 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i32* @vlclua_get_vout_internal(i32*) #1

declare dso_local i32 @vout_OSDSlider(i32*, i32, i32, i32) #1

declare dso_local i32 @vout_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
