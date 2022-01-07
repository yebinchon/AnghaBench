; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_initialize.c_vdev_initialize_restart.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_initialize.c_vdev_initialize_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, %struct.TYPE_9__**, i32, i32*, %struct.TYPE_8__*, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_NONE = common dso_local global i64 0, align 8
@VDEV_LEAF_ZAP_INITIALIZE_STATE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@VDEV_LEAF_ZAP_INITIALIZE_ACTION_TIME = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_SUSPENDED = common dso_local global i64 0, align 8
@VDEV_INITIALIZE_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_initialize_restart(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %7 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 9
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = load i32, i32* @SCL_ALL, align 4
  %13 = load i32, i32* @RW_WRITER, align 4
  %14 = call i32 @spa_config_held(%struct.TYPE_10__* %11, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %118

23:                                               ; preds = %1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  %26 = call i32 @mutex_enter(i32* %25)
  %27 = load i64, i64* @VDEV_INITIALIZE_NONE, align 8
  store i64 %27, i64* %3, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 9
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @VDEV_LEAF_ZAP_INITIALIZE_STATE, align 4
  %37 = call i32 @zap_lookup(i32 %32, i64 %35, i32 %36, i32 8, i32 1, i64* %3)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @ENOENT, align 4
  %43 = icmp eq i32 %41, %42
  br label %44

44:                                               ; preds = %40, %23
  %45 = phi i1 [ true, %23 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load i64, i64* %3, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  store i64 0, i64* %5, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 9
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @VDEV_LEAF_ZAP_INITIALIZE_ACTION_TIME, align 4
  %60 = call i32 @zap_lookup(i32 %55, i64 %58, i32 %59, i32 8, i32 1, i64* %5)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %44
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @ENOENT, align 4
  %66 = icmp eq i32 %64, %65
  br label %67

67:                                               ; preds = %63, %44
  %68 = phi i1 [ true, %44 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @ASSERT(i32 %69)
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 8
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @VDEV_INITIALIZE_SUSPENDED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %67
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 7
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79, %67
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %86 = call i32 @vdev_initialize_load(%struct.TYPE_9__* %85)
  %87 = call i32 @VERIFY0(i32 %86)
  br label %114

88:                                               ; preds = %79
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @VDEV_INITIALIZE_ACTIVE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %88
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %96 = call i64 @vdev_writeable(%struct.TYPE_9__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %98
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %112 = call i32 @vdev_initialize(%struct.TYPE_9__* %111)
  br label %113

113:                                              ; preds = %110, %105, %98, %94, %88
  br label %114

114:                                              ; preds = %113, %84
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 4
  %117 = call i32 @mutex_exit(i32* %116)
  br label %118

118:                                              ; preds = %114, %1
  store i64 0, i64* %6, align 8
  br label %119

119:                                              ; preds = %132, %118
  %120 = load i64, i64* %6, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %119
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %128, i64 %129
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  call void @vdev_initialize_restart(%struct.TYPE_9__* %131)
  br label %132

132:                                              ; preds = %125
  %133 = load i64, i64* %6, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %6, align 8
  br label %119

135:                                              ; preds = %119
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @spa_config_held(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @zap_lookup(i32, i64, i32, i32, i32, i64*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @vdev_initialize_load(%struct.TYPE_9__*) #1

declare dso_local i64 @vdev_writeable(%struct.TYPE_9__*) #1

declare dso_local i32 @vdev_initialize(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
