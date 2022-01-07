; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckDateTime.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckDateTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @CheckDateTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckDateTime(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm*, align 8
  %9 = alloca %struct.tm, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %64 [
    i32 1, label %11
    i32 2, label %22
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 1
  store i32 2, i32* %13, align 4
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2
  store i32 3, i32* %14, align 4
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 3
  store i32 4, i32* %15, align 4
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 4
  store i32 5, i32* %16, align 4
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 5
  store i32 109, i32* %17, align 4
  %18 = call i32 (...) @DbgThread()
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @cmsWriteTag(i32 %18, i32 %19, i32 %20, %struct.tm* %9)
  store i32 %21, i32* %4, align 4
  br label %65

22:                                               ; preds = %3
  %23 = call i32 (...) @DbgThread()
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @cmsReadTag(i32 %23, i32 %24, i32 %25)
  %27 = inttoptr i64 %26 to %struct.tm*
  store %struct.tm* %27, %struct.tm** %8, align 8
  %28 = load %struct.tm*, %struct.tm** %8, align 8
  %29 = icmp eq %struct.tm* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %65

31:                                               ; preds = %22
  %32 = load %struct.tm*, %struct.tm** %8, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load %struct.tm*, %struct.tm** %8, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load %struct.tm*, %struct.tm** %8, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.tm*, %struct.tm** %8, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.tm*, %struct.tm** %8, align 8
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 5
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.tm*, %struct.tm** %8, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 109
  br label %61

61:                                               ; preds = %56, %51, %46, %41, %36, %31
  %62 = phi i1 [ false, %51 ], [ false, %46 ], [ false, %41 ], [ false, %36 ], [ false, %31 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %65

64:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %61, %30, %11
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @cmsWriteTag(i32, i32, i32, %struct.tm*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
