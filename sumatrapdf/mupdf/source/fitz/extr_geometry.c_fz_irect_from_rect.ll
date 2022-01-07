; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_irect_from_rect.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_geometry.c_fz_irect_from_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@MIN_SAFE_INT = common dso_local global i32 0, align 4
@MAX_SAFE_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_irect_from_rect(%struct.TYPE_7__* noalias sret %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = bitcast %struct.TYPE_6__* %4 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %1, i64* %6, align 4
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %2, i64* %7, align 4
  %8 = bitcast %struct.TYPE_6__* %4 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 4
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  %12 = load i64, i64* %11, align 4
  %13 = call i64 @fz_is_empty_rect(i64 %10, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i8* null, i8** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  store i8* null, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  store i8* null, i8** %19, align 8
  br label %49

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @floorf(i32 %22)
  %24 = load i32, i32* @MIN_SAFE_INT, align 4
  %25 = load i32, i32* @MAX_SAFE_INT, align 4
  %26 = call i8* @fz_clamp(i32 %23, i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @floorf(i32 %29)
  %31 = load i32, i32* @MIN_SAFE_INT, align 4
  %32 = load i32, i32* @MAX_SAFE_INT, align 4
  %33 = call i8* @fz_clamp(i32 %30, i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ceilf(i32 %36)
  %38 = load i32, i32* @MIN_SAFE_INT, align 4
  %39 = load i32, i32* @MAX_SAFE_INT, align 4
  %40 = call i8* @fz_clamp(i32 %37, i32 %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ceilf(i32 %43)
  %45 = load i32, i32* @MIN_SAFE_INT, align 4
  %46 = load i32, i32* @MAX_SAFE_INT, align 4
  %47 = call i8* @fz_clamp(i32 %44, i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  br label %49

49:                                               ; preds = %20, %15
  ret void
}

declare dso_local i64 @fz_is_empty_rect(i64, i64) #1

declare dso_local i8* @fz_clamp(i32, i32, i32) #1

declare dso_local i32 @floorf(i32) #1

declare dso_local i32 @ceilf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
