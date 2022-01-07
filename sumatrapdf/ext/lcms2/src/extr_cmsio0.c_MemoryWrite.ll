; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio0.c_MemoryWrite.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio0.c_MemoryWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_io_handler = type { i64, i64 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_io_handler*, i64, i8*)* @MemoryWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MemoryWrite(i32 %0, %struct._cms_io_handler* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._cms_io_handler*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct._cms_io_handler* %1, %struct._cms_io_handler** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct._cms_io_handler*, %struct._cms_io_handler** %7, align 8
  %12 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @cmsUNUSED_PARAMETER(i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %18 = icmp eq %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  br label %75

21:                                               ; preds = %4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %31, %21
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %5, align 4
  br label %75

44:                                               ; preds = %39
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @memmove(i64 %51, i8* %52, i64 %53)
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct._cms_io_handler*, %struct._cms_io_handler** %7, align 8
  %64 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %44
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct._cms_io_handler*, %struct._cms_io_handler** %7, align 8
  %72 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %44
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %42, %19
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i32) #1

declare dso_local i32 @memmove(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
