; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_alloc_importfile.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_write_msft.c_alloc_importfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32**, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@MSFT_SEG_IMPORTFILES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32, i8*)* @alloc_importfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_importfile(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = call i32 @ctl2_encode_string(i8* %16, i8** %15)
  store i32 %17, i32* %12, align 4
  %18 = load i8*, i8** %15, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = shl i32 %21, 2
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %19, align 1
  %24 = load i8*, i8** %15, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = or i32 %27, 1
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %25, align 1
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %58, %5
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i64, i64* @MSFT_SEG_IMPORTFILES, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %31, %38
  br i1 %39, label %40, label %87

40:                                               ; preds = %30
  %41 = load i8*, i8** %15, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i64, i64* @MSFT_SEG_IMPORTFILES, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = getelementptr inbounds i32, i32* %50, i64 12
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @memcmp(i8* %41, i32* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %124

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i64, i64* @MSFT_SEG_IMPORTFILES, align 8
  %63 = getelementptr inbounds i32*, i32** %61, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 13
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32**, i32*** %72, align 8
  %74 = load i64, i64* @MSFT_SEG_IMPORTFILES, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 12
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %70, %81
  %83 = ashr i32 %82, 2
  %84 = add nsw i32 %83, 12
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %13, align 4
  br label %30

87:                                               ; preds = %30
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = load i64, i64* @MSFT_SEG_IMPORTFILES, align 8
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 12
  %92 = call i32 @ctl2_alloc_segment(%struct.TYPE_9__* %88, i64 %89, i32 %91, i32 0)
  store i32 %92, i32* %13, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32**, i32*** %94, align 8
  %96 = load i64, i64* @MSFT_SEG_IMPORTFILES, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = bitcast i32* %101 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %102, %struct.TYPE_10__** %14, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = shl i32 %113, 16
  %115 = or i32 %112, %114
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i8*, i8** %15, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @memcpy(i32* %119, i8* %120, i32 %121)
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %87, %55
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @ctl2_encode_string(i8*, i8**) #1

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @ctl2_alloc_segment(%struct.TYPE_9__*, i64, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
