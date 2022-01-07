; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_select_detect.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_select_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@BC_CALLM = common dso_local global i64 0, align 8
@FF_select = common dso_local global i64 0, align 8
@IR_EQ = common dso_local global i32 0, align 4
@IRT_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @select_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_detect(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @bc_op(i32 %12)
  %14 = load i64, i64* @BC_CALLM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bc_b(i32 %17)
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %59

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @bc_c(i32 %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @bc_a(i32 %30)
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @tvisfunc(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %24
  %37 = load i32*, i32** %5, align 8
  %38 = call %struct.TYPE_12__* @funcV(i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FF_select, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %36
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call %struct.TYPE_12__* @funcV(i32* %46)
  %48 = call i32 @lj_ir_kfunc(%struct.TYPE_11__* %45, %struct.TYPE_12__* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @IR_EQ, align 4
  %50 = load i32, i32* @IRT_FUNC, align 4
  %51 = call i32 @IRTG(i32 %49, i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @bc_a(i32 %53)
  %55 = call i32 @getslot(%struct.TYPE_11__* %52, i64 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @emitir(i32 %51, i32 %55, i32 %56)
  store i32 1, i32* %2, align 4
  br label %60

58:                                               ; preds = %36, %24
  br label %59

59:                                               ; preds = %58, %20, %16, %1
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @bc_op(i32) #1

declare dso_local i32 @bc_b(i32) #1

declare dso_local i32 @bc_c(i32) #1

declare dso_local i64 @bc_a(i32) #1

declare dso_local i64 @tvisfunc(i32*) #1

declare dso_local %struct.TYPE_12__* @funcV(i32*) #1

declare dso_local i32 @lj_ir_kfunc(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTG(i32, i32) #1

declare dso_local i32 @getslot(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
