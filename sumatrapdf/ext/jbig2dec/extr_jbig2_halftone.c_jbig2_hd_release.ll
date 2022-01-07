; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_halftone.c_jbig2_hd_release.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_halftone.c_jbig2_hd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jbig2_hd_release(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = icmp eq %struct.TYPE_8__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %52

9:                                                ; preds = %2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = bitcast %struct.TYPE_8__* %28 to { i32, %struct.TYPE_8__* }*
  %30 = getelementptr inbounds { i32, %struct.TYPE_8__* }, { i32, %struct.TYPE_8__* }* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds { i32, %struct.TYPE_8__* }, { i32, %struct.TYPE_8__* }* %29, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = call i32 @jbig2_image_release(%struct.TYPE_9__* %22, i32 %31, %struct.TYPE_8__* %33)
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %15

38:                                               ; preds = %15
  br label %39

39:                                               ; preds = %38, %9
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = call i32 @jbig2_free(i32 %42, %struct.TYPE_8__* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = call i32 @jbig2_free(i32 %49, %struct.TYPE_8__* %50)
  br label %52

52:                                               ; preds = %39, %8
  ret void
}

declare dso_local i32 @jbig2_image_release(%struct.TYPE_9__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @jbig2_free(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
