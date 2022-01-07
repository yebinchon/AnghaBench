; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_handle_new_connections.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_friend_connection.c_handle_new_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_20__ }

@handle_status = common dso_local global i32 0, align 4
@handle_packet = common dso_local global i32 0, align 4
@handle_lossy_packet = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@dht_pk_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_17__*)* @handle_new_connections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_new_connections(i8* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %6, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @getfriend_conn_id_pk(%struct.TYPE_18__* %12, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.TYPE_19__* @get_conn(%struct.TYPE_18__* %17, i32 %18)
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %8, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = icmp ne %struct.TYPE_19__* %20, null
  br i1 %21, label %22, label %124

22:                                               ; preds = %2
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %125

28:                                               ; preds = %22
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = call i32 @accept_crypto_connection(i32 %31, %struct.TYPE_17__* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  br label %125

37:                                               ; preds = %28
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @connection_status_handler(i32 %40, i32 %41, i32* @handle_status, %struct.TYPE_18__* %42, i32 %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @connection_data_handler(i32 %47, i32 %48, i32* @handle_packet, %struct.TYPE_18__* %49, i32 %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @connection_lossy_data_handler(i32 %54, i32 %55, i32* @handle_lossy_packet, %struct.TYPE_18__* %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AF_INET, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %37
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AF_INET6, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @set_direct_ip_port(i32 %80, i32 %83, i64 %88, i32 0)
  br label %100

90:                                               ; preds = %69, %37
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = bitcast %struct.TYPE_20__* %92 to i8*
  %96 = bitcast %struct.TYPE_20__* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 8, i1 false)
  %97 = call i32 (...) @unix_time()
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %90, %77
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @public_key_cmp(i32 %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @change_dht_pk(%struct.TYPE_18__* %110, i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %109, %100
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @nc_dht_pk_callback(i32 %119, i32 %120, i32* @dht_pk_callback, %struct.TYPE_18__* %121, i32 %122)
  store i32 0, i32* %3, align 4
  br label %125

124:                                              ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %116, %36, %27
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @getfriend_conn_id_pk(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_19__* @get_conn(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @accept_crypto_connection(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @connection_status_handler(i32, i32, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @connection_data_handler(i32, i32, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @connection_lossy_data_handler(i32, i32, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @set_direct_ip_port(i32, i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unix_time(...) #1

declare dso_local i64 @public_key_cmp(i32, i32) #1

declare dso_local i32 @change_dht_pk(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @nc_dht_pk_callback(i32, i32, i32*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
