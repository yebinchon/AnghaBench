; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_emsdrv.c_GetLogicalPage.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/dos/dos32krnl/extr_emsdrv.c_GetLogicalPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@EMS_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i64)* @GetLogicalPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetLogicalPage(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  br label %11

11:                                               ; preds = %20, %2
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = icmp eq %struct.TYPE_6__* %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %33

20:                                               ; preds = %14
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %5, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %6, align 8
  br label %11

26:                                               ; preds = %11
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = load i32, i32* @EMS_PAGE, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = call i32 @CONTAINING_RECORD(%struct.TYPE_6__* %27, i32 %28, %struct.TYPE_6__* %29)
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %3, align 8
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local i32 @CONTAINING_RECORD(%struct.TYPE_6__*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
