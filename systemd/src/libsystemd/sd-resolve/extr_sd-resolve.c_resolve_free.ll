; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-resolve/extr_sd-resolve.c_resolve_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-resolve/extr_sd-resolve.c_resolve_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64*, i32, i32*, i32**, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, i32 }

@PROTECT_ERRNO = common dso_local global i32 0, align 4
@REQUEST_SEND_FD = common dso_local global i64 0, align 8
@REQUEST_TERMINATE = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@_FD_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_14__*)* @resolve_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @resolve_free(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load i32, i32* @PROTECT_ERRNO, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %8 = call i32 @assert(%struct.TYPE_14__* %7)
  br label %9

9:                                                ; preds = %14, %1
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %3, align 8
  %13 = icmp ne %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = call i32 @assert(%struct.TYPE_14__* %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = call i32 @resolve_query_disconnect(%struct.TYPE_13__* %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = call i32 @sd_resolve_query_unref(%struct.TYPE_13__* %21)
  br label %9

23:                                               ; preds = %9
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 4
  %26 = load i32**, i32*** %25, align 8
  %27 = icmp ne i32** %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 4
  %31 = load i32**, i32*** %30, align 8
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = call i32 @sd_resolve_detach_event(%struct.TYPE_14__* %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @REQUEST_SEND_FD, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 8, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %47 = load i32, i32* @REQUEST_TERMINATE, align 4
  store i32 %47, i32* %46, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %65, %44
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @REQUEST_SEND_FD, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MSG_NOSIGNAL, align 4
  %64 = call i32 @send(i64 %60, %struct.TYPE_15__* %5, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %48

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %68, %32
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %85, %69
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pthread_join(i32 %83, i32* null)
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %4, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %70

88:                                               ; preds = %70
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* @_FD_MAX, align 4
  %93 = call i32 @close_many(i64* %91, i32 %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %95 = call %struct.TYPE_14__* @mfree(%struct.TYPE_14__* %94)
  ret %struct.TYPE_14__* %95
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @resolve_query_disconnect(%struct.TYPE_13__*) #1

declare dso_local i32 @sd_resolve_query_unref(%struct.TYPE_13__*) #1

declare dso_local i32 @sd_resolve_detach_event(%struct.TYPE_14__*) #1

declare dso_local i32 @send(i64, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @close_many(i64*, i32) #1

declare dso_local %struct.TYPE_14__* @mfree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
