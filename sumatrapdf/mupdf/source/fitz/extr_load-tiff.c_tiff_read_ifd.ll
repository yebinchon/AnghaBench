; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_read_ifd.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-tiff.c_tiff_read_ifd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiff = type { i32, i32, i32 }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"overlarge IFD entry count %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tiff*)* @tiff_read_ifd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tiff_read_ifd(i32* %0, %struct.tiff* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tiff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.tiff* %1, %struct.tiff** %4, align 8
  %8 = load %struct.tiff*, %struct.tiff** %4, align 8
  %9 = getelementptr inbounds %struct.tiff, %struct.tiff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tiff*, %struct.tiff** %4, align 8
  %12 = getelementptr inbounds %struct.tiff, %struct.tiff* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %10, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.tiff*, %struct.tiff** %4, align 8
  %16 = call i32 @readshort(%struct.tiff* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul i32 %17, 12
  %19 = load %struct.tiff*, %struct.tiff** %4, align 8
  %20 = getelementptr inbounds %struct.tiff, %struct.tiff* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tiff*, %struct.tiff** %4, align 8
  %23 = getelementptr inbounds %struct.tiff, %struct.tiff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %21, %24
  %26 = icmp ugt i32 %18, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @fz_throw(i32* %28, i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %2
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 2
  store i32 %34, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %46, %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.tiff*, %struct.tiff** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @tiff_read_tag(i32* %40, %struct.tiff* %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 12
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %35

49:                                               ; preds = %35
  ret void
}

declare dso_local i32 @readshort(%struct.tiff*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

declare dso_local i32 @tiff_read_tag(i32*, %struct.tiff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
