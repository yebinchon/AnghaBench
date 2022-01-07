; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_mmp.c_mmp_next_leaf.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_mmp.c_mmp_next_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_12__, %struct.TYPE_15__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32 }

@SCL_STATE = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@MMP_FAIL_NOT_WRITABLE = common dso_local global i32 0, align 4
@MMP_FAIL_WRITE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @mmp_next_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_next_leaf(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = call i32 @MUTEX_HELD(i32* %9)
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = load i32, i32* @SCL_STATE, align 4
  %14 = load i32, i32* @RW_READER, align 4
  %15 = call i32 @spa_config_held(%struct.TYPE_14__* %12, i32 %13, i32 %14)
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = call i64 @list_link_active(i32* %19)
  %21 = load i64, i64* @B_TRUE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = call i32 @list_is_empty(%struct.TYPE_15__* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = call i8* @list_head(%struct.TYPE_15__* %42)
  %44 = bitcast i8* %43 to %struct.TYPE_13__*
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %47, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %40, %1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %4, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = icmp eq %struct.TYPE_13__* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = call i8* @list_head(%struct.TYPE_15__* %63)
  %65 = bitcast i8* %64 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %4, align 8
  br label %66

66:                                               ; preds = %61, %54
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %5, align 8
  br label %68

68:                                               ; preds = %104, %66
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = call %struct.TYPE_13__* @list_next(%struct.TYPE_15__* %70, %struct.TYPE_13__* %71)
  store %struct.TYPE_13__* %72, %struct.TYPE_13__** %4, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = icmp eq %struct.TYPE_13__* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = call i8* @list_head(%struct.TYPE_15__* %77)
  %79 = bitcast i8* %78 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %4, align 8
  br label %80

80:                                               ; preds = %75, %68
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = call i32 @vdev_writeable(%struct.TYPE_13__* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @MMP_FAIL_NOT_WRITABLE, align 4
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %103

88:                                               ; preds = %80
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @MMP_FAIL_WRITE_PENDING, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %102

97:                                               ; preds = %88
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %101, align 8
  store i32 0, i32* %2, align 4
  br label %112

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %84
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = icmp ne %struct.TYPE_13__* %105, %106
  br i1 %107, label %68, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @ASSERT(i32 %109)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %97
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @spa_config_held(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @list_link_active(i32*) #1

declare dso_local i32 @list_is_empty(%struct.TYPE_15__*) #1

declare dso_local i8* @list_head(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_13__* @list_next(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @vdev_writeable(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
