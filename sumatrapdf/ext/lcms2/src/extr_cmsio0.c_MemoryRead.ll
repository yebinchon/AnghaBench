; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio0.c_MemoryRead.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio0.c_MemoryRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_io_handler = type { i64 }
%struct.TYPE_2__ = type { i64, i64, i32* }

@cmsERROR_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Read from memory error. Got %d bytes, block should be of %d bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct._cms_io_handler*, i8*, i64, i64)* @MemoryRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MemoryRead(i32 %0, %struct._cms_io_handler* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_io_handler*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_io_handler* %1, %struct._cms_io_handler** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct._cms_io_handler*, %struct._cms_io_handler** %8, align 8
  %16 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %12, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = mul nsw i64 %19, %20
  store i64 %21, i64* %14, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %14, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %5
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %14, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @cmsERROR_READ, align 4
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = mul nsw i64 %42, %43
  %45 = call i32 @cmsSignalError(i32 %39, i32 %40, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %44)
  store i64 0, i64* %6, align 8
  br label %65

46:                                               ; preds = %5
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %13, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 %52
  store i32* %54, i32** %13, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @memmove(i8* %55, i32* %56, i64 %57)
  %59 = load i64, i64* %14, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load i64, i64* %11, align 8
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %46, %31
  %66 = load i64, i64* %6, align 8
  ret i64 %66
}

declare dso_local i32 @cmsSignalError(i32, i32, i8*, i64, i64) #1

declare dso_local i32 @memmove(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
