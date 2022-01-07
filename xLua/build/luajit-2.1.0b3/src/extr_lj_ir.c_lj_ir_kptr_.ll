; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ir.c_lj_ir_kptr_.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ir.c_lj_ir_kptr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_11__, i32, i64 }
%struct.TYPE_11__ = type { i32 }

@LJ_GC64 = common dso_local global i64 0, align 8
@IRT_PGC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lj_ir_kptr_(%struct.TYPE_12__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %8, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %33, %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i64 %26
  %28 = call i8* @ir_kptr(%struct.TYPE_13__* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %75

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %9, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = call i32 @ir_nextk(%struct.TYPE_12__* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.TYPE_13__* @IR(i32 %43)
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %7, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = load i64, i64* @LJ_GC64, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @setmref(i32 %51, i8* %52)
  %54 = load i32, i32* @IRT_PGC, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 %69, i32* %74, align 4
  br label %75

75:                                               ; preds = %40, %31
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @IRT_PGC, align 4
  %78 = call i32 @TREF(i32 %76, i32 %77)
  ret i32 %78
}

declare dso_local i8* @ir_kptr(%struct.TYPE_13__*) #1

declare dso_local i32 @ir_nextk(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @IR(i32) #1

declare dso_local i32 @setmref(i32, i8*) #1

declare dso_local i32 @TREF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
