; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_dialog_add_spin_icon.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/libs/extr_dialog.c_vlclua_dialog_add_spin_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"dialog:add_image usage: (filename)\00", align 1
@EXTENSION_WIDGET_SPIN_ICON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @vlclua_dialog_add_spin_icon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlclua_dialog_add_spin_icon(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @lua_isstring(i32* %5, i32 2)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @luaL_error(i32* %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  %12 = call %struct.TYPE_4__* @calloc(i32 1, i32 4)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %4, align 8
  %13 = load i32, i32* @EXTENSION_WIDGET_SPIN_ICON, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = call i32 @vlclua_create_widget_inner(i32* %16, i32 0, %struct.TYPE_4__* %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

declare dso_local i32 @vlclua_create_widget_inner(i32*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
