; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_context.c_fz_clone_context.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_context.c_fz_clone_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_19__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_20__* (i32, i32)* }
%struct.TYPE_19__ = type { i64, i64 }

@fz_locks_default = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @fz_clone_context(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %5 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %6 = icmp eq %struct.TYPE_20__* %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @fz_locks_default, i32 0, i32 0), align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @fz_locks_default, i32 0, i32 1), align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %2, align 8
  br label %56

22:                                               ; preds = %14, %7
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_20__* (i32, i32)*, %struct.TYPE_20__* (i32, i32)** %25, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_20__* %26(i32 %30, i32 32)
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %4, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %33 = icmp ne %struct.TYPE_20__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %2, align 8
  br label %56

35:                                               ; preds = %22
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %38 = call i32 @memcpy(%struct.TYPE_20__* %36, %struct.TYPE_20__* %37, i32 32)
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = call i32 @fz_init_error_context(%struct.TYPE_20__* %39)
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = call i32 @fz_keep_document_handler_context(%struct.TYPE_20__* %41)
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %44 = call i32 @fz_keep_style_context(%struct.TYPE_20__* %43)
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = call i32 @fz_keep_tuning_context(%struct.TYPE_20__* %45)
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = call i32 @fz_keep_font_context(%struct.TYPE_20__* %47)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %50 = call i32 @fz_keep_colorspace_context(%struct.TYPE_20__* %49)
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = call i32 @fz_keep_store_context(%struct.TYPE_20__* %51)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %54 = call i32 @fz_keep_glyph_cache(%struct.TYPE_20__* %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_20__* %55, %struct.TYPE_20__** %2, align 8
  br label %56

56:                                               ; preds = %35, %34, %21
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  ret %struct.TYPE_20__* %57
}

declare dso_local i32 @memcpy(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @fz_init_error_context(%struct.TYPE_20__*) #1

declare dso_local i32 @fz_keep_document_handler_context(%struct.TYPE_20__*) #1

declare dso_local i32 @fz_keep_style_context(%struct.TYPE_20__*) #1

declare dso_local i32 @fz_keep_tuning_context(%struct.TYPE_20__*) #1

declare dso_local i32 @fz_keep_font_context(%struct.TYPE_20__*) #1

declare dso_local i32 @fz_keep_colorspace_context(%struct.TYPE_20__*) #1

declare dso_local i32 @fz_keep_store_context(%struct.TYPE_20__*) #1

declare dso_local i32 @fz_keep_glyph_cache(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
