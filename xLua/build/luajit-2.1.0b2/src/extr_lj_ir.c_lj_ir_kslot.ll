; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ir.c_lj_ir_kslot.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ir.c_lj_ir_kslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@IR_KSLOT = common dso_local global i64 0, align 8
@IRT_P32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lj_ir_kslot(%struct.TYPE_10__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @IRREF2(i64 %15, i64 %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @tref_isk(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %21, %3
  %26 = phi i1 [ false, %3 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @lua_assert(i32 %27)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @IR_KSLOT, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %48, %25
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %83

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  br label %35

54:                                               ; preds = %35
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = call i64 @ir_nextk(%struct.TYPE_10__* %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call %struct.TYPE_11__* @IR(i64 %57)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @IRT_P32, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i64, i64* @IR_KSLOT, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @IR_KSLOT, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @IR_KSLOT, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 %77, i64* %82, align 8
  br label %83

83:                                               ; preds = %54, %46
  %84 = load i64, i64* %10, align 8
  %85 = load i32, i32* @IRT_P32, align 4
  %86 = call i64 @TREF(i64 %84, i32 %85)
  ret i64 %86
}

declare dso_local i64 @IRREF2(i64, i64) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @tref_isk(i64) #1

declare dso_local i64 @ir_nextk(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @IR(i64) #1

declare dso_local i64 @TREF(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
