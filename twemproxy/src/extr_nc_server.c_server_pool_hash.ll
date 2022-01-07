; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_hash.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_pool = type { i64 (i8*, i64)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.server_pool*, i32*, i64)* @server_pool_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @server_pool_hash(%struct.server_pool* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.server_pool*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.server_pool* %0, %struct.server_pool** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %9 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %8, i32 0, i32 1
  %10 = call i32 @array_n(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %19 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %18, i32 0, i32 1
  %20 = call i32 @array_n(i32* %19)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %35

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i64 0, i64* %4, align 8
  br label %35

27:                                               ; preds = %23
  %28 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %29 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %28, i32 0, i32 0
  %30 = load i64 (i8*, i64)*, i64 (i8*, i64)** %29, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i64, i64* %7, align 8
  %34 = call i64 %30(i8* %32, i64 %33)
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %27, %26, %22
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @array_n(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
