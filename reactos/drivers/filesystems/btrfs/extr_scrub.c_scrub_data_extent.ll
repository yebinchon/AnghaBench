; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_scrub_data_extent.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_scrub.c_scrub_data_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@SCRUB_UNIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"scrub_data_extent_dup returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i64, i64, i32*, i32*, i64)* @scrub_data_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrub_data_extent(%struct.TYPE_6__* %0, i32* %1, i64 %2, i64 %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = call i64 @RtlFindFirstRunClear(i32* %20, i64* %18)
  store i64 %21, i64* %17, align 8
  br label %22

22:                                               ; preds = %102, %7
  %23 = load i64, i64* %17, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %106

25:                                               ; preds = %22
  %26 = load i64, i64* %18, align 8
  %27 = load i64, i64* %15, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %106

30:                                               ; preds = %25
  %31 = load i64, i64* %18, align 8
  %32 = load i64, i64* %17, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i64, i64* %15, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i64, i64* %15, align 8
  %38 = load i64, i64* %18, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %17, align 8
  %40 = load i64, i64* %17, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %106

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %99, %44
  %46 = load i64, i64* %17, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = mul nsw i64 %46, %50
  %52 = load i64, i64* @SCRUB_UNIT, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load i64, i64* @SCRUB_UNIT, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sdiv i64 %55, %59
  store i64 %60, i64* %19, align 8
  br label %63

61:                                               ; preds = %45
  %62 = load i64, i64* %17, align 8
  store i64 %62, i64* %19, align 8
  br label %63

63:                                               ; preds = %61, %54
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @UInt32x32To64(i64 %68, i64 %72)
  %74 = add nsw i64 %67, %73
  %75 = load i64, i64* %19, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = mul nsw i64 %75, %79
  %81 = load i32*, i32** %13, align 8
  %82 = load i64, i64* %18, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = call i32 @scrub_extent(%struct.TYPE_6__* %64, i32* %65, i64 %66, i64 %74, i64 %80, i32* %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @NT_SUCCESS(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %63
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %8, align 4
  br label %108

92:                                               ; preds = %63
  %93 = load i64, i64* %19, align 8
  %94 = load i64, i64* %17, align 8
  %95 = sub nsw i64 %94, %93
  store i64 %95, i64* %17, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %18, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %18, align 8
  br label %99

99:                                               ; preds = %92
  %100 = load i64, i64* %17, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %45, label %102

102:                                              ; preds = %99
  %103 = load i32*, i32** %14, align 8
  %104 = load i64, i64* %18, align 8
  %105 = call i64 @RtlFindNextForwardRunClear(i32* %103, i64 %104, i64* %18)
  store i64 %105, i64* %17, align 8
  br label %22

106:                                              ; preds = %42, %29, %22
  %107 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %106, %88
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i64 @RtlFindFirstRunClear(i32*, i64*) #1

declare dso_local i32 @scrub_extent(%struct.TYPE_6__*, i32*, i64, i64, i64, i32*) #1

declare dso_local i64 @UInt32x32To64(i64, i64) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i64 @RtlFindNextForwardRunClear(i32*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
