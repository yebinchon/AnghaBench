; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_each_set_owner.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_each_set_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_pool = type { %struct.context* }
%struct.context = type { i32 }

@NC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @server_pool_each_set_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_pool_each_set_owner(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.server_pool*, align 8
  %6 = alloca %struct.context*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.server_pool*
  store %struct.server_pool* %8, %struct.server_pool** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.context*
  store %struct.context* %10, %struct.context** %6, align 8
  %11 = load %struct.context*, %struct.context** %6, align 8
  %12 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %13 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %12, i32 0, i32 0
  store %struct.context* %11, %struct.context** %13, align 8
  %14 = load i32, i32* @NC_OK, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
