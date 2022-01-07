; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_gradient.c_GradientProc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_gradient.c_GradientProc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64 }

@GradientProc.gcap = internal global [4 x %struct.TYPE_9__] zeroinitializer, align 16
@GRADIENT_FILL_TRIANGLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GradientProc(i8* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x %struct.TYPE_7__], align 16
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 16
  %15 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  store i32 65280, i32* %18, align 8
  %19 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 4
  store i32 0, i32* %22, align 16
  %23 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 16
  %30 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  store i32 65280, i32* %35, align 4
  %36 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  store i32 0, i32* %37, align 16
  %38 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 16
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i32 0, i32* %51, align 8
  %52 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  store i32 65280, i32* %55, align 16
  %56 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 16
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  %67 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 3
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  store i32 65280, i32* %68, align 4
  %69 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 3
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  store i32 0, i32* %70, align 16
  %71 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 3
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 4
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  store i32 0, i32* %78, align 16
  %79 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 5
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i32 0, i32* %82, align 8
  %83 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 5
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  store i32 0, i32* %84, align 4
  %85 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 5
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 4
  store i32 0, i32* %86, align 16
  %87 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 5
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 5
  store i64 0, i64* %88, align 8
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %161, %3
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %164

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = mul i32 2, %94
  %96 = load i32, i32* %6, align 4
  %97 = udiv i32 %95, %96
  switch i32 %97, label %156 [
    i32 0, label %98
    i32 1, label %125
  ]

98:                                               ; preds = %93
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %101, 2
  %103 = load i32, i32* %7, align 4
  %104 = mul i32 %102, %103
  %105 = load i32, i32* %6, align 4
  %106 = udiv i32 %104, %105
  %107 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 16
  %109 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 4
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 4
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 16
  %117 = sub nsw i32 %113, %116
  %118 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 5
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 16
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 5
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  store i32 5, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 0, i32 0), align 16
  store i32 0, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 0, i32 1), align 4
  store i32 4, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 0, i32 2), align 8
  store i32 5, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 1, i32 0), align 4
  store i32 4, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 1, i32 1), align 4
  store i32 1, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 1, i32 2), align 4
  store i32 5, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 2, i32 0), align 8
  store i32 1, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 2, i32 1), align 4
  store i32 2, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 2, i32 2), align 8
  store i32 5, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 3, i32 0), align 4
  store i32 3, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 3, i32 1), align 4
  store i32 0, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 3, i32 2), align 4
  br label %156

125:                                              ; preds = %93
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 4
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 16
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %133, 2
  %135 = load i32, i32* %7, align 4
  %136 = mul i32 %134, %135
  %137 = load i32, i32* %6, align 4
  %138 = udiv i32 %136, %137
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sub i32 %138, %141
  %143 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 4
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 5
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 16
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 4
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %149, %152
  %154 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 5
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  store i32 5, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 0, i32 0), align 16
  store i32 1, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 0, i32 1), align 4
  store i32 4, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 0, i32 2), align 8
  store i32 5, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 1, i32 0), align 4
  store i32 4, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 1, i32 1), align 4
  store i32 2, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 1, i32 2), align 4
  store i32 5, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 2, i32 0), align 8
  store i32 2, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 2, i32 1), align 4
  store i32 3, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 2, i32 2), align 8
  store i32 5, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 3, i32 0), align 4
  store i32 0, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 3, i32 1), align 4
  store i32 1, i32* getelementptr inbounds ([4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* @GradientProc.gcap, i64 0, i64 3, i32 2), align 4
  br label %156

156:                                              ; preds = %93, %125, %98
  %157 = load i32, i32* %8, align 4
  %158 = getelementptr inbounds [6 x %struct.TYPE_7__], [6 x %struct.TYPE_7__]* %9, i64 0, i64 0
  %159 = load i32, i32* @GRADIENT_FILL_TRIANGLE, align 4
  %160 = call i32 @GradientFill(i32 %157, %struct.TYPE_7__* %158, i32 6, %struct.TYPE_9__** bitcast ([4 x %struct.TYPE_9__]* @GradientProc.gcap to %struct.TYPE_9__**), i32 4, i32 %159)
  br label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %7, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %89

164:                                              ; preds = %89
  ret void
}

declare dso_local i32 @GradientFill(i32, %struct.TYPE_7__*, i32, %struct.TYPE_9__**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
