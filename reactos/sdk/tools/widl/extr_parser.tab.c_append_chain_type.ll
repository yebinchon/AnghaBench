; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_append_chain_type.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.tab.c_append_chain_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_15__*, %struct.TYPE_15__*)* @append_chain_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @append_chain_type(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %8 = icmp ne %struct.TYPE_15__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %3, align 8
  br label %46

11:                                               ; preds = %2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %6, align 8
  br label %13

13:                                               ; preds = %18, %11
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = call %struct.TYPE_15__* @get_array_or_ptr_ref(%struct.TYPE_15__* %14)
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = call %struct.TYPE_15__* @get_array_or_ptr_ref(%struct.TYPE_15__* %19)
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %6, align 8
  br label %13

21:                                               ; preds = %13
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = call i64 @is_ptr(%struct.TYPE_15__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %30, align 8
  br label %44

31:                                               ; preds = %21
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = call i64 @is_array(%struct.TYPE_15__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %40, align 8
  br label %43

41:                                               ; preds = %31
  %42 = call i32 @assert(i32 0)
  br label %43

43:                                               ; preds = %41, %35
  br label %44

44:                                               ; preds = %43, %25
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %3, align 8
  br label %46

46:                                               ; preds = %44, %9
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %47
}

declare dso_local %struct.TYPE_15__* @get_array_or_ptr_ref(%struct.TYPE_15__*) #1

declare dso_local i64 @is_ptr(%struct.TYPE_15__*) #1

declare dso_local i64 @is_array(%struct.TYPE_15__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
