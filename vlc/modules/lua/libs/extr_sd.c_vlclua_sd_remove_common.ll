; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_sd.c_vlclua_sd_remove_common.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_sd.c_vlclua_sd_remove_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"expected item\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"already removed item\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @vlclua_sd_remove_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_sd_remove_common(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @vlclua_get_this(i32* %8)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load i32**, i32*** %5, align 8
  %12 = icmp eq i32** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @luaL_error(i32* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i32**, i32*** %5, align 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load i32**, i32*** %5, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @luaL_error(i32* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %16
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @services_discovery_RemoveItem(i32* %26, i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @input_item_Release(i32* %29)
  %31 = load i32**, i32*** %5, align 8
  store i32* null, i32** %31, align 8
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %25, %22, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @vlclua_get_this(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @services_discovery_RemoveItem(i32*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
