; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_read_line.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_read_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @read_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_line(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @luaL_buffinit(i32* %9, i32* %6)
  br label %11

11:                                               ; preds = %45, %2
  %12 = call i8* @luaL_prepbuffer(i32* %6)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* @BUFSIZ, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @fgets(i8* %13, i32 %14, i32* %15)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = call i32 @luaL_pushresult(i32* %6)
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @lua_objlen(i32* %20, i32 -1)
  %22 = icmp sgt i64 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %46

24:                                               ; preds = %11
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 10
  br i1 %36, label %37, label %40

37:                                               ; preds = %29, %24
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @luaL_addsize(i32* %6, i64 %38)
  br label %45

40:                                               ; preds = %29
  %41 = load i64, i64* %7, align 8
  %42 = sub i64 %41, 1
  %43 = call i32 @luaL_addsize(i32* %6, i64 %42)
  %44 = call i32 @luaL_pushresult(i32* %6)
  store i32 1, i32* %3, align 4
  br label %46

45:                                               ; preds = %37
  br label %11

46:                                               ; preds = %40, %18
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i8* @luaL_prepbuffer(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i64 @lua_objlen(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @luaL_addsize(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
