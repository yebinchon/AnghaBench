; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-multicast.c_mc_closelocal.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-multicast.c_mc_closelocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_package = type { %struct.mc_package*, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Invalid multicast package reference %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mc_closelocal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc_closelocal(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mc_package*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.mc_package* @lua_touserdata(i32* %6, i32 1)
  store %struct.mc_package* %7, %struct.mc_package** %4, align 8
  %8 = load %struct.mc_package*, %struct.mc_package** %4, align 8
  %9 = getelementptr inbounds %struct.mc_package, %struct.mc_package* %8, i32 0, i32 1
  %10 = call i32 @ATOM_DEC(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.mc_package*, %struct.mc_package** %4, align 8
  %15 = getelementptr inbounds %struct.mc_package, %struct.mc_package* %14, i32 0, i32 0
  %16 = load %struct.mc_package*, %struct.mc_package** %15, align 8
  %17 = call i32 @skynet_free(%struct.mc_package* %16)
  %18 = load %struct.mc_package*, %struct.mc_package** %4, align 8
  %19 = call i32 @skynet_free(%struct.mc_package* %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @luaL_error(i32* %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26, %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.mc_package* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @ATOM_DEC(i32*) #1

declare dso_local i32 @skynet_free(%struct.mc_package*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
