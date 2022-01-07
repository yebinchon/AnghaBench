; ModuleID = '/home/carl/AnghaBench/systemd/src/socket-proxy/extr_socket-proxyd.c_resolve_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/socket-proxy/extr_socket-proxyd.c_resolve_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to resolve host: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, %struct.addrinfo*, %struct.TYPE_8__*)* @resolve_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_handler(%struct.TYPE_8__* %0, i32 %1, %struct.addrinfo* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.addrinfo* %2, %struct.addrinfo** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = call i32 @assert(%struct.TYPE_8__* %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %13 = call i32 @assert(%struct.TYPE_8__* %12)
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @gai_strerror(i32 %17)
  %19 = call i32 @log_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %35

20:                                               ; preds = %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sd_resolve_query_unref(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @connection_start(%struct.TYPE_8__* %27, i32 %30, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %38

35:                                               ; preds = %16
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = call i32 @connection_free(%struct.TYPE_8__* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %20
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @log_error(i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @sd_resolve_query_unref(i32) #1

declare dso_local i32 @connection_start(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @connection_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
