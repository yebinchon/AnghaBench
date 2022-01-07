; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/base/extr_ftadvanc.c__ft_face_scale_advances.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/base/extr_ftadvanc.c__ft_face_scale_advances.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@FT_LOAD_NO_SCALE = common dso_local global i32 0, align 4
@FT_Err_Ok = common dso_local global i32 0, align 4
@Invalid_Size_Handle = common dso_local global i32 0, align 4
@FT_LOAD_VERTICAL_LAYOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i64, i32)* @_ft_face_scale_advances to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ft_face_scale_advances(%struct.TYPE_7__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @FT_LOAD_NO_SCALE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %17, i32* %5, align 4
  br label %65

18:                                               ; preds = %4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @Invalid_Size_Handle, align 4
  %25 = call i32 @FT_THROW(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %65

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @FT_LOAD_VERTICAL_LAYOUT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  br label %45

38:                                               ; preds = %26
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %38, %31
  store i64 0, i64* %11, align 8
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i32*, i32** %7, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @FT_MulDiv(i32 %54, i32 %55, i32 64)
  %57 = load i32*, i32** %7, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %50
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %11, align 8
  br label %46

63:                                               ; preds = %46
  %64 = load i32, i32* @FT_Err_Ok, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %23, %16
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @FT_THROW(i32) #1

declare dso_local i32 @FT_MulDiv(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
