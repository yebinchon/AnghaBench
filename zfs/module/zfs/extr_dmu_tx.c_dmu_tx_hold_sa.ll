; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_hold_sa.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_tx.c_dmu_tx_hold_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_19__ = type { i64 }

@B_TRUE = common dso_local global i32 0, align 4
@SA_LAYOUTS = common dso_local global i32* null, align 8
@SA_REGISTRY = common dso_local global i32* null, align 8
@DMU_NEW_OBJECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_tx_hold_sa(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %8, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = icmp ne %struct.TYPE_18__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = call i32 @sa_handle_object(%struct.TYPE_18__* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @DB_DNODE_ENTER(i32* %26)
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call %struct.TYPE_19__* @DB_DNODE(i32* %29)
  %31 = call i32 @dmu_tx_hold_bonus_by_dnode(%struct.TYPE_20__* %28, %struct.TYPE_19__* %30)
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @DB_DNODE_EXIT(i32* %32)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %151

43:                                               ; preds = %3
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %43
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %52, %43
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @B_TRUE, align 4
  %67 = load i32*, i32** @SA_LAYOUTS, align 8
  %68 = call i32 @dmu_tx_hold_zap(%struct.TYPE_20__* %62, i64 %65, i32 %66, i32* %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @B_TRUE, align 4
  %74 = load i32*, i32** @SA_REGISTRY, align 8
  %75 = call i32 @dmu_tx_hold_zap(%struct.TYPE_20__* %69, i64 %72, i32 %73, i32* %74)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %77 = load i64, i64* @DMU_NEW_OBJECT, align 8
  %78 = load i32, i32* @B_TRUE, align 4
  %79 = call i32 @dmu_tx_hold_zap(%struct.TYPE_20__* %76, i64 %77, i32 %78, i32* null)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %81 = load i64, i64* @DMU_NEW_OBJECT, align 8
  %82 = load i32, i32* @B_TRUE, align 4
  %83 = call i32 @dmu_tx_hold_zap(%struct.TYPE_20__* %80, i64 %81, i32 %82, i32* null)
  br label %84

84:                                               ; preds = %61, %52
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %87 = call i32 @dmu_tx_sa_registration_hold(%struct.TYPE_17__* %85, %struct.TYPE_20__* %86)
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %84
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @B_TRUE, align 4
  %105 = call i32 @dmu_tx_hold_zap(%struct.TYPE_20__* %100, i64 %103, i32 %104, i32* null)
  br label %106

106:                                              ; preds = %99, %90, %84
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %106
  %112 = load i64, i64* %6, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %111
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %114, %111, %106
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @ASSERT(i32 %124)
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @dmu_tx_hold_spill(%struct.TYPE_20__* %126, i32 %127)
  br label %151

129:                                              ; preds = %114
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @DB_DNODE_ENTER(i32* %130)
  %132 = load i32*, i32** %9, align 8
  %133 = call %struct.TYPE_19__* @DB_DNODE(i32* %132)
  store %struct.TYPE_19__* %133, %struct.TYPE_19__** %10, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %129
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32 @ASSERT(i32 %143)
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @dmu_tx_hold_spill(%struct.TYPE_20__* %145, i32 %146)
  br label %148

148:                                              ; preds = %138, %129
  %149 = load i32*, i32** %9, align 8
  %150 = call i32 @DB_DNODE_EXIT(i32* %149)
  br label %151

151:                                              ; preds = %42, %148, %119
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @sa_handle_object(%struct.TYPE_18__*) #1

declare dso_local i32 @DB_DNODE_ENTER(i32*) #1

declare dso_local i32 @dmu_tx_hold_bonus_by_dnode(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @DB_DNODE(i32*) #1

declare dso_local i32 @DB_DNODE_EXIT(i32*) #1

declare dso_local i32 @dmu_tx_hold_zap(%struct.TYPE_20__*, i64, i32, i32*) #1

declare dso_local i32 @dmu_tx_sa_registration_hold(%struct.TYPE_17__*, %struct.TYPE_20__*) #1

declare dso_local i32 @dmu_tx_hold_spill(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
