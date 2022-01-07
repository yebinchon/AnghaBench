; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_snap.c_snap_replay_const.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_snap.c_snap_replay_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@TREF_NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @snap_replay_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snap_replay_const(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %45 [
    i32 129, label %9
    i32 132, label %15
    i32 133, label %21
    i32 130, label %30
    i32 131, label %30
    i32 128, label %40
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @irt_type(i32 %12)
  %14 = call i32 @TREF_PRI(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %48

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @lj_ir_kint(i32* %16, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = call i32 @ir_kgc(%struct.TYPE_7__* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @irt_t(i32 %27)
  %29 = call i32 @lj_ir_kgc(i32* %22, i32 %24, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %48

30:                                               ; preds = %2, %2
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = call %struct.TYPE_8__* @ir_k64(%struct.TYPE_7__* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lj_ir_k64(i32* %31, i32 %34, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %48

40:                                               ; preds = %2
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = call i32 @ir_kptr(%struct.TYPE_7__* %42)
  %44 = call i32 @lj_ir_kptr(i32* %41, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %48

45:                                               ; preds = %2
  %46 = call i32 @lua_assert(i32 0)
  %47 = load i32, i32* @TREF_NIL, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %40, %30, %21, %15, %9
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @TREF_PRI(i32) #1

declare dso_local i32 @irt_type(i32) #1

declare dso_local i32 @lj_ir_kint(i32*, i32) #1

declare dso_local i32 @lj_ir_kgc(i32*, i32, i32) #1

declare dso_local i32 @ir_kgc(%struct.TYPE_7__*) #1

declare dso_local i32 @irt_t(i32) #1

declare dso_local i32 @lj_ir_k64(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @ir_k64(%struct.TYPE_7__*) #1

declare dso_local i32 @lj_ir_kptr(i32*, i32) #1

declare dso_local i32 @ir_kptr(%struct.TYPE_7__*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
