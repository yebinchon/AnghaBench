; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_vdev_initialize_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_vdev_initialize_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__*, i32*, %struct.TYPE_9__*, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_ACTIVE = common dso_local global i64 0, align 8
@VDEV_INITIALIZE_SUSPENDED = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_CANCELED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"invalid cmd_type %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @spa_vdev_initialize_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_vdev_initialize_impl(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @SCL_CONFIG, align 4
  %15 = load i32, i32* @SCL_STATE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FTAG, align 4
  %18 = load i32, i32* @RW_READER, align 4
  %19 = call i32 @spa_config_enter(i32* %13, i32 %16, i32 %17, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @B_FALSE, align 4
  %23 = call %struct.TYPE_11__* @spa_lookup_by_guid(i32* %20, i32 %21, i32 %22)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %10, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %25 = icmp eq %struct.TYPE_11__* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26, %4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @SCL_CONFIG, align 4
  %34 = load i32, i32* @SCL_STATE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @FTAG, align 4
  %37 = call i32 @spa_config_exit(i32* %32, i32 %35, i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %5, align 4
  br label %166

40:                                               ; preds = %26
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = call i32 @vdev_is_concrete(%struct.TYPE_11__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %47, %40
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @SCL_CONFIG, align 4
  %54 = load i32, i32* @SCL_STATE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @FTAG, align 4
  %57 = call i32 @spa_config_exit(i32* %52, i32 %55, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = call i32 @SET_ERROR(i32 %58)
  store i32 %59, i32* %5, align 4
  br label %166

60:                                               ; preds = %47
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = call i32 @vdev_writeable(%struct.TYPE_11__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* @SCL_CONFIG, align 4
  %67 = load i32, i32* @SCL_STATE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @FTAG, align 4
  %70 = call i32 @spa_config_exit(i32* %65, i32 %68, i32 %69)
  %71 = load i32, i32* @EROFS, align 4
  %72 = call i32 @SET_ERROR(i32 %71)
  store i32 %72, i32* %5, align 4
  br label %166

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = call i32 @mutex_enter(i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* @SCL_CONFIG, align 4
  %81 = load i32, i32* @SCL_STATE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @FTAG, align 4
  %84 = call i32 @spa_config_exit(i32* %79, i32 %82, i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 129
  br i1 %86, label %87, label %105

87:                                               ; preds = %75
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92, %87
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = call i32 @mutex_exit(i32* %101)
  %103 = load i32, i32* @EBUSY, align 4
  %104 = call i32 @SET_ERROR(i32 %103)
  store i32 %104, i32* %5, align 4
  br label %166

105:                                              ; preds = %92, %75
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 130
  br i1 %107, label %108, label %126

108:                                              ; preds = %105
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @VDEV_INITIALIZE_ACTIVE, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %108
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @VDEV_INITIALIZE_SUSPENDED, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = call i32 @mutex_exit(i32* %122)
  %124 = load i32, i32* @ESRCH, align 4
  %125 = call i32 @SET_ERROR(i32 %124)
  store i32 %125, i32* %5, align 4
  br label %166

126:                                              ; preds = %114, %108, %105
  %127 = load i32, i32* %8, align 4
  %128 = icmp eq i32 %127, 128
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @VDEV_INITIALIZE_ACTIVE, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = call i32 @mutex_exit(i32* %137)
  %139 = load i32, i32* @ESRCH, align 4
  %140 = call i32 @SET_ERROR(i32 %139)
  store i32 %140, i32* %5, align 4
  br label %166

141:                                              ; preds = %129, %126
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %8, align 4
  switch i32 %144, label %158 [
    i32 129, label %145
    i32 130, label %148
    i32 128, label %153
  ]

145:                                              ; preds = %143
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %147 = call i32 @vdev_initialize(%struct.TYPE_11__* %146)
  br label %162

148:                                              ; preds = %143
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %150 = load i64, i64* @VDEV_INITIALIZE_CANCELED, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = call i32 @vdev_initialize_stop(%struct.TYPE_11__* %149, i64 %150, i32* %151)
  br label %162

153:                                              ; preds = %143
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %155 = load i64, i64* @VDEV_INITIALIZE_SUSPENDED, align 8
  %156 = load i32*, i32** %9, align 8
  %157 = call i32 @vdev_initialize_stop(%struct.TYPE_11__* %154, i64 %155, i32* %156)
  br label %162

158:                                              ; preds = %143
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %160)
  br label %162

162:                                              ; preds = %158, %153, %148, %145
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = call i32 @mutex_exit(i32* %164)
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %162, %135, %120, %99, %64, %51, %31
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @spa_config_enter(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @spa_lookup_by_guid(i32*, i32, i32) #1

declare dso_local i32 @spa_config_exit(i32*, i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_11__*) #1

declare dso_local i32 @vdev_writeable(%struct.TYPE_11__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @vdev_initialize(%struct.TYPE_11__*) #1

declare dso_local i32 @vdev_initialize_stop(%struct.TYPE_11__*, i64, i32*) #1

declare dso_local i32 @panic(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
