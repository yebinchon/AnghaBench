; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_fill_pool.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_fill_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferchain = type { i64, i64, %struct.buffy*, i32 }
%struct.buffy = type { %struct.buffy* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferchain*)* @bc_fill_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bc_fill_pool(%struct.bufferchain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bufferchain*, align 8
  %4 = alloca %struct.buffy*, align 8
  %5 = alloca %struct.buffy*, align 8
  store %struct.bufferchain* %0, %struct.bufferchain** %3, align 8
  br label %6

6:                                                ; preds = %14, %1
  %7 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %8 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %11 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %6
  %15 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %16 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %15, i32 0, i32 2
  %17 = load %struct.buffy*, %struct.buffy** %16, align 8
  store %struct.buffy* %17, %struct.buffy** %4, align 8
  %18 = load %struct.buffy*, %struct.buffy** %4, align 8
  %19 = getelementptr inbounds %struct.buffy, %struct.buffy* %18, i32 0, i32 0
  %20 = load %struct.buffy*, %struct.buffy** %19, align 8
  %21 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %22 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %21, i32 0, i32 2
  store %struct.buffy* %20, %struct.buffy** %22, align 8
  %23 = load %struct.buffy*, %struct.buffy** %4, align 8
  %24 = call i32 @buffy_del(%struct.buffy* %23)
  %25 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %26 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  br label %6

29:                                               ; preds = %6
  br label %30

30:                                               ; preds = %46, %29
  %31 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %32 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %35 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %30
  %39 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %40 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.buffy* @buffy_new(i32 0, i32 %41)
  store %struct.buffy* %42, %struct.buffy** %5, align 8
  %43 = load %struct.buffy*, %struct.buffy** %5, align 8
  %44 = icmp ne %struct.buffy* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 -1, i32* %2, align 4
  br label %60

46:                                               ; preds = %38
  %47 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %48 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %47, i32 0, i32 2
  %49 = load %struct.buffy*, %struct.buffy** %48, align 8
  %50 = load %struct.buffy*, %struct.buffy** %5, align 8
  %51 = getelementptr inbounds %struct.buffy, %struct.buffy* %50, i32 0, i32 0
  store %struct.buffy* %49, %struct.buffy** %51, align 8
  %52 = load %struct.buffy*, %struct.buffy** %5, align 8
  %53 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %54 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %53, i32 0, i32 2
  store %struct.buffy* %52, %struct.buffy** %54, align 8
  %55 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %56 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  br label %30

59:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %45
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @buffy_del(%struct.buffy*) #1

declare dso_local %struct.buffy* @buffy_new(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
