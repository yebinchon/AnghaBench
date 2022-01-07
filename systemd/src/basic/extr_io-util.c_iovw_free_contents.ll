; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_iovw_free_contents.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_iovw_free_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec_wrapper = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iovw_free_contents(%struct.iovec_wrapper* %0, i32 %1) #0 {
  %3 = alloca %struct.iovec_wrapper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.iovec_wrapper* %0, %struct.iovec_wrapper** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %24, %8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %3, align 8
  %12 = getelementptr inbounds %struct.iovec_wrapper, %struct.iovec_wrapper* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %3, align 8
  %17 = getelementptr inbounds %struct.iovec_wrapper, %struct.iovec_wrapper* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @free(i32 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %9

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %3, align 8
  %30 = getelementptr inbounds %struct.iovec_wrapper, %struct.iovec_wrapper* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call %struct.TYPE_3__* @mfree(%struct.TYPE_3__* %31)
  %33 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %3, align 8
  %34 = getelementptr inbounds %struct.iovec_wrapper, %struct.iovec_wrapper* %33, i32 0, i32 2
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** %34, align 8
  %35 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %3, align 8
  %36 = getelementptr inbounds %struct.iovec_wrapper, %struct.iovec_wrapper* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.iovec_wrapper*, %struct.iovec_wrapper** %3, align 8
  %38 = getelementptr inbounds %struct.iovec_wrapper, %struct.iovec_wrapper* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local %struct.TYPE_3__* @mfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
