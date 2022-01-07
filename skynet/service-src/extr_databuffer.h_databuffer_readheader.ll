; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_databuffer.h_databuffer_readheader.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_databuffer.h_databuffer_readheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.databuffer = type { i32, i32 }
%struct.messagepool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.databuffer*, %struct.messagepool*, i32)* @databuffer_readheader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @databuffer_readheader(%struct.databuffer* %0, %struct.messagepool* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.databuffer*, align 8
  %6 = alloca %struct.messagepool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store %struct.databuffer* %0, %struct.databuffer** %5, align 8
  store %struct.messagepool* %1, %struct.messagepool** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %10 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %3
  %14 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %15 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %69

20:                                               ; preds = %13
  %21 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %22 = load %struct.messagepool*, %struct.messagepool** %6, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %24 = bitcast i32* %23 to i8*
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @databuffer_read(%struct.databuffer* %21, %struct.messagepool* %22, i8* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = shl i32 %31, 8
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %32, %34
  %36 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %37 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %55

38:                                               ; preds = %20
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %40 = load i32, i32* %39, align 16
  %41 = shl i32 %40, 24
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = or i32 %41, %44
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 %47, 8
  %49 = or i32 %45, %48
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %49, %51
  %53 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %54 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %38, %29
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %58 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %61 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %69

65:                                               ; preds = %56
  %66 = load %struct.databuffer*, %struct.databuffer** %5, align 8
  %67 = getelementptr inbounds %struct.databuffer, %struct.databuffer* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %64, %19
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @databuffer_read(%struct.databuffer*, %struct.messagepool*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
