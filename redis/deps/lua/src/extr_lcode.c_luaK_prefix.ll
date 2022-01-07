; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lcode.c_luaK_prefix.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lcode.c_luaK_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@NO_JUMP = common dso_local global i32 0, align 4
@VKNUM = common dso_local global i32 0, align 4
@OP_UNM = common dso_local global i32 0, align 4
@OP_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaK_prefix(i32* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %8 = load i32, i32* @NO_JUMP, align 4
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @VKNUM, align 4
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %41 [
    i32 129, label %16
    i32 128, label %29
    i32 130, label %33
  ]

16:                                               ; preds = %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = call i32 @isnumeral(%struct.TYPE_10__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = call i32 @luaK_exp2anyreg(i32* %21, %struct.TYPE_10__* %22)
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @OP_UNM, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = call i32 @codearith(i32* %25, i32 %26, %struct.TYPE_10__* %27, %struct.TYPE_10__* %7)
  br label %43

29:                                               ; preds = %3
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = call i32 @codenot(i32* %30, %struct.TYPE_10__* %31)
  br label %43

33:                                               ; preds = %3
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = call i32 @luaK_exp2anyreg(i32* %34, %struct.TYPE_10__* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @OP_LEN, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = call i32 @codearith(i32* %37, i32 %38, %struct.TYPE_10__* %39, %struct.TYPE_10__* %7)
  br label %43

41:                                               ; preds = %3
  %42 = call i32 @lua_assert(i32 0)
  br label %43

43:                                               ; preds = %41, %33, %29, %24
  ret void
}

declare dso_local i32 @isnumeral(%struct.TYPE_10__*) #1

declare dso_local i32 @luaK_exp2anyreg(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @codearith(i32*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @codenot(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
