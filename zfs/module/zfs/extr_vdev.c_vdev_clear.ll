; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_clear.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i64, i64, i8*, %struct.TYPE_21__*, i32*, %struct.TYPE_22__*, i8*, %struct.TYPE_20__, i8*, i8*, %struct.TYPE_22__** }
%struct.TYPE_21__ = type { %struct.TYPE_22__**, i32* }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i64 }

@SCL_STATE_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@B_FALSE = common dso_local global i8* null, align 8
@SPA_FEATURE_RESILVER_DEFER = common dso_local global i32 0, align 4
@SPA_ASYNC_RESILVER = common dso_local global i32 0, align 4
@ESC_ZFS_VDEV_CLEAR = common dso_local global i32 0, align 4
@vdev_spare_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_clear(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %7 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %5, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %11 = load i64, i64* @SCL_STATE_ALL, align 8
  %12 = load i32, i32* @RW_WRITER, align 4
  %13 = call i64 @spa_config_held(%struct.TYPE_23__* %10, i64 %11, i32 %12)
  %14 = load i64, i64* @SCL_STATE_ALL, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = icmp eq %struct.TYPE_22__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %4, align 8
  br label %22

22:                                               ; preds = %20, %2
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %50, %22
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 11
  %45 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %45, i64 %47
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %48, align 8
  call void @vdev_clear(%struct.TYPE_23__* %42, %struct.TYPE_22__* %49)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %35

53:                                               ; preds = %35
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = call i32 @vdev_is_concrete(%struct.TYPE_22__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %186

58:                                               ; preds = %53
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %70 = call i32 @vdev_readable(%struct.TYPE_22__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %74 = call i64 @vdev_writeable(%struct.TYPE_22__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %156, label %76

76:                                               ; preds = %72, %68, %63, %58
  %77 = load i8*, i8** @B_TRUE, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 7
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load i8*, i8** @B_FALSE, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 10
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @B_FALSE, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 9
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %95 = icmp eq %struct.TYPE_22__* %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %76
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  br label %102

98:                                               ; preds = %76
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  br label %102

102:                                              ; preds = %98, %96
  %103 = phi %struct.TYPE_22__* [ %97, %96 ], [ %101, %98 ]
  %104 = call i32 @vdev_reopen(%struct.TYPE_22__* %103)
  %105 = load i8*, i8** @B_FALSE, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 7
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %110 = icmp ne %struct.TYPE_22__* %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %102
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 6
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %113, align 8
  %115 = call i64 @vdev_writeable(%struct.TYPE_22__* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %119, align 8
  %121 = call i32 @vdev_state_dirty(%struct.TYPE_22__* %120)
  br label %122

122:                                              ; preds = %117, %111, %102
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %151

127:                                              ; preds = %122
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %129 = call i32 @vdev_is_dead(%struct.TYPE_22__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %151, label %131

131:                                              ; preds = %127
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @dsl_scan_resilvering(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %139 = load i32, i32* @SPA_FEATURE_RESILVER_DEFER, align 4
  %140 = call i64 @spa_feature_is_enabled(%struct.TYPE_23__* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %145 = call i32 @vdev_set_deferred_resilver(%struct.TYPE_23__* %143, %struct.TYPE_22__* %144)
  br label %150

146:                                              ; preds = %137, %131
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %148 = load i32, i32* @SPA_ASYNC_RESILVER, align 4
  %149 = call i32 @spa_async_request(%struct.TYPE_23__* %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %142
  br label %151

151:                                              ; preds = %150, %127, %122
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %154 = load i32, i32* @ESC_ZFS_VDEV_CLEAR, align 4
  %155 = call i32 @spa_event_notify(%struct.TYPE_23__* %152, %struct.TYPE_22__* %153, i32* null, i32 %154)
  br label %156

156:                                              ; preds = %151, %72
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %158 = call i32 @vdev_is_dead(%struct.TYPE_22__* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %186, label %160

160:                                              ; preds = %156
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 4
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %162, align 8
  %164 = icmp ne %struct.TYPE_21__* %163, null
  br i1 %164, label %165, label %186

165:                                              ; preds = %160
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, @vdev_spare_ops
  br i1 %171, label %172, label %186

172:                                              ; preds = %165
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %177, i64 0
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %178, align 8
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %181 = icmp eq %struct.TYPE_22__* %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %172
  %183 = load i8*, i8** @B_TRUE, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 3
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %57, %182, %172, %165, %160, %156
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_23__*, i64, i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_22__*) #1

declare dso_local i32 @vdev_readable(%struct.TYPE_22__*) #1

declare dso_local i64 @vdev_writeable(%struct.TYPE_22__*) #1

declare dso_local i32 @vdev_reopen(%struct.TYPE_22__*) #1

declare dso_local i32 @vdev_state_dirty(%struct.TYPE_22__*) #1

declare dso_local i32 @vdev_is_dead(%struct.TYPE_22__*) #1

declare dso_local i64 @dsl_scan_resilvering(i32) #1

declare dso_local i64 @spa_feature_is_enabled(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @vdev_set_deferred_resilver(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_23__*, %struct.TYPE_22__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
