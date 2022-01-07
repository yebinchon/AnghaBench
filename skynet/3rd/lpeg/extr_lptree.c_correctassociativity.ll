; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_correctassociativity.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lpeg/extr_lptree.c_correctassociativity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@TChoice = common dso_local global i64 0, align 8
@TSeq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @correctassociativity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @correctassociativity(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = call %struct.TYPE_13__* @sib1(%struct.TYPE_13__* %7)
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TChoice, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TSeq, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %14, %1
  %21 = phi i1 [ true, %1 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  br label %24

24:                                               ; preds = %32, %20
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %73

32:                                               ; preds = %24
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = call %struct.TYPE_13__* @sib1(%struct.TYPE_13__* %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = call %struct.TYPE_13__* @sib1(%struct.TYPE_13__* %49)
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 16
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memmove(%struct.TYPE_13__* %48, %struct.TYPE_13__* %50, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = call %struct.TYPE_14__* @sib2(%struct.TYPE_13__* %64)
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i64 %63, i64* %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = call %struct.TYPE_14__* @sib2(%struct.TYPE_13__* %69)
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  br label %24

73:                                               ; preds = %24
  ret void
}

declare dso_local %struct.TYPE_13__* @sib1(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_14__* @sib2(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
