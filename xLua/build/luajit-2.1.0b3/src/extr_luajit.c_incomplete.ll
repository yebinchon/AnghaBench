; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_luajit.c_incomplete.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_luajit.c_incomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_ERRSYNTAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"<eof>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @incomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @incomplete(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @LUA_ERRSYNTAX, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @lua_tolstring(i32* %13, i32 -1, i64* %6)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = getelementptr inbounds i8, i8* %17, i64 -3
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @LUA_QL(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = call i8* @strstr(i8* %19, i32 %20)
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @lua_pop(i32* %25, i32 1)
  store i32 1, i32* %3, align 4
  br label %29

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i8* @strstr(i8*, i32) #1

declare dso_local i32 @LUA_QL(i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
