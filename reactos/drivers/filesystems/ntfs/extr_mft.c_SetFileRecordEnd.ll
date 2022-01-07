; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_SetFileRecordEnd.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_mft.c_SetFileRecordEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ATTR_RECORD_ALIGNMENT = common dso_local global i32 0, align 4
@AttributeEnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetFileRecordEnd(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %9 = ptrtoint %struct.TYPE_5__* %8 to i32
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = ptrtoint %struct.TYPE_6__* %10 to i32
  %12 = sub nsw i32 %9, %11
  %13 = load i32, i32* @ATTR_RECORD_ALIGNMENT, align 4
  %14 = srem i32 %12, %13
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load i32, i32* @AttributeEnd, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = ptrtoint %struct.TYPE_5__* %24 to i32
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = ptrtoint %struct.TYPE_6__* %26 to i32
  %28 = sub nsw i32 %25, %27
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
