; ModuleID = '/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_udp.c_ngx_insert_udp_connection.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_udp.c_ngx_insert_udp_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, i64, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_delete_udp_connection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @ngx_insert_udp_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_insert_udp_connection(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = icmp ne %struct.TYPE_10__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @NGX_OK, align 4
  store i32 %12, i32* %2, align 4
  br label %84

13:                                               ; preds = %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_10__* @ngx_pcalloc(i32 %16, i32 16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %6, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = icmp eq %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @NGX_ERROR, align 4
  store i32 %21, i32* %2, align 4
  br label %84

22:                                               ; preds = %13
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ngx_crc32_init(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ngx_crc32_update(i32* %4, i32* %31, i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %22
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ngx_crc32_update(i32* %4, i32* %46, i32 %49)
  br label %51

51:                                               ; preds = %42, %22
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @ngx_crc32_final(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_11__* @ngx_pool_cleanup_add(i32 %60, i32 0)
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %5, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = icmp eq %struct.TYPE_11__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* @NGX_ERROR, align 4
  store i32 %65, i32* %2, align 4
  br label %84

66:                                               ; preds = %51
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %69, align 8
  %70 = load i32, i32* @ngx_delete_udp_connection, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = call i32 @ngx_rbtree_insert(i32* %76, %struct.TYPE_13__* %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %82, align 8
  %83 = load i32, i32* @NGX_OK, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %66, %64, %20, %11
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_10__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_crc32_init(i32) #1

declare dso_local i32 @ngx_crc32_update(i32*, i32*, i32) #1

declare dso_local i32 @ngx_crc32_final(i32) #1

declare dso_local %struct.TYPE_11__* @ngx_pool_cleanup_add(i32, i32) #1

declare dso_local i32 @ngx_rbtree_insert(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
