; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_for_each_pool.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_iter.c_for_each_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_each_pool(i32 %0, i8** %1, i32 %2, i32** %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i8**, i8*** %9, align 8
  %18 = load i32**, i32*** %11, align 8
  %19 = call i32* @pool_list_get(i32 %16, i8** %17, i32** %18, i32* %15)
  store i32* %19, i32** %14, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %34

22:                                               ; preds = %6
  %23 = load i32*, i32** %14, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = call i64 @pool_list_iter(i32* %23, i32 %24, i32 %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1, i32* %15, align 4
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @pool_list_free(i32* %31)
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %21
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32* @pool_list_get(i32, i8**, i32**, i32*) #1

declare dso_local i64 @pool_list_iter(i32*, i32, i32, i8*) #1

declare dso_local i32 @pool_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
