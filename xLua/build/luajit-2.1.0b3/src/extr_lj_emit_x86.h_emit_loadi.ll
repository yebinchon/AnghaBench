; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_emit_x86.h_emit_loadi.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_emit_x86.h_emit_loadi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@LJ_32 = common dso_local global i64 0, align 8
@IR_HIOP = common dso_local global i64 0, align 8
@XOg_XOR = common dso_local global i32 0, align 4
@XI_MOVri = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i64)* @emit_loadi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_loadi(%struct.TYPE_7__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %3
  %11 = load i64, i64* @LJ_32, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.TYPE_8__* @IR(i64 %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IR_HIOP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %50, label %22

22:                                               ; preds = %13
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %26, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %22
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = call %struct.TYPE_8__* @IR(i64 %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IR_HIOP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %33, %22, %10
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = load i32, i32* @XOg_XOR, align 4
  %46 = call i32 @XO_ARITH(i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @emit_rr(%struct.TYPE_7__* %44, i32 %46, i32 %47, i32 %48)
  br label %72

50:                                               ; preds = %33, %13, %3
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  store i64* %53, i64** %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 -4
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* @XI_MOVri, align 8
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, 7
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = load i64*, i64** %7, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 -5
  store i64 %61, i64* %63, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 -5
  store i64* %65, i64** %7, align 8
  %66 = load i64*, i64** %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @REXRB(i64* %66, i32 0, i32 %67)
  %69 = load i64*, i64** %7, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i64* %69, i64** %71, align 8
  br label %72

72:                                               ; preds = %50, %43
  ret void
}

declare dso_local %struct.TYPE_8__* @IR(i64) #1

declare dso_local i32 @emit_rr(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @XO_ARITH(i32) #1

declare dso_local i32 @REXRB(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
