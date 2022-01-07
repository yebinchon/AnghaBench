; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_dec_sending_ref.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_dec_sending_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { %struct.socket* }
%struct.socket = type { i32, i64, i32 }

@PROTOCOL_TCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_server*, i32)* @dec_sending_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec_sending_ref(%struct.socket_server* %0, i32 %1) #0 {
  %3 = alloca %struct.socket_server*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.socket_server*, %struct.socket_server** %3, align 8
  %7 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %6, i32 0, i32 0
  %8 = load %struct.socket*, %struct.socket** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @HASH_ID(i32 %9)
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %8, i64 %10
  store %struct.socket* %11, %struct.socket** %5, align 8
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PROTOCOL_TCP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 65535
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.socket*, %struct.socket** %5, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 2
  %33 = call i32 @ATOM_DEC(i32* %32)
  br label %34

34:                                               ; preds = %23, %17, %2
  ret void
}

declare dso_local i64 @HASH_ID(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ATOM_DEC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
