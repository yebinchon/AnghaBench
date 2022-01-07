; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_mq.c_expand_queue.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_mq.c_expand_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message_queue = type { i32, i32, i32, %struct.skynet_message* }
%struct.skynet_message = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.message_queue*)* @expand_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_queue(%struct.message_queue* %0) #0 {
  %2 = alloca %struct.message_queue*, align 8
  %3 = alloca %struct.skynet_message*, align 8
  %4 = alloca i32, align 4
  store %struct.message_queue* %0, %struct.message_queue** %2, align 8
  %5 = load %struct.message_queue*, %struct.message_queue** %2, align 8
  %6 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = mul i64 4, %8
  %10 = mul i64 %9, 2
  %11 = trunc i64 %10 to i32
  %12 = call %struct.skynet_message* @skynet_malloc(i32 %11)
  store %struct.skynet_message* %12, %struct.skynet_message** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %40, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.message_queue*, %struct.message_queue** %2, align 8
  %16 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = load %struct.skynet_message*, %struct.skynet_message** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %20, i64 %22
  %24 = load %struct.message_queue*, %struct.message_queue** %2, align 8
  %25 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %24, i32 0, i32 3
  %26 = load %struct.skynet_message*, %struct.skynet_message** %25, align 8
  %27 = load %struct.message_queue*, %struct.message_queue** %2, align 8
  %28 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %29, %30
  %32 = load %struct.message_queue*, %struct.message_queue** %2, align 8
  %33 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = srem i32 %31, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %26, i64 %36
  %38 = bitcast %struct.skynet_message* %23 to i8*
  %39 = bitcast %struct.skynet_message* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  br label %40

40:                                               ; preds = %19
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %13

43:                                               ; preds = %13
  %44 = load %struct.message_queue*, %struct.message_queue** %2, align 8
  %45 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load %struct.message_queue*, %struct.message_queue** %2, align 8
  %47 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.message_queue*, %struct.message_queue** %2, align 8
  %50 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.message_queue*, %struct.message_queue** %2, align 8
  %52 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* %52, align 8
  %55 = load %struct.message_queue*, %struct.message_queue** %2, align 8
  %56 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %55, i32 0, i32 3
  %57 = load %struct.skynet_message*, %struct.skynet_message** %56, align 8
  %58 = call i32 @skynet_free(%struct.skynet_message* %57)
  %59 = load %struct.skynet_message*, %struct.skynet_message** %3, align 8
  %60 = load %struct.message_queue*, %struct.message_queue** %2, align 8
  %61 = getelementptr inbounds %struct.message_queue, %struct.message_queue* %60, i32 0, i32 3
  store %struct.skynet_message* %59, %struct.skynet_message** %61, align 8
  ret void
}

declare dso_local %struct.skynet_message* @skynet_malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @skynet_free(%struct.skynet_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
