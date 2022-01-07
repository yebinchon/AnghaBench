; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_iter_write_common.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_file.c_zpl_iter_write_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32, %struct.file* }
%struct.file = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iovec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i64, i32, i64)* @zpl_iter_write_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpl_iter_write_common(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.kiocb*, align 8
  %8 = alloca %struct.iovec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.file*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %7, align 8
  store %struct.iovec* %1, %struct.iovec** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %17 = call i32* (...) @CRED()
  store i32* %17, i32** %13, align 8
  %18 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %19 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %18, i32 0, i32 1
  %20 = load %struct.file*, %struct.file** %19, align 8
  store %struct.file* %20, %struct.file** %14, align 8
  %21 = load %struct.file*, %struct.file** %14, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %16, align 4
  %24 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %25 = call i32 @zfs_io_flags(%struct.kiocb* %24)
  %26 = load i32, i32* %16, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %16, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @crhold(i32* %28)
  %30 = load %struct.file*, %struct.file** %14, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iovec*, %struct.iovec** %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.kiocb*, %struct.kiocb** %7, align 8
  %39 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %38, i32 0, i32 0
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @zpl_write_common_iovec(i32 %34, %struct.iovec* %35, i64 %36, i64 %37, i32* %39, i32 %40, i32 %41, i32* %42, i64 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @crfree(i32* %45)
  %47 = load i32, i32* %15, align 4
  ret i32 %47
}

declare dso_local i32* @CRED(...) #1

declare dso_local i32 @zfs_io_flags(%struct.kiocb*) #1

declare dso_local i32 @crhold(i32*) #1

declare dso_local i32 @zpl_write_common_iovec(i32, %struct.iovec*, i64, i64, i32*, i32, i32, i32*, i64) #1

declare dso_local i32 @crfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
