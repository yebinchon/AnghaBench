; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_object_init.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i64, i64)* @ztest_object_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ztest_object_init(%struct.TYPE_6__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = udiv i64 %11, 4
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @mutex_enter(i32* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @ztest_lookup(%struct.TYPE_6__* %17, i32* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22, %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @ztest_remove(%struct.TYPE_6__* %26, i32* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @ztest_create(%struct.TYPE_6__* %32, i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %25
  store i32 -1, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %31, %22
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @mutex_exit(i32* %43)
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @ztest_lookup(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @ztest_remove(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @ztest_create(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
