; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sha256.c_sha256_update.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sha256.c_sha256_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha256_update(%struct.TYPE_4__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %45, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %16, i32* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 64
  br i1 %31, label %32, label %44

32:                                               ; preds = %12
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @sha256_transform(%struct.TYPE_4__* %33, i32* %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 512
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %32, %12
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %8

48:                                               ; preds = %8
  ret void
}

declare dso_local i32 @sha256_transform(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
