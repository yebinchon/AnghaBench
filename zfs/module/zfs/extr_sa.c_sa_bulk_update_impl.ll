; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_sa.c_sa_bulk_update_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_sa.c_sa_bulk_update_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_12__*, i32*)*, i64 }

@SA_BONUS = common dso_local global i32 0, align 4
@SA_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32, i32*)* @sa_bulk_update_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa_bulk_update_impl(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %10, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = call i32 @ASSERT(%struct.TYPE_12__* %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = call %struct.TYPE_12__* @MUTEX_HELD(i32* %21)
  %23 = call i32 @ASSERT(%struct.TYPE_12__* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = load i32, i32* @SA_BONUS, align 4
  %26 = call i32 @SA_GET_DB(%struct.TYPE_12__* %24, i32 %25)
  %27 = call i32 @SA_BONUSTYPE_FROM_DB(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %12, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @sa_attr_register_sync(%struct.TYPE_12__* %36, i32* %37)
  br label %39

39:                                               ; preds = %35, %4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SA_UPDATE, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @sa_attr_op(%struct.TYPE_12__* %40, i32* %41, i32 %42, i32 %43, i32* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @IS_SA_BONUSTYPE(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %48
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_12__*, i32*)*, i32 (%struct.TYPE_12__*, i32*)** %54, align 8
  %56 = icmp ne i32 (%struct.TYPE_12__*, i32*)* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_12__*, i32*)*, i32 (%struct.TYPE_12__*, i32*)** %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 %60(%struct.TYPE_12__* %61, i32* %62)
  br label %64

64:                                               ; preds = %57, %52, %48, %39
  %65 = load i32*, i32** %12, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %94, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @sa_idx_tab_rele(%struct.TYPE_13__* %80, i32* %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %77, %72
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @dmu_buf_rele(i32* %90, i32* null)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %87, %67, %64
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local i32 @ASSERT(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @MUTEX_HELD(i32*) #1

declare dso_local i32 @SA_BONUSTYPE_FROM_DB(i32) #1

declare dso_local i32 @SA_GET_DB(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sa_attr_register_sync(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @sa_attr_op(%struct.TYPE_12__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @IS_SA_BONUSTYPE(i32) #1

declare dso_local i32 @sa_idx_tab_rele(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @dmu_buf_rele(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
