; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/extr_scaletempo.c_fill_queue.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/extr_scaletempo.c_fill_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i32*, i64, i64)* @fill_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fill_queue(%struct.TYPE_4__* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %11, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %94

27:                                               ; preds = %4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %27
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = zext i32 %49 to i64
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @memmove(i32 %46, i32 %55, i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %93

64:                                               ; preds = %27
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @__MIN(i32 %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load i32, i32* %13, align 4
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sub i32 %91, %90
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %64, %35
  br label %94

94:                                               ; preds = %93, %4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ugt i32 %95, 0
  br i1 %96, label %97, label %133

97:                                               ; preds = %94
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = zext i32 %100 to i64
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %101, %104
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @__MIN(i32 %106, i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = zext i32 %111 to i64
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = trunc i64 %116 to i32
  %118 = load i32*, i32** %6, align 8
  %119 = load i64, i64* %8, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @memcpy(i32 %117, i32* %120, i32 %121)
  %123 = load i32, i32* %14, align 4
  %124 = zext i32 %123 to i64
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, %124
  store i64 %128, i64* %126, align 8
  %129 = load i32, i32* %14, align 4
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %8, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %8, align 8
  br label %133

133:                                              ; preds = %97, %94
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* %11, align 8
  %136 = sub i64 %134, %135
  ret i64 %136
}

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
