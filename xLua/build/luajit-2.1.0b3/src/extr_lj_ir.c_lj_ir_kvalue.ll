; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ir.c_lj_ir_kvalue.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ir.c_lj_ir_kvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@IR_KSLOT = common dso_local global i32 0, align 4
@CTID_INT64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_ir_kvalue(i32* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @UNUSED(i32* %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IR_KSLOT, align 4
  %13 = icmp ne i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @lua_assert(i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %57 [
    i32 129, label %19
    i32 134, label %26
    i32 135, label %32
    i32 128, label %42
    i32 132, label %42
    i32 131, label %47
    i32 130, label %50
  ]

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @irt_toitype(i32 %23)
  %25 = call i32 @setpriV(i32* %20, i32 %24)
  br label %59

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @setintV(i32* %27, i32 %30)
  br label %59

32:                                               ; preds = %3
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = call i32 @ir_kgc(%struct.TYPE_9__* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @irt_toitype(i32 %39)
  %41 = call i32 @setgcV(i32* %33, i32* %34, i32 %36, i32 %40)
  br label %59

42:                                               ; preds = %3, %3
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = call i32* @ir_kptr(%struct.TYPE_9__* %44)
  %46 = call i32 @setlightudV(i32* %43, i32* %45)
  br label %59

47:                                               ; preds = %3
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @setlightudV(i32* %48, i32* null)
  br label %59

50:                                               ; preds = %3
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = call %struct.TYPE_10__* @ir_knum(%struct.TYPE_9__* %52)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @setnumV(i32* %51, i32 %55)
  br label %59

57:                                               ; preds = %3
  %58 = call i32 @lua_assert(i32 0)
  br label %59

59:                                               ; preds = %57, %50, %47, %42, %32, %26, %19
  ret void
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @setpriV(i32*, i32) #1

declare dso_local i32 @irt_toitype(i32) #1

declare dso_local i32 @setintV(i32*, i32) #1

declare dso_local i32 @setgcV(i32*, i32*, i32, i32) #1

declare dso_local i32 @ir_kgc(%struct.TYPE_9__*) #1

declare dso_local i32 @setlightudV(i32*, i32*) #1

declare dso_local i32* @ir_kptr(%struct.TYPE_9__*) #1

declare dso_local i32 @setnumV(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @ir_knum(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
