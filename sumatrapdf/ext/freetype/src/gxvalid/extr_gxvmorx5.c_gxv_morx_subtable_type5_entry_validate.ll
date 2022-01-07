; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/gxvalid/extr_gxvmorx5.c_gxv_morx_subtable_type5_entry_validate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/gxvalid/extr_gxvmorx5.c_gxv_morx_subtable_type5_entry_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_3__*, i32, i32, i32)* @gxv_morx_subtable_type5_entry_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_morx_subtable_type5_entry_validate(i32 %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @FT_UNUSED(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 5
  %21 = and i32 %20, 31
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 31
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %14, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 16
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %15, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %16, align 4
  %34 = load i64, i64* %15, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %6
  %37 = load i64, i64* %13, align 8
  %38 = icmp ne i64 0, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i64, i64* %15, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* %13, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @gxv_morx_subtable_type5_InsertList_validate(i32 %41, i64 %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %36, %6
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i64, i64* %14, align 8
  %52 = icmp ne i64 0, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %16, align 4
  %55 = load i64, i64* %14, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @gxv_morx_subtable_type5_InsertList_validate(i32 %54, i64 %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %50, %47
  ret void
}

declare dso_local i32 @FT_UNUSED(i32) #1

declare dso_local i32 @gxv_morx_subtable_type5_InsertList_validate(i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
