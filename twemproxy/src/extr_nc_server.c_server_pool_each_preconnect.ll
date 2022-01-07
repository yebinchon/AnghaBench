; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_each_preconnect.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_each_preconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_pool = type { i32, i32 }

@NC_OK = common dso_local global i64 0, align 8
@server_each_preconnect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*)* @server_pool_each_preconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @server_pool_each_preconnect(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.server_pool*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.server_pool*
  store %struct.server_pool* %9, %struct.server_pool** %7, align 8
  %10 = load %struct.server_pool*, %struct.server_pool** %7, align 8
  %11 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @NC_OK, align 8
  store i64 %15, i64* %3, align 8
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.server_pool*, %struct.server_pool** %7, align 8
  %18 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %17, i32 0, i32 0
  %19 = load i32, i32* @server_each_preconnect, align 4
  %20 = call i64 @array_each(i32* %18, i32 %19, i32* null)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @NC_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %3, align 8
  br label %28

26:                                               ; preds = %16
  %27 = load i64, i64* @NC_OK, align 8
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %26, %24, %14
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

declare dso_local i64 @array_each(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
