; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_free.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferchain = type { i64, i64, %struct.buffy* }
%struct.buffy = type { %struct.buffy* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferchain*, %struct.buffy*)* @bc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bc_free(%struct.bufferchain* %0, %struct.buffy* %1) #0 {
  %3 = alloca %struct.bufferchain*, align 8
  %4 = alloca %struct.buffy*, align 8
  store %struct.bufferchain* %0, %struct.bufferchain** %3, align 8
  store %struct.buffy* %1, %struct.buffy** %4, align 8
  %5 = load %struct.buffy*, %struct.buffy** %4, align 8
  %6 = icmp ne %struct.buffy* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %32

8:                                                ; preds = %2
  %9 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %10 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %13 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %8
  %17 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %18 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %17, i32 0, i32 2
  %19 = load %struct.buffy*, %struct.buffy** %18, align 8
  %20 = load %struct.buffy*, %struct.buffy** %4, align 8
  %21 = getelementptr inbounds %struct.buffy, %struct.buffy* %20, i32 0, i32 0
  store %struct.buffy* %19, %struct.buffy** %21, align 8
  %22 = load %struct.buffy*, %struct.buffy** %4, align 8
  %23 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %24 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %23, i32 0, i32 2
  store %struct.buffy* %22, %struct.buffy** %24, align 8
  %25 = load %struct.bufferchain*, %struct.bufferchain** %3, align 8
  %26 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  br label %32

29:                                               ; preds = %8
  %30 = load %struct.buffy*, %struct.buffy** %4, align 8
  %31 = call i32 @buffy_del(%struct.buffy* %30)
  br label %32

32:                                               ; preds = %7, %29, %16
  ret void
}

declare dso_local i32 @buffy_del(%struct.buffy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
