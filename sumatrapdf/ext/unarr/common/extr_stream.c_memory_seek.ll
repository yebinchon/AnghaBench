; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_stream.c_memory_seek.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_stream.c_memory_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemoryStream = type { i64, i64 }

@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @memory_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memory_seek(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.MemoryStream*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.MemoryStream*
  store %struct.MemoryStream* %10, %struct.MemoryStream** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SEEK_CUR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.MemoryStream*, %struct.MemoryStream** %8, align 8
  %16 = getelementptr inbounds %struct.MemoryStream, %struct.MemoryStream* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %6, align 8
  br label %31

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SEEK_END, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load %struct.MemoryStream*, %struct.MemoryStream** %8, align 8
  %26 = getelementptr inbounds %struct.MemoryStream, %struct.MemoryStream* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %24, %20
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i64, i64* %6, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.MemoryStream*, %struct.MemoryStream** %8, align 8
  %37 = getelementptr inbounds %struct.MemoryStream, %struct.MemoryStream* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.MemoryStream*, %struct.MemoryStream** %8, align 8
  %43 = getelementptr inbounds %struct.MemoryStream, %struct.MemoryStream* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34, %31
  store i32 0, i32* %4, align 4
  br label %51

47:                                               ; preds = %40
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.MemoryStream*, %struct.MemoryStream** %8, align 8
  %50 = getelementptr inbounds %struct.MemoryStream, %struct.MemoryStream* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
