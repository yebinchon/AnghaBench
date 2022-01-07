; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-jpeg.c_skip_input_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-jpeg.c_skip_input_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.jpeg_source_mgr* }
%struct.jpeg_source_mgr = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64)* @skip_input_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_input_data(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.jpeg_source_mgr*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %8, align 8
  store %struct.jpeg_source_mgr* %9, %struct.jpeg_source_mgr** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %5, align 8
  %16 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %5, align 8
  %21 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %19, %12
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %5, align 8
  %26 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %5, align 8
  %31 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %32, %29
  store i64 %33, i64* %31, align 8
  br label %34

34:                                               ; preds = %23, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
