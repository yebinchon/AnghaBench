; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_fromraw.c_RosSymCreateFromRaw.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rossym_new/extr_fromraw.c_RosSymCreateFromRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i8*, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid ROSSYM_HEADER\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to allocate memory for rossym\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RosSymCreateFromRaw(i64 %0, i64 %1, %struct.TYPE_5__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %8, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %46, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = icmp slt i64 %19, %27
  br i1 %28, label %46, label %29

29:                                               ; preds = %16
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = icmp slt i64 %30, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = urem i64 %43, 4
  %45 = icmp ne i64 0, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %29, %16, %3
  %47 = call i32 @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %143

49:                                               ; preds = %40
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add i64 4, %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add i64 %53, %57
  %59 = add i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = call %struct.TYPE_5__* @RosSymAllocMem(i32 %60)
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %62, align 8
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = icmp eq %struct.TYPE_5__* null, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %49
  %67 = call i32 @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %4, align 4
  br label %143

69:                                               ; preds = %49
  %70 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = bitcast %struct.TYPE_5__* %71 to i8*
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  %74 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = udiv i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = bitcast %struct.TYPE_5__* %86 to i8*
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  store i8* %92, i8** %95, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 8
  %102 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = bitcast %struct.TYPE_6__* %106 to i8*
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @memcpy(i8* %105, i8* %112, i32 %116)
  %118 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %123 = bitcast %struct.TYPE_6__* %122 to i8*
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @memcpy(i8* %121, i8* %127, i32 %130)
  %132 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %135, i64 %140
  store i8 0, i8* %141, align 1
  %142 = load i32, i32* @TRUE, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %69, %66, %46
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local %struct.TYPE_5__* @RosSymAllocMem(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
