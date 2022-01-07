; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_syntax_enc.c_EmitPartitionsSize.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_syntax_enc.c_EmitPartitionsSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 (i64*, i32, %struct.TYPE_7__*)* }

@MAX_NUM_PARTITIONS = common dso_local global i32 0, align 4
@VP8_MAX_PARTITION_SIZE = common dso_local global i64 0, align 8
@VP8_ENC_ERROR_PARTITION_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @EmitPartitionsSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EmitPartitionsSize(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %11 = load i32, i32* @MAX_NUM_PARTITIONS, align 4
  %12 = sub nsw i32 %11, 1
  %13 = mul nsw i32 3, %12
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %64, %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %17
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = call i64 @VP8BitWriterSize(i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @VP8_MAX_PARTITION_SIZE, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = load i32, i32* @VP8_ENC_ERROR_PARTITION_OVERFLOW, align 4
  %38 = call i32 @WebPEncodingSetError(%struct.TYPE_7__* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

39:                                               ; preds = %24
  %40 = load i64, i64* %9, align 8
  %41 = lshr i64 %40, 0
  %42 = and i64 %41, 255
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 3, %43
  %45 = add nsw i32 %44, 0
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %16, i64 %46
  store i64 %42, i64* %47, align 8
  %48 = load i64, i64* %9, align 8
  %49 = lshr i64 %48, 8
  %50 = and i64 %49, 255
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 3, %51
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %16, i64 %54
  store i64 %50, i64* %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = lshr i64 %56, 16
  %58 = and i64 %57, 255
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 3, %59
  %61 = add nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %16, i64 %62
  store i64 %58, i64* %63, align 8
  br label %64

64:                                               ; preds = %39
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %17

67:                                               ; preds = %17
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32 (i64*, i32, %struct.TYPE_7__*)*, i32 (i64*, i32, %struct.TYPE_7__*)** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 3, %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = call i32 %73(i64* %16, i32 %75, %struct.TYPE_7__* %76)
  br label %79

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %70
  %80 = phi i32 [ %77, %70 ], [ 1, %78 ]
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %81

81:                                               ; preds = %79, %35
  %82 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @VP8BitWriterSize(i64) #2

declare dso_local i32 @WebPEncodingSetError(%struct.TYPE_7__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
