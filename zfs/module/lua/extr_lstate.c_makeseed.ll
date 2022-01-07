; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lstate.c_makeseed.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lstate.c_makeseed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luaO_nilobject = common dso_local global i32* null, align 8
@lua_newstate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @makeseed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @makeseed(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = call i32 (...) @luai_makeseed()
  store i32 %6, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %8 = load i32, i32* %5, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @addbuff(i8* %7, i32 %8, i32* %9)
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @addbuff(i8* %11, i32 %12, i32* %4)
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** @luaO_nilobject, align 8
  %17 = call i32 @addbuff(i8* %14, i32 %15, i32* %16)
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @addbuff(i8* %18, i32 %19, i32* @lua_newstate)
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 %22, 32
  %24 = zext i1 %23 to i32
  %25 = call i32 @lua_assert(i32 %24)
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @luaS_hash(i8* %26, i32 %27, i32 %28)
  ret i32 %29
}

declare dso_local i32 @luai_makeseed(...) #1

declare dso_local i32 @addbuff(i8*, i32, i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @luaS_hash(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
