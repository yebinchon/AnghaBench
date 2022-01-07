; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_clear.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32*, i64 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SPA_LOG_MISSING = common dso_local global i64 0, align 8
@SPA_LOG_CLEAR = common dso_local global i32 0, align 4
@ZPOOL_NO_REWIND = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCL_NONE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @zfs_ioc_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_clear(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %10 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_19__* @spa_lookup(i32 %13)
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %4, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = icmp eq %struct.TYPE_19__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %19 = load i32, i32* @EIO, align 4
  %20 = call i32 @SET_ERROR(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %160

21:                                               ; preds = %1
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = call i64 @spa_get_log_state(%struct.TYPE_19__* %22)
  %24 = load i64, i64* @SPA_LOG_MISSING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = load i32, i32* @SPA_LOG_CLEAR, align 4
  %29 = call i32 @spa_set_log_state(%struct.TYPE_19__* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ZPOOL_NO_REWIND, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FTAG, align 4
  %45 = call i32 @spa_open(i32 %43, %struct.TYPE_19__** %4, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %89

46:                                               ; preds = %30
  store i32* null, i32** %8, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @SET_ERROR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %160

54:                                               ; preds = %46
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @get_nvlist(i64 %57, i32 %60, i32 %63, i32** %7)
  store i32 %64, i32* %6, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %54
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FTAG, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @spa_open_rewind(i32 %69, %struct.TYPE_19__** %4, i32 %70, i32* %71, i32** %8)
  store i32 %72, i32* %6, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %66
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @put_nvlist(%struct.TYPE_18__* %76, i32* %77)
  store i32 %78, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %80, %75
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @nvlist_free(i32* %83)
  br label %85

85:                                               ; preds = %82, %66
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @nvlist_free(i32* %86)
  br label %88

88:                                               ; preds = %85, %54
  br label %89

89:                                               ; preds = %88, %40
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %160

94:                                               ; preds = %89
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %96 = call i64 @spa_multihost(%struct.TYPE_19__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %100 = call i64 @spa_suspended(%struct.TYPE_19__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @EINVAL, align 4
  %104 = call i32 @SET_ERROR(i32 %103)
  store i32 %104, i32* %2, align 4
  br label %160

105:                                              ; preds = %98, %94
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = load i32, i32* @SCL_NONE, align 4
  %108 = call i32 @spa_vdev_state_enter(%struct.TYPE_19__* %106, i32 %107)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32* null, i32** %5, align 8
  br label %133

114:                                              ; preds = %105
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @B_TRUE, align 4
  %120 = call i32* @spa_lookup_by_guid(%struct.TYPE_19__* %115, i32 %118, i32 %119)
  store i32* %120, i32** %5, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %132

123:                                              ; preds = %114
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %125 = load i32, i32* @ENODEV, align 4
  %126 = call i32 @spa_vdev_state_exit(%struct.TYPE_19__* %124, i32* null, i32 %125)
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %128 = load i32, i32* @FTAG, align 4
  %129 = call i32 @spa_close(%struct.TYPE_19__* %127, i32 %128)
  %130 = load i32, i32* @ENODEV, align 4
  %131 = call i32 @SET_ERROR(i32 %130)
  store i32 %131, i32* %2, align 4
  br label %160

132:                                              ; preds = %114
  br label %133

133:                                              ; preds = %132, %113
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @vdev_clear(%struct.TYPE_19__* %134, i32* %135)
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %139 = call i64 @spa_suspended(%struct.TYPE_19__* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %146

142:                                              ; preds = %133
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  br label %146

146:                                              ; preds = %142, %141
  %147 = phi i32* [ null, %141 ], [ %145, %142 ]
  %148 = call i32 @spa_vdev_state_exit(%struct.TYPE_19__* %137, i32* %147, i32 0)
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = call i64 @zio_resume(%struct.TYPE_19__* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i32, i32* @EIO, align 4
  %154 = call i32 @SET_ERROR(i32 %153)
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %152, %146
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %157 = load i32, i32* @FTAG, align 4
  %158 = call i32 @spa_close(%struct.TYPE_19__* %156, i32 %157)
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %155, %123, %102, %92, %51, %17
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_19__* @spa_lookup(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @spa_get_log_state(%struct.TYPE_19__*) #1

declare dso_local i32 @spa_set_log_state(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @spa_open(i32, %struct.TYPE_19__**, i32) #1

declare dso_local i32 @get_nvlist(i64, i32, i32, i32**) #1

declare dso_local i32 @spa_open_rewind(i32, %struct.TYPE_19__**, i32, i32*, i32**) #1

declare dso_local i32 @put_nvlist(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @spa_multihost(%struct.TYPE_19__*) #1

declare dso_local i64 @spa_suspended(%struct.TYPE_19__*) #1

declare dso_local i32 @spa_vdev_state_enter(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @spa_lookup_by_guid(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @spa_vdev_state_exit(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @spa_close(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @vdev_clear(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @zio_resume(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
