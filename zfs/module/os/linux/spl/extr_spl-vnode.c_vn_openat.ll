; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-vnode.c_vn_openat.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-vnode.c_vn_openat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rootdir = common dso_local global i32* null, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_openat(i8* %0, i32 %1, i32 %2, i32 %3, i32** %4, i32 %5, i8* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32** %4, i32*** %15, align 8
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %23 = load i32*, i32** %18, align 8
  %24 = load i32*, i32** @rootdir, align 8
  %25 = icmp eq i32* %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = add nsw i32 %29, 2
  store i32 %30, i32* %21, align 4
  %31 = load i32, i32* %21, align 4
  %32 = load i32, i32* @KM_SLEEP, align 4
  %33 = call i32 @kmem_flags_convert(i32 %32)
  %34 = call i8* @kmalloc(i32 %31, i32 %33)
  store i8* %34, i8** %20, align 8
  %35 = load i8*, i8** %20, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %9
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %10, align 4
  br label %55

39:                                               ; preds = %9
  %40 = load i8*, i8** %20, align 8
  %41 = load i32, i32* %21, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @snprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %20, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32**, i32*** %15, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load i8*, i8** %17, align 8
  %51 = call i32 @vn_open(i8* %44, i32 %45, i32 %46, i32 %47, i32** %48, i32 %49, i8* %50)
  store i32 %51, i32* %22, align 4
  %52 = load i8*, i8** %20, align 8
  %53 = call i32 @kfree(i8* %52)
  %54 = load i32, i32* %22, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %39, %37
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kmem_flags_convert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @vn_open(i8*, i32, i32, i32, i32**, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
