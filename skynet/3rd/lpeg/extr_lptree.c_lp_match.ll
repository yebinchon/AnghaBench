; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_lp_match.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_lp_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@INITCAPSIZE = common dso_local global i32 0, align 4
@SUBJIDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lp_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_match(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %14 = load i32, i32* @INITCAPSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_4__* @getpatt(i32* %18, i32 1, i32* null)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @getpattern(i32* %20, i32 1)
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %8, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  br label %36

32:                                               ; preds = %1
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = call i32* @prepcompile(i32* %33, %struct.TYPE_4__* %34, i32 1)
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32* [ %31, %28 ], [ %35, %32 ]
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @SUBJIDX, align 4
  %40 = call i8* @luaL_checklstring(i32* %38, i32 %39, i64* %7)
  store i8* %40, i8** %10, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @initposition(i32* %41, i64 %42)
  store i64 %43, i64* %11, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @lua_gettop(i32* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @lua_pushnil(i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @lua_pushlightuserdata(i32* %48, i32* %17)
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @lua_getuservalue(i32* %50, i32 1)
  %52 = load i32*, i32** %3, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i8* @match(i32* %52, i8* %53, i8* %56, i8* %59, i32* %60, i32* %17, i32 %61)
  store i8* %62, i8** %6, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %36
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @lua_pushnil(i32* %66)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %74

68:                                               ; preds = %36
  %69 = load i32*, i32** %3, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @getcaptures(i32* %69, i8* %70, i8* %71, i32 %72)
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_4__* @getpatt(i32*, i32, i32*) #2

declare dso_local i32 @getpattern(i32*, i32) #2

declare dso_local i32* @prepcompile(i32*, %struct.TYPE_4__*, i32) #2

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #2

declare dso_local i64 @initposition(i32*, i64) #2

declare dso_local i32 @lua_gettop(i32*) #2

declare dso_local i32 @lua_pushnil(i32*) #2

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #2

declare dso_local i32 @lua_getuservalue(i32*, i32) #2

declare dso_local i8* @match(i32*, i8*, i8*, i8*, i32*, i32*, i32) #2

declare dso_local i32 @getcaptures(i32*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
