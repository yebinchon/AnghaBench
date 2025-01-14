; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_send_block_callback.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_send_block_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i64 }

@HTTP_TASK_STATE_CANCELED = common dso_local global i64 0, align 8
@CURL_READFUNC_ABORT = common dso_local global i64 0, align 8
@seaf = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed to read block %s in repo %.8s.\0A\00", align 1
@SYNC_ERROR_ID_LOCAL_DATA_CORRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @send_block_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @send_block_callback(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = mul i64 %15, %16
  store i64 %17, i64* %10, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %11, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %12, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %4
  %34 = load i64, i64* @CURL_READFUNC_ABORT, align 8
  store i64 %34, i64* %5, align 8
  br label %97

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @seaf_block_manager_read_block(i32 %38, i32 %41, i8* %42, i64 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %35
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load i32, i32* @SYNC_ERROR_ID_LOCAL_DATA_CORRUPT, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i64, i64* @CURL_READFUNC_ABORT, align 8
  store i64 %58, i64* %5, align 8
  br label %97

59:                                               ; preds = %35
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @g_atomic_int_add(i32* %63, i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @g_atomic_int_add(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %59, %93
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = call i64 @g_atomic_int_get(i32* %74)
  store i64 %75, i64* %14, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %70
  %83 = load i64, i64* %14, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %83, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = call i32 @g_usleep(i32 100000)
  br label %93

92:                                               ; preds = %82, %70
  br label %94

93:                                               ; preds = %90
  br label %70

94:                                               ; preds = %92
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %94, %47, %33
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

declare dso_local i32 @seaf_block_manager_read_block(i32, i32, i8*, i64) #1

declare dso_local i32 @seaf_warning(i8*, i32, i32) #1

declare dso_local i32 @g_atomic_int_add(i32*, i32) #1

declare dso_local i64 @g_atomic_int_get(i32*) #1

declare dso_local i32 @g_usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
