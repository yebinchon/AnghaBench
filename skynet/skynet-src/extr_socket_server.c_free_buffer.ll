; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_free_buffer.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i8*)* }
%struct.socket_sendbuffer = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket_server*, %struct.socket_sendbuffer*)* @free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buffer(%struct.socket_server* %0, %struct.socket_sendbuffer* %1) #0 {
  %3 = alloca %struct.socket_server*, align 8
  %4 = alloca %struct.socket_sendbuffer*, align 8
  %5 = alloca i8*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %3, align 8
  store %struct.socket_sendbuffer* %1, %struct.socket_sendbuffer** %4, align 8
  %6 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %4, align 8
  %7 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %5, align 8
  %10 = load %struct.socket_sendbuffer*, %struct.socket_sendbuffer** %4, align 8
  %11 = getelementptr inbounds %struct.socket_sendbuffer, %struct.socket_sendbuffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %24 [
    i32 130, label %13
    i32 129, label %16
    i32 128, label %23
  ]

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @FREE(i8* %14)
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.socket_server*, %struct.socket_server** %3, align 8
  %18 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i8*)*, i32 (i8*)** %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 %20(i8* %21)
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %2, %23, %16, %13
  ret void
}

declare dso_local i32 @FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
