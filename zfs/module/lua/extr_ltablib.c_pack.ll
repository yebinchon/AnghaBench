; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_ltablib.c_pack.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_ltablib.c_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @lua_gettop(i32* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @lua_createtable(i32* %7, i32 %8, i32 1)
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @lua_pushinteger(i32* %10, i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @lua_setfield(i32* %13, i32 -2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @lua_pushvalue(i32* %18, i32 1)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @lua_rawseti(i32* %20, i32 -2, i32 1)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @lua_replace(i32* %22, i32 1)
  %24 = load i32, i32* %3, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %32, %17
  %26 = load i32, i32* %4, align 4
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @lua_rawseti(i32* %29, i32 1, i32 %30)
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  br label %25

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %1
  ret i32 1
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_replace(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
