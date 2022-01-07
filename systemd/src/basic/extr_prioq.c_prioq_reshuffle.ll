; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_prioq.c_prioq_reshuffle.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_prioq.c_prioq_reshuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.prioq_item* }
%struct.prioq_item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prioq_reshuffle(%struct.TYPE_7__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.prioq_item*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = call i32 @assert(%struct.TYPE_7__* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call %struct.prioq_item* @find_item(%struct.TYPE_7__* %12, i8* %13, i32* %14)
  store %struct.prioq_item* %15, %struct.prioq_item** %8, align 8
  %16 = load %struct.prioq_item*, %struct.prioq_item** %8, align 8
  %17 = icmp ne %struct.prioq_item* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

19:                                               ; preds = %3
  %20 = load %struct.prioq_item*, %struct.prioq_item** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.prioq_item*, %struct.prioq_item** %22, align 8
  %24 = ptrtoint %struct.prioq_item* %20 to i64
  %25 = ptrtoint %struct.prioq_item* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @shuffle_down(%struct.TYPE_7__* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @shuffle_up(%struct.TYPE_7__* %32, i32 %33)
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %19, %18
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local %struct.prioq_item* @find_item(%struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i32 @shuffle_down(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @shuffle_up(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
