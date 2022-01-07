; ModuleID = '/home/carl/AnghaBench/sway/common/extr_list.c_list_inplace_sort.c'
source_filename = "/home/carl/AnghaBench/sway/common/extr_list.c_list_inplace_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32 (i8*, i8*)*)* @list_inplace_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_inplace_sort(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 (i8*, i8*)* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %64

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %15, %16
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = bitcast i32* %26 to i8*
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = bitcast i32* %33 to i8*
  %35 = call i32 %20(i8* %27, i8* %34)
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %19
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @list_swap(%struct.TYPE_5__* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %19
  br label %63

43:                                               ; preds = %14
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %9, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  call void @list_inplace_sort(%struct.TYPE_5__* %48, i32 %49, i32 %50, i32 (i8*, i8*)* %51)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %7, align 4
  %56 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  call void @list_inplace_sort(%struct.TYPE_5__* %52, i32 %54, i32 %55, i32 (i8*, i8*)* %56)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %62 = call i32 @list_inplace_merge(%struct.TYPE_5__* %57, i32 %58, i32 %59, i32 %60, i32 (i8*, i8*)* %61)
  br label %63

63:                                               ; preds = %43, %42
  br label %64

64:                                               ; preds = %13, %63
  ret void
}

declare dso_local i32 @list_swap(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @list_inplace_merge(%struct.TYPE_5__*, i32, i32, i32, i32 (i8*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
