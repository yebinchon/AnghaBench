; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_run.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_pool = type { i32, i32 }

@NC_ERROR = common dso_local global i32 0, align 4
@NC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_pool_run(%struct.server_pool* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.server_pool*, align 8
  store %struct.server_pool* %0, %struct.server_pool** %3, align 8
  %4 = load %struct.server_pool*, %struct.server_pool** %3, align 8
  %5 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %4, i32 0, i32 1
  %6 = call i64 @array_n(i32* %5)
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load %struct.server_pool*, %struct.server_pool** %3, align 8
  %11 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %22 [
    i32 130, label %13
    i32 129, label %16
    i32 128, label %19
  ]

13:                                               ; preds = %1
  %14 = load %struct.server_pool*, %struct.server_pool** %3, align 8
  %15 = call i32 @ketama_update(%struct.server_pool* %14)
  store i32 %15, i32* %2, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.server_pool*, %struct.server_pool** %3, align 8
  %18 = call i32 @modula_update(%struct.server_pool* %17)
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.server_pool*, %struct.server_pool** %3, align 8
  %21 = call i32 @random_update(%struct.server_pool* %20)
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %1
  %23 = call i32 (...) @NOT_REACHED()
  %24 = load i32, i32* @NC_ERROR, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %19, %16, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @array_n(i32*) #1

declare dso_local i32 @ketama_update(%struct.server_pool*) #1

declare dso_local i32 @modula_update(%struct.server_pool*) #1

declare dso_local i32 @random_update(%struct.server_pool*) #1

declare dso_local i32 @NOT_REACHED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
