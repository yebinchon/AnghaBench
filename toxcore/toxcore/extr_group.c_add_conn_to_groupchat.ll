; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_add_conn_to_groupchat.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_add_conn_to_groupchat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i8* }

@MAX_GROUP_CONNECTIONS = common dso_local global i64 0, align 8
@GROUPCHAT_CLOSE_NONE = common dso_local global i64 0, align 8
@GROUPCHAT_CLOSE_CONNECTION = common dso_local global i64 0, align 8
@GROUPCHAT_CALLBACK_INDEX = common dso_local global i32 0, align 4
@handle_status = common dso_local global i32 0, align 4
@handle_packet = common dso_local global i32 0, align 4
@handle_lossy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32, i8*, i8*)* @add_conn_to_groupchat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_conn_to_groupchat(%struct.TYPE_12__* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.TYPE_11__* @get_group_c(%struct.TYPE_12__* %15, i32 %16)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %12, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %111

21:                                               ; preds = %5
  %22 = load i64, i64* @MAX_GROUP_CONNECTIONS, align 8
  store i64 %22, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %23

23:                                               ; preds = %60, %21
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @MAX_GROUP_CONNECTIONS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i64, i64* %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @GROUPCHAT_CLOSE_NONE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i64, i64* %13, align 8
  store i64 %38, i64* %14, align 8
  br label %60

39:                                               ; preds = %27
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %39
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load i64, i64* %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  store i8* %50, i8** %56, align 8
  %57 = load i64, i64* %13, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  br label %111

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i64, i64* %13, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %13, align 8
  br label %23

63:                                               ; preds = %23
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* @MAX_GROUP_CONNECTIONS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 -1, i32* %6, align 4
  br label %111

68:                                               ; preds = %63
  %69 = load i8*, i8** %11, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @friend_connection_lock(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %68
  %78 = load i64, i64* @GROUPCHAT_CLOSE_CONNECTION, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i64, i64* %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i64 %78, i64* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i64, i64* %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store i32 %85, i32* %91, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load i64, i64* %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  store i8* %92, i8** %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @GROUPCHAT_CALLBACK_INDEX, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @friend_connection_callbacks(i32 %103, i32 %104, i32 %105, i32* @handle_status, i32* @handle_packet, i32* @handle_lossy, %struct.TYPE_12__* %106, i32 %107)
  %109 = load i64, i64* %14, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %77, %67, %49, %20
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_11__* @get_group_c(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @friend_connection_lock(i32, i32) #1

declare dso_local i32 @friend_connection_callbacks(i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
