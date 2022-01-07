; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_pi.c_opj_pi_next.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_pi.c_opj_pi_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@OPJ_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_pi_next(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %25 [
    i32 132, label %8
    i32 129, label %11
    i32 128, label %14
    i32 131, label %17
    i32 133, label %20
    i32 130, label %23
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = call i32 @opj_pi_next_lrcp(%struct.TYPE_10__* %9)
  store i32 %10, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = call i32 @opj_pi_next_rlcp(%struct.TYPE_10__* %12)
  store i32 %13, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = call i32 @opj_pi_next_rpcl(%struct.TYPE_10__* %15)
  store i32 %16, i32* %2, align 4
  br label %27

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = call i32 @opj_pi_next_pcrl(%struct.TYPE_10__* %18)
  store i32 %19, i32* %2, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call i32 @opj_pi_next_cprl(%struct.TYPE_10__* %21)
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %23, %20, %17, %14, %11, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @opj_pi_next_lrcp(%struct.TYPE_10__*) #1

declare dso_local i32 @opj_pi_next_rlcp(%struct.TYPE_10__*) #1

declare dso_local i32 @opj_pi_next_rpcl(%struct.TYPE_10__*) #1

declare dso_local i32 @opj_pi_next_pcrl(%struct.TYPE_10__*) #1

declare dso_local i32 @opj_pi_next_cprl(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
