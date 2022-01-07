; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_loadlib.c_searcher_C.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_loadlib.c_searcher_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"cpath\00", align 1
@LUA_CSUBSEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @searcher_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @searcher_C(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i8* @luaL_checkstring(i32* %6, i32 1)
  store i8* %7, i8** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @LUA_CSUBSEP, align 4
  %11 = call i8* @findfile(i32* %8, i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @loadfunc(i32* %17, i8* %18, i8* %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @checkload(i32* %16, i32 %22, i8* %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %15, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i8* @findfile(i32*, i8*, i8*, i32) #1

declare dso_local i32 @checkload(i32*, i32, i8*) #1

declare dso_local i64 @loadfunc(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
