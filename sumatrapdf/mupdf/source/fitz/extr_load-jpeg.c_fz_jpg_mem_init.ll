; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-jpeg.c_fz_jpg_mem_init.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-jpeg.c_fz_jpg_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@jpeg_cust_mem_data = common dso_local global i32 0, align 4
@custmptr = common dso_local global i32 0, align 4
@fz_jpg_mem_alloc = common dso_local global i32 0, align 4
@fz_jpg_mem_free = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cannot initialize custom JPEG memory handler\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @fz_jpg_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_jpg_mem_init(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @jpeg_cust_mem_data, align 4
  %6 = load i32, i32* @custmptr, align 4
  %7 = mul nsw i32 %5, %6
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @jpeg_cust_mem_data, align 4
  %10 = call i32 @fz_malloc_struct(i32* %8, i32 %9)
  store i32 %10, i32* @custmptr, align 4
  %11 = load i32, i32* @custmptr, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load i32, i32* @fz_jpg_mem_alloc, align 4
  %15 = load i32, i32* @fz_jpg_mem_free, align 4
  %16 = load i32, i32* @fz_jpg_mem_alloc, align 4
  %17 = load i32, i32* @fz_jpg_mem_free, align 4
  %18 = call i32 @jpeg_cust_mem_init(i32 %11, i8* %13, i32* null, i32* null, i32* null, i32 %14, i32 %15, i32 %16, i32 %17, i32* null)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @custmptr, align 4
  %23 = call i32 @fz_free(i32* %21, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %26 = call i32 @fz_throw(i32* %24, i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %20, %2
  %28 = load i32, i32* @custmptr, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local i32 @fz_malloc_struct(i32*, i32) #1

declare dso_local i32 @jpeg_cust_mem_init(i32, i8*, i32*, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fz_free(i32*, i32) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
