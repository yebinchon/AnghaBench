; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_context.c_fz_drop_context.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_context.c_fz_drop_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32 (i32, %struct.TYPE_16__*)* }
%struct.TYPE_14__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_drop_context(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %3 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %4 = icmp ne %struct.TYPE_16__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %44

6:                                                ; preds = %1
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = call i32 @fz_drop_document_handler_context(%struct.TYPE_16__* %7)
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = call i32 @fz_drop_glyph_cache_context(%struct.TYPE_16__* %9)
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = call i32 @fz_drop_store_context(%struct.TYPE_16__* %11)
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %14 = call i32 @fz_drop_style_context(%struct.TYPE_16__* %13)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %16 = call i32 @fz_drop_tuning_context(%struct.TYPE_16__* %15)
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %18 = call i32 @fz_drop_colorspace_context(%struct.TYPE_16__* %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = call i32 @fz_drop_font_context(%struct.TYPE_16__* %19)
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %22 = call i32 @fz_flush_warnings(%struct.TYPE_16__* %21)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i32 (i32, %struct.TYPE_16__*)*, i32 (i32, %struct.TYPE_16__*)** %36, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = call i32 %37(i32 %41, %struct.TYPE_16__* %42)
  br label %44

44:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @fz_drop_document_handler_context(%struct.TYPE_16__*) #1

declare dso_local i32 @fz_drop_glyph_cache_context(%struct.TYPE_16__*) #1

declare dso_local i32 @fz_drop_store_context(%struct.TYPE_16__*) #1

declare dso_local i32 @fz_drop_style_context(%struct.TYPE_16__*) #1

declare dso_local i32 @fz_drop_tuning_context(%struct.TYPE_16__*) #1

declare dso_local i32 @fz_drop_colorspace_context(%struct.TYPE_16__*) #1

declare dso_local i32 @fz_drop_font_context(%struct.TYPE_16__*) #1

declare dso_local i32 @fz_flush_warnings(%struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
