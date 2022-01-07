; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_tcp_copy_connected_relays.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_connection.c_tcp_copy_connected_relays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_13__, i32 }

@TCP_CONN_CONNECTED = common dso_local global i64 0, align 8
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@TCP_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@TCP_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_copy_connected_relays(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = call i32 (...) @rand()
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %112, %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %19, %20
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i1 [ false, %12 ], [ %21, %18 ]
  br i1 %23, label %24, label %115

24:                                               ; preds = %22
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = add i32 %26, %27
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = urem i32 %28, %31
  %33 = call %struct.TYPE_14__* @get_tcp_connection(%struct.TYPE_15__* %25, i32 %32)
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %10, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %112

37:                                               ; preds = %24
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TCP_CONN_CONNECTED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %111

43:                                               ; preds = %37
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %56 = call i32 @memcpy(i32 %49, i32 %54, i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = bitcast %struct.TYPE_13__* %61 to i8*
  %67 = bitcast %struct.TYPE_13__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 8, i1 false)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AF_INET, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %43
  %79 = load i64, i64* @TCP_INET, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  store i64 %79, i64* %86, align 8
  br label %108

87:                                               ; preds = %43
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @AF_INET6, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %87
  %99 = load i64, i64* @TCP_INET6, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  store i64 %99, i64* %106, align 8
  br label %107

107:                                              ; preds = %98, %87
  br label %108

108:                                              ; preds = %107, %78
  %109 = load i32, i32* %8, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %108, %37
  br label %112

112:                                              ; preds = %111, %36
  %113 = load i32, i32* %7, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %12

115:                                              ; preds = %22
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local i32 @rand(...) #1

declare dso_local %struct.TYPE_14__* @get_tcp_connection(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
