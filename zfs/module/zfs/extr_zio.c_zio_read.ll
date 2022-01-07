; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_read.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@ZIO_TYPE_READ = common dso_local global i32 0, align 4
@ZIO_STAGE_OPEN = common dso_local global i32 0, align 4
@ZIO_FLAG_DDT_CHILD = common dso_local global i32 0, align 4
@ZIO_DDT_CHILD_READ_PIPELINE = common dso_local global i32 0, align 4
@ZIO_READ_PIPELINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zio_read(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5, i8* %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* %19, align 4
  %25 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @zfs_blkptr_verify(i32* %22, i32* %23, i32 %26)
  %28 = load i32*, i32** %11, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @BP_PHYSICAL_BIRTH(i32* %30)
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32*, i32** %16, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = load i32, i32* @ZIO_TYPE_READ, align 4
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load i32*, i32** %20, align 8
  %42 = load i32, i32* @ZIO_STAGE_OPEN, align 4
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* @ZIO_FLAG_DDT_CHILD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %10
  %48 = load i32, i32* @ZIO_DDT_CHILD_READ_PIPELINE, align 4
  br label %51

49:                                               ; preds = %10
  %50 = load i32, i32* @ZIO_READ_PIPELINE, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = call i32* @zio_create(i32* %28, i32* %29, i32 %31, i32* %32, i32* %33, i32 %34, i32 %35, i32* %36, i8* %37, i32 %38, i32 %39, i32 %40, i32* null, i32 0, i32* %41, i32 %42, i32 %52)
  store i32* %53, i32** %21, align 8
  %54 = load i32*, i32** %21, align 8
  ret i32* %54
}

declare dso_local i32 @zfs_blkptr_verify(i32*, i32*, i32) #1

declare dso_local i32* @zio_create(i32*, i32*, i32, i32*, i32*, i32, i32, i32*, i8*, i32, i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @BP_PHYSICAL_BIRTH(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
