; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_push_queue_msg.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_push_queue_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.harbor_msg_queue = type { i32, i32, i32, %struct.harbor_msg* }
%struct.harbor_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.harbor_msg_queue*, %struct.harbor_msg*)* @push_queue_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_queue_msg(%struct.harbor_msg_queue* %0, %struct.harbor_msg* %1) #0 {
  %3 = alloca %struct.harbor_msg_queue*, align 8
  %4 = alloca %struct.harbor_msg*, align 8
  %5 = alloca %struct.harbor_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.harbor_msg*, align 8
  store %struct.harbor_msg_queue* %0, %struct.harbor_msg_queue** %3, align 8
  store %struct.harbor_msg* %1, %struct.harbor_msg** %4, align 8
  %8 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %9 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %13 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = srem i32 %11, %14
  %16 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %17 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %2
  %21 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %22 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call %struct.harbor_msg* @skynet_malloc(i32 %27)
  store %struct.harbor_msg* %28, %struct.harbor_msg** %5, align 8
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %57, %20
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %32 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, 1
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %29
  %37 = load %struct.harbor_msg*, %struct.harbor_msg** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %37, i64 %39
  %41 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %42 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %41, i32 0, i32 3
  %43 = load %struct.harbor_msg*, %struct.harbor_msg** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %46 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %44, %47
  %49 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %50 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = srem i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %43, i64 %53
  %55 = bitcast %struct.harbor_msg* %40 to i8*
  %56 = bitcast %struct.harbor_msg* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 4, i1 false)
  br label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %29

60:                                               ; preds = %29
  %61 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %62 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %61, i32 0, i32 3
  %63 = load %struct.harbor_msg*, %struct.harbor_msg** %62, align 8
  %64 = call i32 @skynet_free(%struct.harbor_msg* %63)
  %65 = load %struct.harbor_msg*, %struct.harbor_msg** %5, align 8
  %66 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %67 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %66, i32 0, i32 3
  store %struct.harbor_msg* %65, %struct.harbor_msg** %67, align 8
  %68 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %69 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  %70 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %71 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %75 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %77 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, 2
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %60, %2
  %81 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %82 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %81, i32 0, i32 3
  %83 = load %struct.harbor_msg*, %struct.harbor_msg** %82, align 8
  %84 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %85 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %83, i64 %87
  store %struct.harbor_msg* %88, %struct.harbor_msg** %7, align 8
  %89 = load %struct.harbor_msg*, %struct.harbor_msg** %7, align 8
  %90 = load %struct.harbor_msg*, %struct.harbor_msg** %4, align 8
  %91 = bitcast %struct.harbor_msg* %89 to i8*
  %92 = bitcast %struct.harbor_msg* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 4, i1 false)
  %93 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %94 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  %97 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %98 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = srem i32 %96, %99
  %101 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %3, align 8
  %102 = getelementptr inbounds %struct.harbor_msg_queue, %struct.harbor_msg_queue* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  ret void
}

declare dso_local %struct.harbor_msg* @skynet_malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @skynet_free(%struct.harbor_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
