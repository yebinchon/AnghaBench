; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_free-space.c_load_free_space_bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_free-space.c_load_free_space_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i8*, i32*)* @load_free_space_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_free_space_bitmap(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %14, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %42, %5
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 4
  %30 = icmp ult i64 %23, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %21
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %36, -1
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %21

45:                                               ; preds = %21
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 8
  store i32 %50, i32* %13, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @RtlInitializeBitMap(i32* %11, i8* %51, i32 %52)
  store i32 0, i32* %16, align 4
  %54 = call i32 @RtlFindFirstRunClear(i32* %11, i32* %16)
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %77, %45
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %108

58:                                               ; preds = %55
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %108

63:                                               ; preds = %58
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %13, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %16, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %108

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %63
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %79, %83
  %85 = add nsw i32 %78, %84
  store i32 %85, i32* %17, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %15, align 4
  %91 = mul nsw i32 %89, %90
  store i32 %91, i32* %18, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %18, align 4
  %98 = call i32 @add_space_entry(i32* %93, i32* %95, i32 %96, i32 %97)
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %102
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @RtlFindNextForwardRunClear(i32* %11, i32 %106, i32* %16)
  store i32 %107, i32* %15, align 4
  br label %55

108:                                              ; preds = %75, %62, %55
  ret void
}

declare dso_local i32 @RtlInitializeBitMap(i32*, i8*, i32) #1

declare dso_local i32 @RtlFindFirstRunClear(i32*, i32*) #1

declare dso_local i32 @add_space_entry(i32*, i32*, i32, i32) #1

declare dso_local i32 @RtlFindNextForwardRunClear(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
