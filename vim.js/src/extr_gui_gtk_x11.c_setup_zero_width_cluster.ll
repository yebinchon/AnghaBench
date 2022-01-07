; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_setup_zero_width_cluster.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_gtk_x11.c_setup_zero_width_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { i64, i32, i64 }

@gui = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@PANGO_SCALE = common dso_local global i32 0, align 4
@p_linespace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32, i32)* @setup_zero_width_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_zero_width_cluster(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 0), align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32, i32* @PANGO_SCALE, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = sub nsw i32 0, %19
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %21, %22
  %24 = call i32 @MAX(i32 0, i32 %23)
  %25 = sdiv i32 %24, 2
  %26 = add nsw i32 %20, %25
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pango_font_get_glyph_extents(i32 %36, i32 %39, %struct.TYPE_14__* %11, %struct.TYPE_14__* %12)
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %5
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %45
  store i32 %50, i32* %48, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gui, i32 0, i32 1), align 4
  %54 = load i32, i32* @p_linespace, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* @PANGO_SCALE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %52, %58
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store i64 %59, i64* %62, align 8
  br label %76

63:                                               ; preds = %5
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 0, %64
  %66 = load i32, i32* %13, align 4
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %66, %68
  %70 = call i32 @MAX(i32 0, i32 %69)
  %71 = sdiv i32 %70, 2
  %72 = add nsw i32 %65, %71
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  br label %76

76:                                               ; preds = %63, %44
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @pango_font_get_glyph_extents(i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
