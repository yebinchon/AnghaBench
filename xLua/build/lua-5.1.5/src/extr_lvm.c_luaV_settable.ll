; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lvm.c_luaV_settable.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lvm.c_luaV_settable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@MAXTAGLOOP = common dso_local global i32 0, align 4
@TM_NEWINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"loop in settable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaV_settable(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %79, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MAXTAGLOOP, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @ttistable(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = call %struct.TYPE_5__* @hvalue(i32* %23)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %12, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32* @luaH_set(i32* %25, %struct.TYPE_5__* %26, i32* %27)
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = call i64 @ttisnil(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TM_NEWINDEX, align 4
  %38 = call i32* @fasttm(i32* %33, i32 %36, i32 %37)
  store i32* %38, i32** %11, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %32, %22
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @setobj2t(i32* %41, i32* %42, i32 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @luaC_barriert(i32* %47, %struct.TYPE_5__* %48, i32 %49)
  br label %85

51:                                               ; preds = %32
  br label %64

52:                                               ; preds = %18
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* @TM_NEWINDEX, align 4
  %56 = call i32* @luaT_gettmbyobj(i32* %53, i32* %54, i32 %55)
  store i32* %56, i32** %11, align 8
  %57 = call i64 @ttisnil(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @luaG_typeerror(i32* %60, i32* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %52
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32*, i32** %11, align 8
  %66 = call i64 @ttisfunction(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i32*, i32** %5, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @callTM(i32* %69, i32* %70, i32* %71, i32* %72, i32 %73)
  br label %85

75:                                               ; preds = %64
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @setobj(i32* %76, i32* %10, i32* %77)
  store i32* %10, i32** %6, align 8
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %14

82:                                               ; preds = %14
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @luaG_runerror(i32* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %82, %68, %40
  ret void
}

declare dso_local i64 @ttistable(i32*) #1

declare dso_local %struct.TYPE_5__* @hvalue(i32*) #1

declare dso_local i32* @luaH_set(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32* @fasttm(i32*, i32, i32) #1

declare dso_local i32 @setobj2t(i32*, i32*, i32) #1

declare dso_local i32 @luaC_barriert(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32* @luaT_gettmbyobj(i32*, i32*, i32) #1

declare dso_local i32 @luaG_typeerror(i32*, i32*, i8*) #1

declare dso_local i64 @ttisfunction(i32*) #1

declare dso_local i32 @callTM(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @setobj(i32*, i32*, i32*) #1

declare dso_local i32 @luaG_runerror(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
