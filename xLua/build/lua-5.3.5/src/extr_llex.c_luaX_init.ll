; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_llex.c_luaX_init.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.5/src/extr_llex.c_luaX_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@LUA_ENV = common dso_local global i32 0, align 4
@NUM_RESERVED = common dso_local global i32 0, align 4
@luaX_tokens = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaX_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @LUA_ENV, align 4
  %8 = call %struct.TYPE_5__* @luaS_newliteral(i32* %6, i32 %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = call i32 @obj2gco(%struct.TYPE_5__* %10)
  %12 = call i32 @luaC_fix(i32* %9, i32 %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %34, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @NUM_RESERVED, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load i32*, i32** %2, align 8
  %19 = load i32*, i32** @luaX_tokens, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_5__* @luaS_new(i32* %18, i32 %23)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %5, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = call i32 @obj2gco(%struct.TYPE_5__* %26)
  %28 = call i32 @luaC_fix(i32* %25, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @cast_byte(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %17
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %13

37:                                               ; preds = %13
  ret void
}

declare dso_local %struct.TYPE_5__* @luaS_newliteral(i32*, i32) #1

declare dso_local i32 @luaC_fix(i32*, i32) #1

declare dso_local i32 @obj2gco(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @luaS_new(i32*, i32) #1

declare dso_local i32 @cast_byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
