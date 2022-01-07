; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_read.c_read_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_read.c_read_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"(%p, %p, %I64x, %I64x, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"tried to read beyond end of stream\0A\00", align 1
@STATUS_END_OF_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"tried to read zero bytes\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_stream(%struct.TYPE_5__* %0, i32* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64*, i64** %11, align 8
  %18 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %13, i32* %14, i64 %15, i64 %16, i64* %17)
  %19 = load i64*, i64** %11, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i64*, i64** %11, align 8
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %21, %5
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @STATUS_END_OF_FILE, align 4
  store i32 %32, i32* %6, align 4
  br label %78

33:                                               ; preds = %23
  %34 = load i64, i64* %10, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call i32 @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %38, i32* %6, align 4
  br label %78

39:                                               ; preds = %33
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %42, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i64, i64* %10, align 8
  store i64 %49, i64* %12, align 8
  br label %57

50:                                               ; preds = %39
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub nsw i64 %54, %55
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %50, %48
  %58 = load i64, i64* %12, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i32*, i32** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @RtlCopyMemory(i32* %63, i32 %67, i64 %68)
  br label %70

70:                                               ; preds = %60, %57
  %71 = load i64*, i64** %11, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8
  %75 = load i64*, i64** %11, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %36, %30
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
