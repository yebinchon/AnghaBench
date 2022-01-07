; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_server.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.server_pool = type { i32, i32 }

@LOG_VERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"key '%.*s' on dist %d maps to server '%.*s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.server* (%struct.server_pool*, i32*, i32)* @server_pool_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.server* @server_pool_server(%struct.server_pool* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.server_pool*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.server*, align 8
  %8 = alloca i32, align 4
  store %struct.server_pool* %0, %struct.server_pool** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.server_pool*, %struct.server_pool** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @server_pool_idx(%struct.server_pool* %9, i32* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.server_pool*, %struct.server_pool** %4, align 8
  %14 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %13, i32 0, i32 1
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.server* @array_get(i32* %14, i32 %15)
  store %struct.server* %16, %struct.server** %7, align 8
  %17 = load i32, i32* @LOG_VERB, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.server_pool*, %struct.server_pool** %4, align 8
  %21 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.server*, %struct.server** %7, align 8
  %24 = getelementptr inbounds %struct.server, %struct.server* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.server*, %struct.server** %7, align 8
  %28 = getelementptr inbounds %struct.server, %struct.server* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @log_debug(i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18, i32* %19, i32 %22, i32 %26, i32 %30)
  %32 = load %struct.server*, %struct.server** %7, align 8
  ret %struct.server* %32
}

declare dso_local i32 @server_pool_idx(%struct.server_pool*, i32*, i32) #1

declare dso_local %struct.server* @array_get(i32*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
