; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_btrfs_drv.h_do_xor.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_btrfs_drv.h_do_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@have_sse2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @do_xor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_xor(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @have_sse2, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = ptrtoint i32* %13 to i64
  %15 = and i64 %14, 15
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = ptrtoint i32* %18 to i64
  %20 = and i64 %19, 15
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %26, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %24, 16
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @_mm_load_si128(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @_mm_load_si128(i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @_mm_xor_si128(i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @_mm_store_si128(i32* %34, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 16
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 16
  store i32* %40, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 16
  store i32 %42, i32* %6, align 4
  br label %23

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43, %17, %12, %3
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %59, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %5, align 8
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %45

62:                                               ; preds = %45
  ret void
}

declare dso_local i32 @_mm_load_si128(i32*) #1

declare dso_local i32 @_mm_xor_si128(i32, i32) #1

declare dso_local i32 @_mm_store_si128(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
