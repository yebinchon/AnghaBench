; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_utils.c_FreeDeviceList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_utils.c_FreeDeviceList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [18 x i8] c"FreeDeviceList()\0A\00", align 1
@DeviceList = common dso_local global %struct.TYPE_3__* null, align 8
@Heap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FreeDeviceList() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = call i32 @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %4

4:                                                ; preds = %23, %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @DeviceList, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @DeviceList, align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %2, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** @DeviceList, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %7
  %17 = load i32, i32* @Heap, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @HeapFree(i32 %17, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %16, %7
  %24 = load i32, i32* @Heap, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = ptrtoint %struct.TYPE_3__* %25 to i32
  %27 = call i32 @HeapFree(i32 %24, i32 0, i32 %26)
  br label %4

28:                                               ; preds = %4
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
