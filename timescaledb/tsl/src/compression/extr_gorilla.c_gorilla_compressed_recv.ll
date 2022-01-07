; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_gorilla.c_gorilla_compressed_recv.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_gorilla.c_gorilla_compressed_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_6__* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid recv in gorilla: bad bool\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gorilla_compressed_recv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %3, align 4
  %6 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 12, i1 false)
  %7 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 56, i1 false)
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 6
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @pq_getmsgbyte(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 @elog(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %15, %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pq_getmsgint64(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i8* @simple8brle_serialized_recv(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  store i8* %27, i8** %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i8* @simple8brle_serialized_recv(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i8* %30, i8** %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i8* @bit_array_recv(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i8* @simple8brle_serialized_recv(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i8* @bit_array_recv(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load i32, i32* %3, align 4
  %46 = call i8* @simple8brle_serialized_recv(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %22
  %49 = call i32 @compressed_gorilla_data_serialize(%struct.TYPE_7__* %5)
  %50 = call i32 @PG_RETURN_POINTER(i32 %49)
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pq_getmsgbyte(i32) #2

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local i32 @pq_getmsgint64(i32) #2

declare dso_local i8* @simple8brle_serialized_recv(i32) #2

declare dso_local i8* @bit_array_recv(i32) #2

declare dso_local i32 @PG_RETURN_POINTER(i32) #2

declare dso_local i32 @compressed_gorilla_data_serialize(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
