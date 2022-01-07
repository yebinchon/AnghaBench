; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_fill_unroll.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_crecord.c_crec_fill_unroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@IRT_U8 = common dso_local global i32 0, align 4
@CREC_COPY_MAXUNROLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i64)* @crec_fill_unroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crec_fill_unroll(%struct.TYPE_3__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32, i32* @IRT_U8, align 4
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @lj_fls(i64 %12)
  %14 = mul nsw i32 2, %13
  %15 = add nsw i32 %11, %14
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %49, %3
  br label %17

17:                                               ; preds = %28, %16
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* %6, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @CREC_COPY_MAXUNROLL, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i64 0, i64* %4, align 8
  br label %55

28:                                               ; preds = %23
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i64 %29, i64* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %8, align 8
  br label %17

44:                                               ; preds = %17
  %45 = load i64, i64* %7, align 8
  %46 = ashr i64 %45, 1
  store i64 %46, i64* %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %47, 2
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %16, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %53, %27
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i32 @lj_fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
