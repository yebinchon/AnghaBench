; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_unarr.c_ar_get_global_comment.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_unarr.c_ar_get_global_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar_get_global_comment(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i64 (%struct.TYPE_4__*, i8*, i64)**
  %11 = load i64 (%struct.TYPE_4__*, i8*, i64)*, i64 (%struct.TYPE_4__*, i8*, i64)** %10, align 8
  %12 = icmp ne i64 (%struct.TYPE_4__*, i8*, i64)* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %23

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i64 (%struct.TYPE_4__*, i8*, i64)**
  %18 = load i64 (%struct.TYPE_4__*, i8*, i64)*, i64 (%struct.TYPE_4__*, i8*, i64)** %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 %18(%struct.TYPE_4__* %19, i8* %20, i64 %21)
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %14, %13
  %24 = load i64, i64* %4, align 8
  ret i64 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
