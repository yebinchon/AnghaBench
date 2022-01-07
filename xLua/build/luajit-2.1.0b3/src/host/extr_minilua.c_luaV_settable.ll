; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaV_settable.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_minilua.c_luaV_settable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@TM_NEWINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"loop in settable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @luaV_settable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaV_settable(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %78, %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 100
  br i1 %16, label %17, label %81

17:                                               ; preds = %14
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @ttistable(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_5__* @hvalue(i32* %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %12, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @luaH_set(i32* %24, %struct.TYPE_5__* %25, i32* %26)
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = call i64 @ttisnil(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TM_NEWINDEX, align 4
  %37 = call i32* @fasttm(i32* %32, i32 %35, i32 %36)
  store i32* %37, i32** %11, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %31, %21
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @setobj(i32* %40, i32* %41, i32* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @luaC_barriert(i32* %46, %struct.TYPE_5__* %47, i32* %48)
  br label %84

50:                                               ; preds = %31
  br label %63

51:                                               ; preds = %17
  %52 = load i32*, i32** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @TM_NEWINDEX, align 4
  %55 = call i32* @luaT_gettmbyobj(i32* %52, i32* %53, i32 %54)
  store i32* %55, i32** %11, align 8
  %56 = call i64 @ttisnil(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @luaG_typeerror(i32* %59, i32* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %51
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32*, i32** %11, align 8
  %65 = call i64 @ttisfunction(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @callTM(i32* %68, i32* %69, i32* %70, i32* %71, i32* %72)
  br label %84

74:                                               ; preds = %63
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @setobj(i32* %75, i32* %10, i32* %76)
  store i32* %10, i32** %6, align 8
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %14

81:                                               ; preds = %14
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @luaG_runerror(i32* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %67, %39
  ret void
}

declare dso_local i64 @ttistable(i32*) #1

declare dso_local %struct.TYPE_5__* @hvalue(i32*) #1

declare dso_local i32* @luaH_set(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32* @fasttm(i32*, i32, i32) #1

declare dso_local i32 @setobj(i32*, i32*, i32*) #1

declare dso_local i32 @luaC_barriert(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32* @luaT_gettmbyobj(i32*, i32*, i32) #1

declare dso_local i32 @luaG_typeerror(i32*, i32*, i8*) #1

declare dso_local i64 @ttisfunction(i32*) #1

declare dso_local i32 @callTM(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @luaG_runerror(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
