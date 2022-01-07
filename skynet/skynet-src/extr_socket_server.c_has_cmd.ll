; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_has_cmd.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_has_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32, i64 }
%struct.timeval = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*)* @has_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_cmd(%struct.socket_server* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket_server*, align 8
  %4 = alloca %struct.timeval, align 4
  %5 = alloca i32, align 4
  store %struct.socket_server* %0, %struct.socket_server** %3, align 8
  %6 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = load %struct.socket_server*, %struct.socket_server** %3, align 8
  %8 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.socket_server*, %struct.socket_server** %3, align 8
  %11 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %10, i32 0, i32 0
  %12 = call i32 @FD_SET(i64 %9, i32* %11)
  %13 = load %struct.socket_server*, %struct.socket_server** %3, align 8
  %14 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = load %struct.socket_server*, %struct.socket_server** %3, align 8
  %18 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %17, i32 0, i32 0
  %19 = call i32 @select(i64 %16, i32* %18, i32* null, i32* null, %struct.timeval* %4)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @FD_SET(i64, i32*) #2

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
