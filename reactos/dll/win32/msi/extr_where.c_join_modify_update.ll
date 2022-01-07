; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_join_modify_update.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_join_modify_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, %struct.TYPE_12__*)* @join_modify_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @join_modify_update(%struct.tagMSIVIEW* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tagMSIVIEW*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %12 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %4, align 8
  %13 = bitcast %struct.tagMSIVIEW* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %6, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = call i64 @join_find_row(%struct.TYPE_11__* %14, %struct.TYPE_12__* %15, i64* %8)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %3, align 8
  br label %74

22:                                               ; preds = %2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @msi_view_get_row(i32 %25, %struct.tagMSIVIEW* %26, i64 %27, %struct.TYPE_12__** %11)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @ERROR_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %3, align 8
  br label %74

34:                                               ; preds = %22
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = call i64 @MSI_RecordGetFieldCount(%struct.TYPE_12__* %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %38 = call i64 @MSI_RecordGetFieldCount(%struct.TYPE_12__* %37)
  %39 = icmp eq i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = call i64 @MSI_RecordGetFieldCount(%struct.TYPE_12__* %42)
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %62, %34
  %45 = load i64, i64* %9, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @MSI_RecordsAreFieldsEqual(%struct.TYPE_12__* %48, %struct.TYPE_12__* %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %9, align 8
  %55 = sub nsw i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = shl i32 1, %56
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %10, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %53, %47
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %9, align 8
  %64 = add nsw i64 %63, -1
  store i64 %64, i64* %9, align 8
  br label %44

65:                                               ; preds = %44
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = call i32 @msiobj_release(i32* %67)
  %69 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %4, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @WHERE_set_row(%struct.tagMSIVIEW* %69, i64 %70, %struct.TYPE_12__* %71, i64 %72)
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %65, %32, %20
  %75 = load i64, i64* %3, align 8
  ret i64 %75
}

declare dso_local i64 @join_find_row(%struct.TYPE_11__*, %struct.TYPE_12__*, i64*) #1

declare dso_local i64 @msi_view_get_row(i32, %struct.tagMSIVIEW*, i64, %struct.TYPE_12__**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MSI_RecordGetFieldCount(%struct.TYPE_12__*) #1

declare dso_local i32 @MSI_RecordsAreFieldsEqual(%struct.TYPE_12__*, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @WHERE_set_row(%struct.tagMSIVIEW*, i64, %struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
