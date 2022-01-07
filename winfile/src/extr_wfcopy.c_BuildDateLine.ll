; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfcopy.c_BuildDateLine.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfcopy.c_BuildDateLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@szBytes = common dso_local global i32 0, align 4
@szSpace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BuildDateLine(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i32, i32* @szBytes, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @wsprintf(i64 %6, i32 %7, i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @szSpace, align 4
  %15 = call i32 @lstrcat(i64 %13, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @lstrlen(i64 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @PutDate(i32* %18, i64 %22)
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* @szSpace, align 4
  %26 = call i32 @lstrcat(i64 %24, i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @lstrlen(i64 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @PutTime(i32* %29, i64 %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @wsprintf(i64, i32, i32) #1

declare dso_local i32 @lstrcat(i64, i32) #1

declare dso_local i32 @PutDate(i32*, i64) #1

declare dso_local i64 @lstrlen(i64) #1

declare dso_local i32 @PutTime(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
