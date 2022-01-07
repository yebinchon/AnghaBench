; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_info.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_info = type { i32 }
%struct.socket_server = type { %struct.socket* }
%struct.socket = type { i32 }

@MAX_SOCKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.socket_info* @socket_server_info(%struct.socket_server* %0) #0 {
  %2 = alloca %struct.socket_server*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket_info*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket_info, align 4
  store %struct.socket_server* %0, %struct.socket_server** %2, align 8
  store %struct.socket_info* null, %struct.socket_info** %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %42, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MAX_SOCKET, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = load %struct.socket_server*, %struct.socket_server** %2, align 8
  %14 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %13, i32 0, i32 0
  %15 = load %struct.socket*, %struct.socket** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %15, i64 %17
  store %struct.socket* %18, %struct.socket** %5, align 8
  %19 = load %struct.socket*, %struct.socket** %5, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = call i64 @query_info(%struct.socket* %22, %struct.socket_info* %7)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %12
  %26 = load %struct.socket*, %struct.socket** %5, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %33 = call %struct.socket_info* @socket_info_create(%struct.socket_info* %32)
  store %struct.socket_info* %33, %struct.socket_info** %4, align 8
  %34 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %35 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %7, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  %39 = bitcast %struct.socket_info* %38 to i8*
  %40 = bitcast %struct.socket_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  br label %41

41:                                               ; preds = %31, %25, %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %8

45:                                               ; preds = %8
  %46 = load %struct.socket_info*, %struct.socket_info** %4, align 8
  ret %struct.socket_info* %46
}

declare dso_local i64 @query_info(%struct.socket*, %struct.socket_info*) #1

declare dso_local %struct.socket_info* @socket_info_create(%struct.socket_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
