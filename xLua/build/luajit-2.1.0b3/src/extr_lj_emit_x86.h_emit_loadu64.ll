; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_emit_x86.h_emit_loadu64.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_emit_x86.h_emit_loadu64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

@XO_MOVmi = common dso_local global i32 0, align 4
@XM_REG = common dso_local global i32 0, align 4
@REX_64 = common dso_local global i32 0, align 4
@XI_MOVri = common dso_local global i64 0, align 8
@RID_DISPATCH = common dso_local global i32 0, align 4
@RID_RIP = common dso_local global i32 0, align 4
@XO_LEA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i64)* @emit_loadu64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_loadu64(%struct.TYPE_8__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i64 @checku32(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @emit_loadi(%struct.TYPE_8__* %13, i32 %14, i64 %15)
  br label %65

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @checki32(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 -4
  %28 = bitcast i32* %27 to i64*
  store i64 %25, i64* %28, align 8
  %29 = load i32, i32* @XO_MOVmi, align 4
  %30 = load i32, i32* @XM_REG, align 4
  %31 = load i32, i32* @REX_64, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32* @emit_opm(i32 %29, i32 %30, i32 %31, i32 %32, i32* %33, i32 -4)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  br label %64

37:                                               ; preds = %17
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 -8
  %44 = bitcast i32* %43 to i64*
  store i64 %41, i64* %44, align 8
  %45 = load i64, i64* @XI_MOVri, align 8
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 7
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 -9
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = ashr i32 %53, 3
  %55 = and i32 %54, 1
  %56 = add nsw i32 72, %55
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 -10
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 -10
  store i32* %60, i32** %8, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  br label %64

64:                                               ; preds = %37, %21
  br label %65

65:                                               ; preds = %64, %12
  ret void
}

declare dso_local i64 @checku32(i64) #1

declare dso_local i32 @emit_loadi(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i64 @checki32(i64) #1

declare dso_local i32* @emit_opm(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
