; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_get_region_type.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_region.c_get_region_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Ok = common dso_local global i64 0, align 8
@InsufficientBuffer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"unexpected status 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @get_region_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_region_type(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @GdipGetRegionDataSize(i32* %7, i64* %4)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @Ok, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @expect(i64 %9, i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = call i64* @GdipAlloc(i64 %12)
  store i64* %13, i64** %3, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = load i64*, i64** %3, align 8
  %16 = bitcast i64* %15 to i32*
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @GdipGetRegionData(i32* %14, i32* %16, i64 %17, i32* null)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @Ok, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @InsufficientBuffer, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %22, %1
  %27 = phi i1 [ true, %1 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 4
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load i64*, i64** %3, align 8
  %35 = call i32 @GdipFree(i64* %34)
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

declare dso_local i64 @GdipGetRegionDataSize(i32*, i64*) #1

declare dso_local i32 @expect(i64, i64) #1

declare dso_local i64* @GdipAlloc(i64) #1

declare dso_local i64 @GdipGetRegionData(i32*, i32*, i64, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @GdipFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
