; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-server.c_manager_set_dns_server.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-server.c_manager_set_dns_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Switching to %s DNS server %s.\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"CurrentDNSServer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @manager_set_dns_server(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %7 = call i32 @assert(%struct.TYPE_14__* %6)
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = icmp eq %struct.TYPE_15__* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %3, align 8
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dns_server_type_to_string(i32 %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = call i32 @dns_server_string(%struct.TYPE_15__* %23)
  %25 = call i32 @log_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  br label %26

26:                                               ; preds = %18, %15
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = call i32 @dns_server_unref(%struct.TYPE_15__* %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = call %struct.TYPE_15__* @dns_server_ref(%struct.TYPE_15__* %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = icmp ne %struct.TYPE_13__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %26
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = call i32 @dns_cache_flush(i32* %43)
  br label %45

45:                                               ; preds = %39, %26
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = call i32 @manager_send_changed(%struct.TYPE_14__* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %3, align 8
  br label %49

49:                                               ; preds = %45, %13
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %50
}

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local i32 @log_debug(i8*, i32, i32) #1

declare dso_local i32 @dns_server_type_to_string(i32) #1

declare dso_local i32 @dns_server_string(%struct.TYPE_15__*) #1

declare dso_local i32 @dns_server_unref(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @dns_server_ref(%struct.TYPE_15__*) #1

declare dso_local i32 @dns_cache_flush(i32*) #1

declare dso_local i32 @manager_send_changed(%struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
