; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_playsound.c_get_mmioFromFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_playsound.c_get_mmioFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMIO_ALLOCBUF = common dso_local global i32 0, align 4
@MMIO_READ = common dso_local global i32 0, align 4
@MMIO_DENYWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @get_mmioFromFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_mmioFromFile(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [256 x i32], align 16
  %6 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to i32*
  %9 = load i32, i32* @MMIO_ALLOCBUF, align 4
  %10 = load i32, i32* @MMIO_READ, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MMIO_DENYWRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @mmioOpenW(i32* %8, i32* null, i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %2, align 8
  br label %33

19:                                               ; preds = %1
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %22 = call i64 @SearchPathW(i32* null, i64 %20, i32* null, i32 256, i32* %21, i32** %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %26 = load i32, i32* @MMIO_ALLOCBUF, align 4
  %27 = load i32, i32* @MMIO_READ, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MMIO_DENYWRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @mmioOpenW(i32* %25, i32* null, i32 %30)
  store i64 %31, i64* %2, align 8
  br label %33

32:                                               ; preds = %19
  store i64 0, i64* %2, align 8
  br label %33

33:                                               ; preds = %32, %24, %17
  %34 = load i64, i64* %2, align 8
  ret i64 %34
}

declare dso_local i64 @mmioOpenW(i32*, i32*, i32) #1

declare dso_local i64 @SearchPathW(i32*, i64, i32*, i32, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
