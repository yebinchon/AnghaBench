; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_skip.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libmpg123/extr_readers.c_bc_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferchain = type { i64, i64 }

@READER_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bufferchain*, i64)* @bc_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bc_skip(%struct.bufferchain* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.bufferchain*, align 8
  %5 = alloca i64, align 8
  store %struct.bufferchain* %0, %struct.bufferchain** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load %struct.bufferchain*, %struct.bufferchain** %4, align 8
  %10 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.bufferchain*, %struct.bufferchain** %4, align 8
  %13 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = load i64, i64* %5, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = load %struct.bufferchain*, %struct.bufferchain** %4, align 8
  %20 = call i64 @bc_need_more(%struct.bufferchain* %19)
  store i64 %20, i64* %3, align 8
  br label %29

21:                                               ; preds = %8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.bufferchain*, %struct.bufferchain** %4, align 8
  %24 = getelementptr inbounds %struct.bufferchain, %struct.bufferchain* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  store i64 %26, i64* %3, align 8
  br label %29

27:                                               ; preds = %2
  %28 = load i64, i64* @READER_ERROR, align 8
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %27, %21, %18
  %30 = load i64, i64* %3, align 8
  ret i64 %30
}

declare dso_local i64 @bc_need_more(%struct.bufferchain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
