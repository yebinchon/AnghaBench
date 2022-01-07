; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ffrecord.c_recff_string_start.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_ffrecord.c_recff_string_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@IR_LT = common dso_local global i32 0, align 4
@IR_ADD = common dso_local global i32 0, align 4
@IR_GE = common dso_local global i32 0, align 4
@IR_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i64*, i32, i32, i32)* @recff_string_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recff_string_start(i32* %0, %struct.TYPE_3__* %1, i64* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i64*, i64** %9, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* %13, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %6
  %19 = load i32, i32* @IR_LT, align 4
  %20 = call i32 @IRTGI(i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @emitir(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @IR_ADD, align 4
  %25 = call i32 @IRTI(i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @emitir(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* %13, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load i32, i32* @IR_LT, align 4
  %38 = call i32 @IRTGI(i32 %37)
  br label %42

39:                                               ; preds = %18
  %40 = load i32, i32* @IR_GE, align 4
  %41 = call i32 @IRTGI(i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ]
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @emitir(i32 %43, i32 %44, i32 %45)
  %47 = load i64, i64* %13, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %10, align 4
  store i64 0, i64* %13, align 8
  br label %51

51:                                               ; preds = %49, %42
  br label %77

52:                                               ; preds = %6
  %53 = load i64, i64* %13, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* @IR_EQ, align 4
  %57 = call i32 @IRTGI(i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @emitir(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %10, align 4
  br label %76

62:                                               ; preds = %52
  %63 = load i32, i32* @IR_ADD, align 4
  %64 = call i32 @IRTI(i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @lj_ir_kint(i32* %66, i32 -1)
  %68 = call i32 @emitir(i32 %64, i32 %65, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* @IR_GE, align 4
  %70 = call i32 @IRTGI(i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @emitir(i32 %70, i32 %71, i32 %72)
  %74 = load i64, i64* %13, align 8
  %75 = add nsw i64 %74, -1
  store i64 %75, i64* %13, align 8
  br label %76

76:                                               ; preds = %62, %55
  br label %77

77:                                               ; preds = %76, %51
  %78 = load i64, i64* %13, align 8
  %79 = load i64*, i64** %9, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i32 @emitir(i32, i32, i32) #1

declare dso_local i32 @IRTGI(i32) #1

declare dso_local i32 @IRTI(i32) #1

declare dso_local i32 @lj_ir_kint(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
