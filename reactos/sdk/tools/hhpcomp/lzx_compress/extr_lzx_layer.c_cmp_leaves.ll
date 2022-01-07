; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_cmp_leaves.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/lzx_compress/extr_lzx_layer.c_cmp_leaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.h_elem = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_leaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_leaves(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.h_elem*, align 8
  %7 = alloca %struct.h_elem*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.h_elem*
  store %struct.h_elem* %9, %struct.h_elem** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.h_elem*
  store %struct.h_elem* %11, %struct.h_elem** %7, align 8
  %12 = load %struct.h_elem*, %struct.h_elem** %6, align 8
  %13 = getelementptr inbounds %struct.h_elem, %struct.h_elem* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.h_elem*, %struct.h_elem** %7, align 8
  %18 = getelementptr inbounds %struct.h_elem, %struct.h_elem* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %58

22:                                               ; preds = %16, %2
  %23 = load %struct.h_elem*, %struct.h_elem** %6, align 8
  %24 = getelementptr inbounds %struct.h_elem, %struct.h_elem* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.h_elem*, %struct.h_elem** %7, align 8
  %29 = getelementptr inbounds %struct.h_elem, %struct.h_elem* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %58

33:                                               ; preds = %27, %22
  %34 = load %struct.h_elem*, %struct.h_elem** %6, align 8
  %35 = getelementptr inbounds %struct.h_elem, %struct.h_elem* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.h_elem*, %struct.h_elem** %7, align 8
  %38 = getelementptr inbounds %struct.h_elem, %struct.h_elem* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  %42 = load %struct.h_elem*, %struct.h_elem** %6, align 8
  %43 = getelementptr inbounds %struct.h_elem, %struct.h_elem* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.h_elem*, %struct.h_elem** %7, align 8
  %46 = getelementptr inbounds %struct.h_elem, %struct.h_elem* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %3, align 4
  br label %58

49:                                               ; preds = %33
  %50 = load %struct.h_elem*, %struct.h_elem** %6, align 8
  %51 = getelementptr inbounds %struct.h_elem, %struct.h_elem* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.h_elem*, %struct.h_elem** %7, align 8
  %54 = getelementptr inbounds %struct.h_elem, %struct.h_elem* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %49, %41, %32, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
