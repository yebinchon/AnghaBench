; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_nva_xcreate.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_fm.c_fm_nva_xcreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KM_SLEEP = common dso_local global i32 0, align 4
@nv_fixed_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fm_nva_xcreate(i8* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @KM_SLEEP, align 4
  %8 = call i32* @kmem_zalloc(i32 4, i32 %7)
  store i32* %8, i32** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @nv_fixed_ops, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @nv_alloc_init(i32* %12, i32 %13, i8* %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11, %2
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @kmem_free(i32* %19, i32 4)
  store i32* null, i32** %3, align 8
  br label %23

21:                                               ; preds = %11
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %3, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32*, i32** %3, align 8
  ret i32* %24
}

declare dso_local i32* @kmem_zalloc(i32, i32) #1

declare dso_local i64 @nv_alloc_init(i32*, i32, i8*, i64) #1

declare dso_local i32 @kmem_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
