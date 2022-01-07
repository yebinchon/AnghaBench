; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio0.c_MemoryClose.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio0.c_MemoryClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_io_handler = type { %struct._cms_io_handler*, i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_io_handler*)* @MemoryClose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MemoryClose(i32 %0, %struct._cms_io_handler* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._cms_io_handler*, align 8
  %5 = alloca %struct._cms_io_handler*, align 8
  store i32 %0, i32* %3, align 4
  store %struct._cms_io_handler* %1, %struct._cms_io_handler** %4, align 8
  %6 = load %struct._cms_io_handler*, %struct._cms_io_handler** %4, align 8
  %7 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct._cms_io_handler*
  store %struct._cms_io_handler* %9, %struct._cms_io_handler** %5, align 8
  %10 = load %struct._cms_io_handler*, %struct._cms_io_handler** %5, align 8
  %11 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct._cms_io_handler*, %struct._cms_io_handler** %5, align 8
  %16 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %15, i32 0, i32 0
  %17 = load %struct._cms_io_handler*, %struct._cms_io_handler** %16, align 8
  %18 = icmp ne %struct._cms_io_handler* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = load %struct._cms_io_handler*, %struct._cms_io_handler** %5, align 8
  %22 = getelementptr inbounds %struct._cms_io_handler, %struct._cms_io_handler* %21, i32 0, i32 0
  %23 = load %struct._cms_io_handler*, %struct._cms_io_handler** %22, align 8
  %24 = call i32 @_cmsFree(i32 %20, %struct._cms_io_handler* %23)
  br label %25

25:                                               ; preds = %19, %14
  br label %26

26:                                               ; preds = %25, %2
  %27 = load i32, i32* %3, align 4
  %28 = load %struct._cms_io_handler*, %struct._cms_io_handler** %5, align 8
  %29 = call i32 @_cmsFree(i32 %27, %struct._cms_io_handler* %28)
  %30 = load i32, i32* %3, align 4
  %31 = load %struct._cms_io_handler*, %struct._cms_io_handler** %4, align 8
  %32 = call i32 @_cmsFree(i32 %30, %struct._cms_io_handler* %31)
  %33 = load i32, i32* @TRUE, align 4
  ret i32 %33
}

declare dso_local i32 @_cmsFree(i32, %struct._cms_io_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
