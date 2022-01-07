; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_pmgl_add.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/hhpcomp/chmc/extr_chmc.c_chmc_pmgl_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmcFile = type { %struct.chmcFile*, %struct.TYPE_2__, i32, i32, %struct.chmcItspHeader }
%struct.TYPE_2__ = type { %struct.chmcPmglHeader }
%struct.chmcPmglHeader = type { i64, i64 }
%struct.chmcItspHeader = type { i64, i64 }
%struct.chmcPmglChunkNode = type { %struct.chmcPmglChunkNode*, %struct.TYPE_2__, i32, i32, %struct.chmcItspHeader }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chmc_pmgl_add(%struct.chmcFile* %0, %struct.chmcPmglChunkNode* %1) #0 {
  %3 = alloca %struct.chmcFile*, align 8
  %4 = alloca %struct.chmcPmglChunkNode*, align 8
  %5 = alloca %struct.chmcItspHeader*, align 8
  %6 = alloca %struct.chmcPmglHeader*, align 8
  store %struct.chmcFile* %0, %struct.chmcFile** %3, align 8
  store %struct.chmcPmglChunkNode* %1, %struct.chmcPmglChunkNode** %4, align 8
  %7 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %8 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %7, i32 0, i32 4
  store %struct.chmcItspHeader* %8, %struct.chmcItspHeader** %5, align 8
  %9 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %10 = bitcast %struct.chmcFile* %9 to %struct.chmcPmglChunkNode*
  %11 = call i32 @assert(%struct.chmcPmglChunkNode* %10)
  %12 = load %struct.chmcPmglChunkNode*, %struct.chmcPmglChunkNode** %4, align 8
  %13 = call i32 @assert(%struct.chmcPmglChunkNode* %12)
  %14 = load %struct.chmcPmglChunkNode*, %struct.chmcPmglChunkNode** %4, align 8
  %15 = getelementptr inbounds %struct.chmcPmglChunkNode, %struct.chmcPmglChunkNode* %14, i32 0, i32 3
  %16 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %17 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %16, i32 0, i32 2
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  %19 = load %struct.chmcItspHeader*, %struct.chmcItspHeader** %5, align 8
  %20 = getelementptr inbounds %struct.chmcItspHeader, %struct.chmcItspHeader* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.chmcItspHeader*, %struct.chmcItspHeader** %5, align 8
  %23 = getelementptr inbounds %struct.chmcItspHeader, %struct.chmcItspHeader* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.chmcPmglChunkNode*, %struct.chmcPmglChunkNode** %4, align 8
  %25 = getelementptr inbounds %struct.chmcPmglChunkNode, %struct.chmcPmglChunkNode* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.chmcPmglHeader* %26, %struct.chmcPmglHeader** %6, align 8
  %27 = load %struct.chmcItspHeader*, %struct.chmcItspHeader** %5, align 8
  %28 = getelementptr inbounds %struct.chmcItspHeader, %struct.chmcItspHeader* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, 1
  %31 = load %struct.chmcPmglHeader*, %struct.chmcPmglHeader** %6, align 8
  %32 = getelementptr inbounds %struct.chmcPmglHeader, %struct.chmcPmglHeader* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %34 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %33, i32 0, i32 0
  %35 = load %struct.chmcFile*, %struct.chmcFile** %34, align 8
  %36 = icmp ne %struct.chmcFile* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %2
  %38 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %39 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %38, i32 0, i32 0
  %40 = load %struct.chmcFile*, %struct.chmcFile** %39, align 8
  %41 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.chmcPmglHeader* %42, %struct.chmcPmglHeader** %6, align 8
  %43 = load %struct.chmcItspHeader*, %struct.chmcItspHeader** %5, align 8
  %44 = getelementptr inbounds %struct.chmcItspHeader, %struct.chmcItspHeader* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.chmcPmglHeader*, %struct.chmcPmglHeader** %6, align 8
  %47 = getelementptr inbounds %struct.chmcPmglHeader, %struct.chmcPmglHeader* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %37, %2
  %49 = load %struct.chmcItspHeader*, %struct.chmcItspHeader** %5, align 8
  %50 = getelementptr inbounds %struct.chmcItspHeader, %struct.chmcItspHeader* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.chmcPmglChunkNode*, %struct.chmcPmglChunkNode** %4, align 8
  %54 = bitcast %struct.chmcPmglChunkNode* %53 to %struct.chmcFile*
  %55 = load %struct.chmcFile*, %struct.chmcFile** %3, align 8
  %56 = getelementptr inbounds %struct.chmcFile, %struct.chmcFile* %55, i32 0, i32 0
  store %struct.chmcFile* %54, %struct.chmcFile** %56, align 8
  ret void
}

declare dso_local i32 @assert(%struct.chmcPmglChunkNode*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
