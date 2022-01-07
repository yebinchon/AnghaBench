; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_subclass.c_add_message.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_subclass.c_add_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.message = type { i32, i32 }

@sequence = common dso_local global %struct.TYPE_6__* null, align 8
@sequence_size = common dso_local global i32 0, align 4
@sequence_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.message*)* @add_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_message(%struct.message* %0) #0 {
  %2 = alloca %struct.message*, align 8
  store %struct.message* %0, %struct.message** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sequence, align 8
  %4 = icmp ne %struct.TYPE_6__* %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  store i32 10, i32* @sequence_size, align 4
  %6 = load i32, i32* @sequence_size, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = trunc i64 %8 to i32
  %10 = call %struct.TYPE_6__* @heap_alloc(i32 %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** @sequence, align 8
  br label %11

11:                                               ; preds = %5, %1
  %12 = load i32, i32* @sequence_cnt, align 4
  %13 = load i32, i32* @sequence_size, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32, i32* @sequence_size, align 4
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* @sequence_size, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sequence, align 8
  %19 = load i32, i32* @sequence_size, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = call %struct.TYPE_6__* @heap_realloc(%struct.TYPE_6__* %18, i32 %22)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** @sequence, align 8
  br label %24

24:                                               ; preds = %15, %11
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sequence, align 8
  %26 = call i32 @assert(%struct.TYPE_6__* %25)
  %27 = load %struct.message*, %struct.message** %2, align 8
  %28 = getelementptr inbounds %struct.message, %struct.message* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sequence, align 8
  %31 = load i32, i32* @sequence_cnt, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %29, i32* %34, align 4
  %35 = load %struct.message*, %struct.message** %2, align 8
  %36 = getelementptr inbounds %struct.message, %struct.message* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sequence, align 8
  %39 = load i32, i32* @sequence_cnt, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  %43 = load i32, i32* @sequence_cnt, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @sequence_cnt, align 4
  ret void
}

declare dso_local %struct.TYPE_6__* @heap_alloc(i32) #1

declare dso_local %struct.TYPE_6__* @heap_realloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
