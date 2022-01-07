; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_ioctl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__** }

@ZIO_TYPE_IOCTL = common dso_local global i32 0, align 4
@ZIO_PRIORITY_NOW = common dso_local global i32 0, align 4
@ZIO_STAGE_OPEN = common dso_local global i32 0, align 4
@ZIO_IOCTL_PIPELINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @zio_ioctl(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_13__* %2, i32 %3, i32* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %7
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i32, i32* @ZIO_TYPE_IOCTL, align 4
  %27 = load i32, i32* @ZIO_PRIORITY_NOW, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %30 = load i32, i32* @ZIO_STAGE_OPEN, align 4
  %31 = load i32, i32* @ZIO_IOCTL_PIPELINE, align 4
  %32 = call %struct.TYPE_12__* @zio_create(%struct.TYPE_12__* %22, i32* %23, i32 0, i32* null, i32* null, i32 0, i32 0, i32* %24, i8* %25, i32 %26, i32 %27, i32 %28, %struct.TYPE_13__* %29, i32 0, i32* null, i32 %30, i32 %31)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %15, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %67

36:                                               ; preds = %7
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call %struct.TYPE_12__* @zio_null(%struct.TYPE_12__* %37, i32* %38, i32* null, i32* null, i32* null, i32 %39)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %15, align 8
  store i32 0, i32* %16, align 4
  br label %41

41:                                               ; preds = %63, %36
  %42 = load i32, i32* %16, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %51, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %52, i64 %54
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = call %struct.TYPE_12__* @zio_ioctl(%struct.TYPE_12__* %48, i32* %49, %struct.TYPE_13__* %56, i32 %57, i32* %58, i8* %59, i32 %60)
  %62 = call i32 @zio_nowait(%struct.TYPE_12__* %61)
  br label %63

63:                                               ; preds = %47
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %16, align 4
  br label %41

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66, %21
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  ret %struct.TYPE_12__* %68
}

declare dso_local %struct.TYPE_12__* @zio_create(%struct.TYPE_12__*, i32*, i32, i32*, i32*, i32, i32, i32*, i8*, i32, i32, i32, %struct.TYPE_13__*, i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @zio_null(%struct.TYPE_12__*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @zio_nowait(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
