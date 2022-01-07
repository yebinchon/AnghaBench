; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_ldo.c_luaD_growstack.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_ldo.c_luaD_growstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64 }

@LUAI_MAXSTACK = common dso_local global i32 0, align 4
@LUA_ERRERR = common dso_local global i32 0, align 4
@EXTRA_STACK = common dso_local global i32 0, align 4
@ERRORSTACKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaD_growstack(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LUAI_MAXSTACK, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = load i32, i32* @LUA_ERRERR, align 4
  %17 = call i32 @luaD_throw(%struct.TYPE_6__* %15, i32 %16)
  br label %59

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = call i32 @cast_int(i64 %25)
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @EXTRA_STACK, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 2, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @LUAI_MAXSTACK, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %18
  %37 = load i32, i32* @LUAI_MAXSTACK, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %18
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @LUAI_MAXSTACK, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = load i32, i32* @ERRORSTACKSIZE, align 4
  %51 = call i32 @luaD_reallocstack(%struct.TYPE_6__* %49, i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = call i32 @luaG_runerror(%struct.TYPE_6__* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %58

54:                                               ; preds = %44
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @luaD_reallocstack(%struct.TYPE_6__* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %48
  br label %59

59:                                               ; preds = %58, %14
  ret void
}

declare dso_local i32 @luaD_throw(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cast_int(i64) #1

declare dso_local i32 @luaD_reallocstack(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @luaG_runerror(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
