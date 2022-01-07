; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_log_error.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_log_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [55 x i8] c"recovering from parity error at %I64x on device %I64x\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"recovering from metadata checksum error at %I64x on device %I64x\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"recovering from data checksum error at %I64x on device %I64x\0A\00", align 1
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"unrecoverable metadata checksum error at %I64x\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"unrecoverable data checksum error at %I64x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i8*, i32, i32, i32)* @log_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_error(%struct.TYPE_9__* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %88

16:                                               ; preds = %6
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21)
  br label %35

23:                                               ; preds = %16
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  br label %34

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %31, i8* %32)
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i32, i32* @PagedPool, align 4
  %37 = load i32, i32* @ALLOC_TAG, align 4
  %38 = call %struct.TYPE_8__* @ExAllocatePoolWithTag(i32 %36, i32 40, i32 %37)
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %13, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %102

43:                                               ; preds = %35
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %43
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  %63 = call i32 @RtlZeroMemory(i32* %62, i32 4)
  br label %68

64:                                               ; preds = %43
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  %67 = call i32 @RtlZeroMemory(i32* %66, i32 4)
  br label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = call i32 @ExAcquireResourceExclusiveLite(i32* %71, i32 1)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = call i32 @InsertTailList(i32* %80, i32* %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = call i32 @ExReleaseResourceLite(i32* %86)
  br label %102

88:                                               ; preds = %6
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  br label %97

94:                                               ; preds = %88
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @log_unrecoverable_error(%struct.TYPE_9__* %98, i8* %99, i8* %100)
  br label %102

102:                                              ; preds = %41, %97, %68
  ret void
}

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i32 @log_unrecoverable_error(%struct.TYPE_9__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
