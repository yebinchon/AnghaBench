; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_msg.h_add_message.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_msg.h_add_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_sequence = type { i32, i64, %struct.message* }
%struct.message = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msg_sequence**, i32, %struct.message*)* @add_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_message(%struct.msg_sequence** %0, i32 %1, %struct.message* %2) #0 {
  %4 = alloca %struct.msg_sequence**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.message*, align 8
  %7 = alloca %struct.msg_sequence*, align 8
  store %struct.msg_sequence** %0, %struct.msg_sequence*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.message* %2, %struct.message** %6, align 8
  %8 = load %struct.msg_sequence**, %struct.msg_sequence*** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.msg_sequence*, %struct.msg_sequence** %8, i64 %10
  %12 = load %struct.msg_sequence*, %struct.msg_sequence** %11, align 8
  store %struct.msg_sequence* %12, %struct.msg_sequence** %7, align 8
  %13 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %14 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %13, i32 0, i32 2
  %15 = load %struct.message*, %struct.message** %14, align 8
  %16 = icmp ne %struct.message* %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %19 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %18, i32 0, i32 0
  store i32 10, i32* %19, align 8
  %20 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %21 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call %struct.message* @heap_alloc(i32 %25)
  %27 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %28 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %27, i32 0, i32 2
  store %struct.message* %26, %struct.message** %28, align 8
  br label %29

29:                                               ; preds = %17, %3
  %30 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %31 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %34 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %29
  %39 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %40 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %40, align 8
  %43 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %44 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %43, i32 0, i32 2
  %45 = load %struct.message*, %struct.message** %44, align 8
  %46 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %47 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = trunc i64 %50 to i32
  %52 = call %struct.message* @heap_realloc(%struct.message* %45, i32 %51)
  %53 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %54 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %53, i32 0, i32 2
  store %struct.message* %52, %struct.message** %54, align 8
  br label %55

55:                                               ; preds = %38, %29
  %56 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %57 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %56, i32 0, i32 2
  %58 = load %struct.message*, %struct.message** %57, align 8
  %59 = call i32 @assert(%struct.message* %58)
  %60 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %61 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %60, i32 0, i32 2
  %62 = load %struct.message*, %struct.message** %61, align 8
  %63 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %64 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.message, %struct.message* %62, i64 %65
  %67 = load %struct.message*, %struct.message** %6, align 8
  %68 = bitcast %struct.message* %66 to i8*
  %69 = bitcast %struct.message* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 4, i1 false)
  %70 = load %struct.msg_sequence*, %struct.msg_sequence** %7, align 8
  %71 = getelementptr inbounds %struct.msg_sequence, %struct.msg_sequence* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  ret void
}

declare dso_local %struct.message* @heap_alloc(i32) #1

declare dso_local %struct.message* @heap_realloc(%struct.message*, i32) #1

declare dso_local i32 @assert(%struct.message*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
