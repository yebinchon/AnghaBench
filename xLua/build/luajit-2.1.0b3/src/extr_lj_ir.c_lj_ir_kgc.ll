; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ir.c_lj_ir_kgc.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ir.c_lj_ir_kgc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_11__, i32, i64 }
%struct.TYPE_11__ = type { i64 }

@IR_KGC = common dso_local global i64 0, align 8
@LJ_GC64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_ir_kgc(%struct.TYPE_12__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %8, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = call i32 @J2G(%struct.TYPE_12__* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @isdead(i32 %15, i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @lua_assert(i32 %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @IR_KGC, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %41, %3
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %34
  %36 = call i32* @ir_kgc(%struct.TYPE_13__* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = icmp eq i32* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %83

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %9, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = call i32 @ir_nextkgc(%struct.TYPE_12__* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.TYPE_13__* @IR(i32 %51)
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %7, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = load i64, i64* @LJ_GC64, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @setgcref(i32 %59, i32* %60)
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* @IR_KGC, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @IR_KGC, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @IR_KGC, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 %77, i32* %82, align 4
  br label %83

83:                                               ; preds = %48, %39
  %84 = load i32, i32* %9, align 4
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @TREF(i32 %84, i64 %85)
  ret i32 %86
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @isdead(i32, i32*) #1

declare dso_local i32 @J2G(%struct.TYPE_12__*) #1

declare dso_local i32* @ir_kgc(%struct.TYPE_13__*) #1

declare dso_local i32 @ir_nextkgc(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @IR(i32) #1

declare dso_local i32 @setgcref(i32, i32*) #1

declare dso_local i32 @TREF(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
