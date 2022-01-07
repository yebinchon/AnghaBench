; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupIsolatedWellKnownName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/lsasrv/extr_lookup.c_LsapLookupIsolatedWellKnownName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }

@WellKnownSidListHead = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@WELL_KNOWN_SID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @LsapLookupIsolatedWellKnownName(i32 %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @WellKnownSidListHead, i32 0, i32 0), align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %4, align 8
  br label %7

7:                                                ; preds = %23, %1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, @WellKnownSidListHead
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = load i32, i32* @WELL_KNOWN_SID, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = call %struct.TYPE_8__* @CONTAINING_RECORD(%struct.TYPE_9__* %11, i32 %12, %struct.TYPE_9__* %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* @TRUE, align 4
  %19 = call i64 @RtlEqualUnicodeString(i32 %15, i32* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %2, align 8
  br label %28

23:                                               ; preds = %10
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %4, align 8
  br label %7

27:                                               ; preds = %7
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %28

28:                                               ; preds = %27, %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %29
}

declare dso_local %struct.TYPE_8__* @CONTAINING_RECORD(%struct.TYPE_9__*, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @RtlEqualUnicodeString(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
