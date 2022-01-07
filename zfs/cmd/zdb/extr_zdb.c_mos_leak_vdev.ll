; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_mos_leak_vdev.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_mos_leak_vdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_15__**, %struct.TYPE_16__**, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @mos_leak_vdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos_leak_vdev(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @mos_obj_refd(i64 %8)
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @mos_obj_refd(i64 %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 11
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @mos_obj_refd(i64 %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 11
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @mos_obj_refd(i64 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @mos_obj_refd(i64 %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 10
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 10
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @mos_obj_refd(i64 %37)
  br label %39

39:                                               ; preds = %32, %1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 9
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = icmp ne %struct.TYPE_13__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 9
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @mos_obj_refd(i64 %51)
  br label %53

53:                                               ; preds = %44, %39
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = icmp ne %struct.TYPE_14__* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @mos_obj_refd(i64 %63)
  br label %65

65:                                               ; preds = %58, %53
  store i64 0, i64* %3, align 8
  br label %66

66:                                               ; preds = %84, %65
  %67 = load i64, i64* %3, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %67, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %66
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 7
  %75 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %74, align 8
  %76 = load i64, i64* %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %75, i64 %76
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  store %struct.TYPE_16__* %78, %struct.TYPE_16__** %4, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @space_map_object(i32 %81)
  %83 = call i32 @mos_obj_refd(i64 %82)
  br label %84

84:                                               ; preds = %72
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %3, align 8
  br label %66

87:                                               ; preds = %66
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @mos_obj_refd(i64 %95)
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %98 = call i32 @mos_leak_vdev_top_zap(%struct.TYPE_15__* %97)
  br label %99

99:                                               ; preds = %92, %87
  store i64 0, i64* %5, align 8
  br label %100

100:                                              ; preds = %113, %99
  %101 = load i64, i64* %5, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 6
  %109 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %109, i64 %110
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  call void @mos_leak_vdev(%struct.TYPE_15__* %112)
  br label %113

113:                                              ; preds = %106
  %114 = load i64, i64* %5, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %5, align 8
  br label %100

116:                                              ; preds = %100
  ret void
}

declare dso_local i32 @mos_obj_refd(i64) #1

declare dso_local i64 @space_map_object(i32) #1

declare dso_local i32 @mos_leak_vdev_top_zap(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
