; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/truetype/extr_ttdriver.c_tt_get_advances.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/truetype/extr_ttdriver.c_tt_get_advances.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FT_LOAD_VERTICAL_LAYOUT = common dso_local global i32 0, align 4
@FT_Err_Ok = common dso_local global i32 0, align 4
@TT_FACE_FLAG_VAR_HADVANCE = common dso_local global i32 0, align 4
@TT_FACE_FLAG_VAR_VADVANCE = common dso_local global i32 0, align 4
@Unimplemented_Feature = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i32, i32*)* @tt_get_advances to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt_get_advances(i32 %0, i64 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @FT_LOAD_VERTICAL_LAYOUT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %5
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %39, %24
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %11, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @TT_Get_VMetrics(%struct.TYPE_4__* %30, i64 %33, i32 0, i32* %13, i32* %14)
  %35 = load i32, i32* %14, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %29
  %40 = load i64, i64* %11, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %11, align 8
  br label %25

42:                                               ; preds = %25
  br label %62

43:                                               ; preds = %5
  store i64 0, i64* %11, align 8
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @TT_Get_HMetrics(%struct.TYPE_4__* %49, i64 %52, i32* %15, i32* %16)
  %54 = load i32, i32* %16, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %48
  %59 = load i64, i64* %11, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %11, align 8
  br label %44

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32, i32* @FT_Err_Ok, align 4
  ret i32 %63
}

declare dso_local i32 @TT_Get_VMetrics(%struct.TYPE_4__*, i64, i32, i32*, i32*) #1

declare dso_local i32 @TT_Get_HMetrics(%struct.TYPE_4__*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
