; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_isk32.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_asm_x86.h_asm_isk32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { i64 }

@IR_KINT64 = common dso_local global i64 0, align 8
@IR_KNULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64*)* @asm_isk32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm_isk32(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @irref_isk(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TYPE_7__* @IR(i32 %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IR_KINT64, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %7, align 8
  store i64 %23, i64* %24, align 8
  store i32 1, i32* %4, align 4
  br label %42

25:                                               ; preds = %12
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = call %struct.TYPE_8__* @ir_kint64(%struct.TYPE_7__* %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i64 @checki32(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = call %struct.TYPE_8__* @ir_kint64(%struct.TYPE_7__* %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  store i32 1, i32* %4, align 4
  br label %42

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40, %3
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %33, %20
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @irref_isk(i32) #1

declare dso_local %struct.TYPE_7__* @IR(i32) #1

declare dso_local i64 @checki32(i32) #1

declare dso_local %struct.TYPE_8__* @ir_kint64(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
