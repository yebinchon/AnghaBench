; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_lloadproto.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_lsproto.c_lloadproto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sproto = type { i32 }

@MAX_GLOBALSPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid global slot index %d\00", align 1
@G_sproto = common dso_local global %struct.sproto** null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"nil sproto at index %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lloadproto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lloadproto(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sproto*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @luaL_optinteger(i32* %6, i32 1, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MAX_GLOBALSPROTO, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @luaL_error(i32* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %10
  %19 = load %struct.sproto**, %struct.sproto*** @G_sproto, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.sproto*, %struct.sproto** %19, i64 %21
  %23 = load %struct.sproto*, %struct.sproto** %22, align 8
  store %struct.sproto* %23, %struct.sproto** %5, align 8
  %24 = load %struct.sproto*, %struct.sproto** %5, align 8
  %25 = icmp eq %struct.sproto* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @luaL_error(i32* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %18
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.sproto*, %struct.sproto** %5, align 8
  %33 = call i32 @lua_pushlightuserdata(i32* %31, %struct.sproto* %32)
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %26, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.sproto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
