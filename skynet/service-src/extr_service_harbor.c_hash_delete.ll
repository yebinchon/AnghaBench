; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_hash_delete.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_hash_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashmap = type { i32, %struct.hashmap*, %struct.hashmap** }
%struct.keyvalue = type { i32, %struct.keyvalue*, %struct.keyvalue** }

@HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashmap*)* @hash_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_delete(%struct.hashmap* %0) #0 {
  %2 = alloca %struct.hashmap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.keyvalue*, align 8
  %5 = alloca %struct.keyvalue*, align 8
  store %struct.hashmap* %0, %struct.hashmap** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @HASH_SIZE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = load %struct.hashmap*, %struct.hashmap** %2, align 8
  %12 = getelementptr inbounds %struct.hashmap, %struct.hashmap* %11, i32 0, i32 2
  %13 = load %struct.hashmap**, %struct.hashmap*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hashmap*, %struct.hashmap** %13, i64 %15
  %17 = load %struct.hashmap*, %struct.hashmap** %16, align 8
  %18 = bitcast %struct.hashmap* %17 to %struct.keyvalue*
  store %struct.keyvalue* %18, %struct.keyvalue** %4, align 8
  br label %19

19:                                               ; preds = %22, %10
  %20 = load %struct.keyvalue*, %struct.keyvalue** %4, align 8
  %21 = icmp ne %struct.keyvalue* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.keyvalue*, %struct.keyvalue** %4, align 8
  %24 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %23, i32 0, i32 1
  %25 = load %struct.keyvalue*, %struct.keyvalue** %24, align 8
  store %struct.keyvalue* %25, %struct.keyvalue** %5, align 8
  %26 = load %struct.keyvalue*, %struct.keyvalue** %4, align 8
  %27 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @release_queue(i32 %28)
  %30 = load %struct.keyvalue*, %struct.keyvalue** %4, align 8
  %31 = call i32 @skynet_free(%struct.keyvalue* %30)
  %32 = load %struct.keyvalue*, %struct.keyvalue** %5, align 8
  store %struct.keyvalue* %32, %struct.keyvalue** %4, align 8
  br label %19

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %6

37:                                               ; preds = %6
  %38 = load %struct.hashmap*, %struct.hashmap** %2, align 8
  %39 = bitcast %struct.hashmap* %38 to %struct.keyvalue*
  %40 = call i32 @skynet_free(%struct.keyvalue* %39)
  ret void
}

declare dso_local i32 @release_queue(i32) #1

declare dso_local i32 @skynet_free(%struct.keyvalue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
