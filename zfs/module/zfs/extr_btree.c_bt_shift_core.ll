; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_btree.c_bt_shift_core.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_btree.c_bt_shift_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32**, i32**, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@BSD_LEFT = common dso_local global i32 0, align 4
@BSS_TRAPEZOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, i64, i64, i64, i32, i32)* @bt_shift_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt_shift_core(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32**, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32**, align 8
  %21 = alloca i32**, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %15, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %15, align 8
  %36 = mul i64 %34, %35
  %37 = getelementptr inbounds i32*, i32** %33, i64 %36
  store i32** %37, i32*** %16, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @BSD_LEFT, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 -1, i32 1
  store i32 %42, i32* %17, align 4
  %43 = load i32**, i32*** %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %12, align 8
  %47 = mul i64 %45, %46
  %48 = load i64, i64* %15, align 8
  %49 = mul i64 %47, %48
  %50 = getelementptr inbounds i32*, i32** %43, i64 %49
  store i32** %50, i32*** %18, align 8
  %51 = load i64, i64* %11, align 8
  store i64 %51, i64* %19, align 8
  %52 = load i32**, i32*** %16, align 8
  %53 = load i32**, i32*** %18, align 8
  %54 = load i64, i64* %19, align 8
  %55 = load i64, i64* %15, align 8
  %56 = mul i64 %54, %55
  %57 = call i32 @bmov(i32** %52, i32** %53, i64 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @BSS_TRAPEZOID, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %62, i64 %68
  store i32** %69, i32*** %20, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @BSD_LEFT, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %7
  %74 = load i32**, i32*** %20, align 8
  %75 = load i64, i64* %12, align 8
  %76 = sub i64 0, %75
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  br label %82

78:                                               ; preds = %7
  %79 = load i32**, i32*** %20, align 8
  %80 = load i64, i64* %12, align 8
  %81 = getelementptr inbounds i32*, i32** %79, i64 %80
  br label %82

82:                                               ; preds = %78, %73
  %83 = phi i32** [ %77, %73 ], [ %81, %78 ]
  store i32** %83, i32*** %21, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @BSS_TRAPEZOID, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = sext i32 %89 to i64
  %91 = add i64 %84, %90
  store i64 %91, i64* %22, align 8
  %92 = load i32**, i32*** %20, align 8
  %93 = load i32**, i32*** %21, align 8
  %94 = load i64, i64* %22, align 8
  %95 = mul i64 %94, 8
  %96 = call i32 @bmov(i32** %92, i32** %93, i64 %95)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @bmov(i32**, i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
