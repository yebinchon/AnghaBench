; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_hash_insert.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyvalue = type { i64, i64, i32*, %struct.keyvalue*, i32 }
%struct.hashmap = type { %struct.keyvalue** }

@GLOBALNAME_LENGTH = common dso_local global i32 0, align 4
@HASH_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.keyvalue* (%struct.hashmap*, i8*)* @hash_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.keyvalue* @hash_insert(%struct.hashmap* %0, i8* %1) #0 {
  %3 = alloca %struct.hashmap*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.keyvalue**, align 8
  %8 = alloca %struct.keyvalue*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @GLOBALNAME_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %5, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = xor i64 %15, %18
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 2
  %22 = load i64, i64* %21, align 8
  %23 = xor i64 %19, %22
  %24 = load i64*, i64** %5, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 3
  %26 = load i64, i64* %25, align 8
  %27 = xor i64 %23, %26
  store i64 %27, i64* %6, align 8
  %28 = load %struct.hashmap*, %struct.hashmap** %3, align 8
  %29 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %28, i32 0, i32 0
  %30 = load %struct.keyvalue**, %struct.keyvalue*** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @HASH_SIZE, align 8
  %33 = urem i64 %31, %32
  %34 = getelementptr inbounds %struct.keyvalue*, %struct.keyvalue** %30, i64 %33
  store %struct.keyvalue** %34, %struct.keyvalue*** %7, align 8
  %35 = call %struct.keyvalue* @skynet_malloc(i32 40)
  store %struct.keyvalue* %35, %struct.keyvalue** %8, align 8
  %36 = load %struct.keyvalue*, %struct.keyvalue** %8, align 8
  %37 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @GLOBALNAME_LENGTH, align 4
  %41 = call i32 @memcpy(i32 %38, i8* %39, i32 %40)
  %42 = load %struct.keyvalue**, %struct.keyvalue*** %7, align 8
  %43 = load %struct.keyvalue*, %struct.keyvalue** %42, align 8
  %44 = load %struct.keyvalue*, %struct.keyvalue** %8, align 8
  %45 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %44, i32 0, i32 3
  store %struct.keyvalue* %43, %struct.keyvalue** %45, align 8
  %46 = load %struct.keyvalue*, %struct.keyvalue** %8, align 8
  %47 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.keyvalue*, %struct.keyvalue** %8, align 8
  %50 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.keyvalue*, %struct.keyvalue** %8, align 8
  %52 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.keyvalue*, %struct.keyvalue** %8, align 8
  %54 = load %struct.keyvalue**, %struct.keyvalue*** %7, align 8
  store %struct.keyvalue* %53, %struct.keyvalue** %54, align 8
  %55 = load %struct.keyvalue*, %struct.keyvalue** %8, align 8
  ret %struct.keyvalue* %55
}

declare dso_local %struct.keyvalue* @skynet_malloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
