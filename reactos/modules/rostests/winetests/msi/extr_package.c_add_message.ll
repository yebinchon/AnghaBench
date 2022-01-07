; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_add_message.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_package.c_add_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.externalui_message = type { i32 }

@sequence = common dso_local global %struct.externalui_message* null, align 8
@sequence_size = common dso_local global i32 0, align 4
@sequence_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.externalui_message*)* @add_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_message(%struct.externalui_message* %0) #0 {
  %2 = alloca %struct.externalui_message*, align 8
  store %struct.externalui_message* %0, %struct.externalui_message** %2, align 8
  %3 = load %struct.externalui_message*, %struct.externalui_message** @sequence, align 8
  %4 = icmp ne %struct.externalui_message* %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  store i32 10, i32* @sequence_size, align 4
  %6 = call i32 (...) @GetProcessHeap()
  %7 = load i32, i32* @sequence_size, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = call %struct.externalui_message* @HeapAlloc(i32 %6, i32 0, i32 %10)
  store %struct.externalui_message* %11, %struct.externalui_message** @sequence, align 8
  br label %12

12:                                               ; preds = %5, %1
  %13 = load i32, i32* @sequence_count, align 4
  %14 = load i32, i32* @sequence_size, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i32, i32* @sequence_size, align 4
  %18 = mul nsw i32 %17, 2
  store i32 %18, i32* @sequence_size, align 4
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load %struct.externalui_message*, %struct.externalui_message** @sequence, align 8
  %21 = load i32, i32* @sequence_size, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call %struct.externalui_message* @HeapReAlloc(i32 %19, i32 0, %struct.externalui_message* %20, i32 %24)
  store %struct.externalui_message* %25, %struct.externalui_message** @sequence, align 8
  br label %26

26:                                               ; preds = %16, %12
  %27 = load %struct.externalui_message*, %struct.externalui_message** @sequence, align 8
  %28 = call i32 @assert(%struct.externalui_message* %27)
  %29 = load %struct.externalui_message*, %struct.externalui_message** @sequence, align 8
  %30 = load i32, i32* @sequence_count, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @sequence_count, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds %struct.externalui_message, %struct.externalui_message* %29, i64 %32
  %34 = load %struct.externalui_message*, %struct.externalui_message** %2, align 8
  %35 = bitcast %struct.externalui_message* %33 to i8*
  %36 = bitcast %struct.externalui_message* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  ret void
}

declare dso_local %struct.externalui_message* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.externalui_message* @HeapReAlloc(i32, i32, %struct.externalui_message*, i32) #1

declare dso_local i32 @assert(%struct.externalui_message*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
