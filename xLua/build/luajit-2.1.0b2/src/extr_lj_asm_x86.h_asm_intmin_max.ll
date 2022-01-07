; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_intmin_max.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_asm_x86.h_asm_intmin_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@RSET_GPR = common dso_local global i32 0, align 4
@XO_CMOV = common dso_local global i64 0, align 8
@XO_CMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32)* @asm_intmin_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asm_intmin_max(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = load i32, i32* @RSET_GPR, align 4
  %14 = call i32 @ra_dest(i32* %11, %struct.TYPE_5__* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @irref_isk(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %24, %3
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @RSET_GPR, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @rset_exclude(i32 %32, i32 %33)
  %35 = call i32 @ra_alloc1(i32* %30, i32 %31, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* @XO_CMOV, align 8
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %38, 24
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @REX_64IR(%struct.TYPE_5__* %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @emit_rr(i32* %36, i64 %41, i32 %44, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* @XO_CMP, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @REX_64IR(%struct.TYPE_5__* %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @emit_rr(i32* %47, i64 %48, i32 %51, i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ra_left(i32* %54, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @ra_dest(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @irref_isk(i32) #1

declare dso_local i32 @ra_alloc1(i32*, i32, i32) #1

declare dso_local i32 @rset_exclude(i32, i32) #1

declare dso_local i32 @emit_rr(i32*, i64, i32, i32) #1

declare dso_local i32 @REX_64IR(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ra_left(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
