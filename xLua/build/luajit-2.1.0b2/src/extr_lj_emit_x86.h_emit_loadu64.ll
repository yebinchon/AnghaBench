; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_emit_x86.h_emit_loadu64.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_emit_x86.h_emit_loadu64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@XO_MOVmi = common dso_local global i32 0, align 4
@XM_REG = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@XI_MOVri = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i64)* @emit_loadu64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_loadu64(%struct.TYPE_4__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @checku32(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @emit_loadi(%struct.TYPE_4__* %13, i32 %14, i64 %15)
  br label %66

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @checki32(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 -4
  %29 = bitcast i32* %28 to i64*
  store i64 %26, i64* %29, align 8
  %30 = load i32, i32* @XO_MOVmi, align 4
  %31 = load i32, i32* @XM_REG, align 4
  %32 = load i32, i32* @REX_64, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32* @emit_opm(i32 %30, i32 %31, i32 %32, i32 %33, i32* %34, i32 -4)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  br label %65

38:                                               ; preds = %17
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %8, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 -8
  %45 = bitcast i32* %44 to i64*
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* @XI_MOVri, align 8
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 7
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 -9
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = ashr i32 %54, 3
  %56 = and i32 %55, 1
  %57 = add nsw i32 72, %56
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 -10
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 -10
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  br label %65

65:                                               ; preds = %38, %22
  br label %66

66:                                               ; preds = %65, %12
  ret void
}

declare dso_local i64 @checku32(i64) #1

declare dso_local i32 @emit_loadi(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i64 @checki32(i32) #1

declare dso_local i32* @emit_opm(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
