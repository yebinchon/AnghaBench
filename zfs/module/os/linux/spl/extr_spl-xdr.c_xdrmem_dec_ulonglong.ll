; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-xdr.c_xdrmem_dec_ulonglong.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-xdr.c_xdrmem_dec_ulonglong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @xdrmem_dec_ulonglong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdrmem_dec_ulonglong(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32 @BUILD_BUG_ON(i32 1)
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @xdrmem_dec_uint32(i32* %9, i32* %7)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @xdrmem_dec_uint32(i32* %15, i32* %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 32
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %22, %23
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %18, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @xdrmem_dec_uint32(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
