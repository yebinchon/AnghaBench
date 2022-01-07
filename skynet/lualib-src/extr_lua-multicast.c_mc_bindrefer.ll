; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-multicast.c_mc_bindrefer.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-multicast.c_mc_bindrefer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_package = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Can't bind a multicast package more than once\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mc_bindrefer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc_bindrefer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mc_package**, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.mc_package** @lua_touserdata(i32* %6, i32 1)
  store %struct.mc_package** %7, %struct.mc_package*** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @luaL_checkinteger(i32* %8, i32 2)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mc_package**, %struct.mc_package*** %4, align 8
  %11 = load %struct.mc_package*, %struct.mc_package** %10, align 8
  %12 = getelementptr inbounds %struct.mc_package, %struct.mc_package* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @luaL_error(i32* %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mc_package**, %struct.mc_package*** %4, align 8
  %21 = load %struct.mc_package*, %struct.mc_package** %20, align 8
  %22 = getelementptr inbounds %struct.mc_package, %struct.mc_package* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.mc_package**, %struct.mc_package*** %4, align 8
  %25 = load %struct.mc_package*, %struct.mc_package** %24, align 8
  %26 = call i32 @lua_pushlightuserdata(i32* %23, %struct.mc_package* %25)
  %27 = load %struct.mc_package**, %struct.mc_package*** %4, align 8
  %28 = call i32 @skynet_free(%struct.mc_package** %27)
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.mc_package** @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.mc_package*) #1

declare dso_local i32 @skynet_free(%struct.mc_package**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
