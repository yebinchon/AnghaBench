; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_hash_search.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_hash_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyvalue = type { i64, %struct.keyvalue*, i32 }
%struct.hashmap = type { %struct.keyvalue** }

@GLOBALNAME_LENGTH = common dso_local global i32 0, align 4
@HASH_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.keyvalue* (%struct.hashmap*, i8*)* @hash_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.keyvalue* @hash_search(%struct.hashmap* %0, i8* %1) #0 {
  %3 = alloca %struct.keyvalue*, align 8
  %4 = alloca %struct.hashmap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.keyvalue*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @GLOBALNAME_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %6, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = xor i64 %15, %18
  %20 = load i64*, i64** %6, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 2
  %22 = load i64, i64* %21, align 8
  %23 = xor i64 %19, %22
  %24 = load i64*, i64** %6, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 3
  %26 = load i64, i64* %25, align 8
  %27 = xor i64 %23, %26
  store i64 %27, i64* %7, align 8
  %28 = load %struct.hashmap*, %struct.hashmap** %4, align 8
  %29 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %28, i32 0, i32 0
  %30 = load %struct.keyvalue**, %struct.keyvalue*** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @HASH_SIZE, align 8
  %33 = urem i64 %31, %32
  %34 = getelementptr inbounds %struct.keyvalue*, %struct.keyvalue** %30, i64 %33
  %35 = load %struct.keyvalue*, %struct.keyvalue** %34, align 8
  store %struct.keyvalue* %35, %struct.keyvalue** %8, align 8
  br label %36

36:                                               ; preds = %55, %2
  %37 = load %struct.keyvalue*, %struct.keyvalue** %8, align 8
  %38 = icmp ne %struct.keyvalue* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.keyvalue*, %struct.keyvalue** %8, align 8
  %41 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.keyvalue*, %struct.keyvalue** %8, align 8
  %47 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @GLOBALNAME_LENGTH, align 4
  %51 = call i64 @strncmp(i32 %48, i8* %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load %struct.keyvalue*, %struct.keyvalue** %8, align 8
  store %struct.keyvalue* %54, %struct.keyvalue** %3, align 8
  br label %60

55:                                               ; preds = %45, %39
  %56 = load %struct.keyvalue*, %struct.keyvalue** %8, align 8
  %57 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %56, i32 0, i32 1
  %58 = load %struct.keyvalue*, %struct.keyvalue** %57, align 8
  store %struct.keyvalue* %58, %struct.keyvalue** %8, align 8
  br label %36

59:                                               ; preds = %36
  store %struct.keyvalue* null, %struct.keyvalue** %3, align 8
  br label %60

60:                                               ; preds = %59, %53
  %61 = load %struct.keyvalue*, %struct.keyvalue** %3, align 8
  ret %struct.keyvalue* %61
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
