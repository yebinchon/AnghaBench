; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_mudraw.c_gettime.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_mudraw.c_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@gettime.first = internal global %struct.timeval zeroinitializer, align 4
@gettime.once = internal global i32 1, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gettime() #0 {
  %1 = alloca %struct.timeval, align 4
  %2 = load i32, i32* @gettime.once, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @gettimeofday(%struct.timeval* @gettime.first, i32* null)
  store i32 0, i32* @gettime.once, align 4
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i32 @gettimeofday(%struct.timeval* %1, i32* null)
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @gettime.first, i32 0, i32 0), align 4
  %11 = sub nsw i32 %9, %10
  %12 = mul nsw i32 %11, 1000
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.timeval, %struct.timeval* @gettime.first, i32 0, i32 1), align 4
  %16 = sub nsw i32 %14, %15
  %17 = sdiv i32 %16, 1000
  %18 = add nsw i32 %12, %17
  ret i32 %18
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
