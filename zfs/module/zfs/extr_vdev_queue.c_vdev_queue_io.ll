; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_queue.c_vdev_queue_io.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_queue.c_vdev_queue_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@ZIO_FLAG_DONT_QUEUE = common dso_local global i32 0, align 4
@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@ZIO_PRIORITY_TRIM = common dso_local global i64 0, align 8
@ZIO_PRIORITY_SYNC_READ = common dso_local global i64 0, align 8
@ZIO_PRIORITY_ASYNC_READ = common dso_local global i64 0, align 8
@ZIO_PRIORITY_SCRUB = common dso_local global i64 0, align 8
@ZIO_PRIORITY_REMOVAL = common dso_local global i64 0, align 8
@ZIO_PRIORITY_INITIALIZING = common dso_local global i64 0, align 8
@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@ZIO_PRIORITY_SYNC_WRITE = common dso_local global i64 0, align 8
@ZIO_PRIORITY_ASYNC_WRITE = common dso_local global i64 0, align 8
@ZIO_TYPE_TRIM = common dso_local global i64 0, align 8
@ZIO_FLAG_DONT_CACHE = common dso_local global i32 0, align 4
@vdev_queue_agg_io_done = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @vdev_queue_io(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 5
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ZIO_FLAG_DONT_QUEUE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %2, align 8
  br label %160

18:                                               ; preds = %1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZIO_TYPE_READ, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %18
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ZIO_PRIORITY_TRIM, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ZIO_PRIORITY_SYNC_READ, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %24
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ZIO_PRIORITY_ASYNC_READ, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ZIO_PRIORITY_SCRUB, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ZIO_PRIORITY_REMOVAL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ZIO_PRIORITY_INITIALIZING, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i64, i64* @ZIO_PRIORITY_ASYNC_READ, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %55, %49, %43, %37, %24
  br label %124

66:                                               ; preds = %18
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %66
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ZIO_PRIORITY_TRIM, align 8
  %77 = icmp ne i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ZIO_PRIORITY_SYNC_WRITE, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %72
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ZIO_PRIORITY_ASYNC_WRITE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %85
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ZIO_PRIORITY_REMOVAL, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ZIO_PRIORITY_INITIALIZING, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i64, i64* @ZIO_PRIORITY_ASYNC_WRITE, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %97, %91, %85, %72
  br label %123

108:                                              ; preds = %66
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ZIO_TYPE_TRIM, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @ASSERT(i32 %114)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ZIO_PRIORITY_TRIM, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @ASSERT(i32 %121)
  br label %123

123:                                              ; preds = %108, %107
  br label %124

124:                                              ; preds = %123, %65
  %125 = load i32, i32* @ZIO_FLAG_DONT_CACHE, align 4
  %126 = load i32, i32* @ZIO_FLAG_DONT_QUEUE, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = call i32 @mutex_enter(i32* %133)
  %135 = call i32 (...) @gethrtime()
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %140 = call i32 @vdev_queue_io_add(%struct.TYPE_13__* %138, %struct.TYPE_12__* %139)
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %142 = call %struct.TYPE_12__* @vdev_queue_io_to_issue(%struct.TYPE_13__* %141)
  store %struct.TYPE_12__* %142, %struct.TYPE_12__** %5, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = call i32 @mutex_exit(i32* %144)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %147 = icmp eq %struct.TYPE_12__* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %124
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %160

149:                                              ; preds = %124
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @vdev_queue_agg_io_done, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = call i32 @zio_nowait(%struct.TYPE_12__* %156)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %160

158:                                              ; preds = %149
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %159, %struct.TYPE_12__** %2, align 8
  br label %160

160:                                              ; preds = %158, %155, %148, %16
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %161
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @vdev_queue_io_add(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @vdev_queue_io_to_issue(%struct.TYPE_13__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zio_nowait(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
