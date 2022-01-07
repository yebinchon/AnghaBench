; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_key_fill.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_key_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ddt_key_fill(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = call i64 @BP_IS_ENCRYPTED(%struct.TYPE_15__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = call i32 @BP_USES_CRYPT(%struct.TYPE_15__* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i1 [ true, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = call i32 @BP_GET_LSIZE(%struct.TYPE_15__* %25)
  %27 = call i32 @DDK_SET_LSIZE(%struct.TYPE_14__* %24, i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = call i32 @BP_GET_PSIZE(%struct.TYPE_15__* %29)
  %31 = call i32 @DDK_SET_PSIZE(%struct.TYPE_14__* %28, i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = call i32 @BP_GET_COMPRESS(%struct.TYPE_15__* %33)
  %35 = call i32 @DDK_SET_COMPRESS(%struct.TYPE_14__* %32, i32 %34)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = call i32 @BP_USES_CRYPT(%struct.TYPE_15__* %37)
  %39 = call i32 @DDK_SET_CRYPT(%struct.TYPE_14__* %36, i32 %38)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @BP_IS_ENCRYPTED(%struct.TYPE_15__*) #1

declare dso_local i32 @BP_USES_CRYPT(%struct.TYPE_15__*) #1

declare dso_local i32 @DDK_SET_LSIZE(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @BP_GET_LSIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @DDK_SET_PSIZE(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @BP_GET_PSIZE(%struct.TYPE_15__*) #1

declare dso_local i32 @DDK_SET_COMPRESS(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @BP_GET_COMPRESS(%struct.TYPE_15__*) #1

declare dso_local i32 @DDK_SET_CRYPT(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
