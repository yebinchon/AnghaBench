; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_conservative_normalize.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_variant_conservative_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*)* @json_variant_conservative_normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @json_variant_conservative_normalize(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %5 = icmp ne %struct.TYPE_7__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %33

7:                                                ; preds = %1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = call i32 @json_variant_is_regular(%struct.TYPE_7__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %2, align 8
  br label %33

13:                                               ; preds = %7
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %18, %13
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %2, align 8
  br label %33

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = call %struct.TYPE_7__* @json_variant_normalize(%struct.TYPE_7__* %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %2, align 8
  br label %33

33:                                               ; preds = %30, %28, %11, %6
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %34
}

declare dso_local i32 @json_variant_is_regular(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @json_variant_normalize(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
