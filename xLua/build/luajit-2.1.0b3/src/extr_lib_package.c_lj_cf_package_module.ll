; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_package.c_lj_cf_package_module.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_package.c_lj_cf_package_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"_NAME\00", align 1
@LJ_52 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @lj_cf_package_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lj_cf_package_module(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = call i8* @luaL_checkstring(%struct.TYPE_12__* %5, i32 1)
  store i8* %6, i8** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @luaL_pushmodule(%struct.TYPE_12__* %15, i8* %16, i32 1)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = call i32 @lua_getfield(%struct.TYPE_12__* %18, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = call i32 @lua_isnil(%struct.TYPE_12__* %20, i32 -1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = call i32 @lua_pop(%struct.TYPE_12__* %24, i32 1)
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = call i32 @lua_pop(%struct.TYPE_12__* %27, i32 1)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @modinit(%struct.TYPE_12__* %29, i8* %30)
  br label %32

32:                                               ; preds = %26, %23
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = call i32 @lua_pushvalue(%struct.TYPE_12__* %33, i32 -1)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = call i32 @setfenv(%struct.TYPE_12__* %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dooptions(%struct.TYPE_12__* %37, i32 %38)
  %40 = load i32, i32* @LJ_52, align 4
  ret i32 %40
}

declare dso_local i8* @luaL_checkstring(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @luaL_pushmodule(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @lua_getfield(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @lua_isnil(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @lua_pop(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @modinit(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @lua_pushvalue(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @setfenv(%struct.TYPE_12__*) #1

declare dso_local i32 @dooptions(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
