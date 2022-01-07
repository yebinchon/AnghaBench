; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_newgrammar.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_newgrammar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@MAXRULES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"grammar has too many rules\00", align 1
@TGrammar = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, i32)* @newgrammar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @newgrammar(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_gettop(i32* %9)
  %11 = add nsw i32 %10, 2
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @collectrules(i32* %12, i32 %13, i32* %5)
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.TYPE_11__* @newtree(i32* %15, i32 %16)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MAXRULES, align 4
  %21 = icmp sle i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @luaL_argcheck(i32* %18, i32 %22, i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @TGrammar, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @lua_newtable(i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @lua_setuservalue(i32* %34, i32 -2)
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @buildgrammar(i32* %36, %struct.TYPE_11__* %37, i32 %38, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @lua_getuservalue(i32* %41, i32 -1)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %48 = call i32 @sib1(%struct.TYPE_11__* %47)
  %49 = call i32 @finalfix(i32* %43, i32 %45, %struct.TYPE_11__* %46, i32 %48)
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @initialrulename(i32* %50, %struct.TYPE_11__* %51, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = call i32 @verifygrammar(i32* %54, %struct.TYPE_11__* %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @lua_pop(i32* %57, i32 1)
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %60, 2
  %62 = add nsw i32 %61, 2
  %63 = sub nsw i32 0, %62
  %64 = call i32 @lua_insert(i32* %59, i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 %66, 2
  %68 = add nsw i32 %67, 1
  %69 = call i32 @lua_pop(i32* %65, i32 %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  ret %struct.TYPE_11__* %70
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @collectrules(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_11__* @newtree(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_setuservalue(i32*, i32) #1

declare dso_local i32 @buildgrammar(i32*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @lua_getuservalue(i32*, i32) #1

declare dso_local i32 @finalfix(i32*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @sib1(%struct.TYPE_11__*) #1

declare dso_local i32 @initialrulename(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @verifygrammar(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
