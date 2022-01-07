; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-dct.c_fz_dct_mem_init.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_filter-dct.c_fz_dct_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { i32 }
%struct.TYPE_3__ = type { i32 }

@jpeg_cust_mem_data = common dso_local global i32 0, align 4
@custmptr = common dso_local global i32 0, align 4
@fz_dct_mem_alloc = common dso_local global i32 0, align 4
@fz_dct_mem_free = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cannot initialize custom JPEG memory handler\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jpeg_decompress_struct*, %struct.TYPE_3__*)* @fz_dct_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_dct_mem_init(%struct.jpeg_decompress_struct* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32, i32* @jpeg_cust_mem_data, align 4
  %6 = load i32, i32* @custmptr, align 4
  %7 = mul nsw i32 %5, %6
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @jpeg_cust_mem_data, align 4
  %12 = call i32 @fz_malloc_struct(i32 %10, i32 %11)
  store i32 %12, i32* @custmptr, align 4
  %13 = load i32, i32* @custmptr, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = bitcast %struct.TYPE_3__* %14 to i8*
  %16 = load i32, i32* @fz_dct_mem_alloc, align 4
  %17 = load i32, i32* @fz_dct_mem_free, align 4
  %18 = load i32, i32* @fz_dct_mem_alloc, align 4
  %19 = load i32, i32* @fz_dct_mem_free, align 4
  %20 = call i32 @jpeg_cust_mem_init(i32 %13, i8* %15, i32* null, i32* null, i32* null, i32 %16, i32 %17, i32 %18, i32 %19, i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @custmptr, align 4
  %27 = call i32 @fz_free(i32 %25, i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %32 = call i32 @fz_throw(i32 %30, i32 %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %22, %2
  %34 = load i32, i32* @custmptr, align 4
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @fz_malloc_struct(i32, i32) #1

declare dso_local i32 @jpeg_cust_mem_init(i32, i8*, i32*, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fz_free(i32, i32) #1

declare dso_local i32 @fz_throw(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
