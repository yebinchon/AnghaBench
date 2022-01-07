; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-vnode.c_vn_rdwr.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-vnode.c_vn_rdwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.file* }
%struct.file = type { i32 }

@UIO_WRITE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i64 0, align 8
@FAPPEND = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_rdwr(i32 %0, %struct.TYPE_3__* %1, i8* %2, i32 %3, i32 %4, i64 %5, i32 %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.file*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.file*, %struct.file** %26, align 8
  store %struct.file* %27, %struct.file** %22, align 8
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %23, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @UIO_WRITE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %10
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @UIO_READ, align 4
  %35 = icmp eq i32 %33, %34
  br label %36

36:                                               ; preds = %32, %10
  %37 = phi i1 [ true, %10 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i64, i64* %17, align 8
  %41 = load i64, i64* @UIO_SYSSPACE, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load i32, i32* %18, align 4
  %46 = load i32, i32* @FAPPEND, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* @FAPPEND, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %36
  %57 = load %struct.file*, %struct.file** %22, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %23, align 4
  br label %60

60:                                               ; preds = %56, %36
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @UIO_WRITE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.file*, %struct.file** %22, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @spl_kernel_write(%struct.file* %66, i8* %67, i32 %68, i32* %23)
  store i32 %69, i32* %24, align 4
  br label %75

70:                                               ; preds = %60
  %71 = load %struct.file*, %struct.file** %22, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @spl_kernel_read(%struct.file* %71, i8* %72, i32 %73, i32* %23)
  store i32 %74, i32* %24, align 4
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %23, align 4
  %77 = load %struct.file*, %struct.file** %22, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %24, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %24, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %11, align 4
  br label %100

84:                                               ; preds = %75
  %85 = load i32*, i32** %21, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %24, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load i32*, i32** %21, align 8
  store i32 %90, i32* %91, align 4
  br label %99

92:                                               ; preds = %84
  %93 = load i32, i32* %24, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @EIO, align 4
  store i32 %97, i32* %11, align 4
  br label %100

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %87
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %99, %96, %81
  %101 = load i32, i32* %11, align 4
  ret i32 %101
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spl_kernel_write(%struct.file*, i8*, i32, i32*) #1

declare dso_local i32 @spl_kernel_read(%struct.file*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
