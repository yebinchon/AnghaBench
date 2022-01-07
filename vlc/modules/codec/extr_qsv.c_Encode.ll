; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_qsv.c_Encode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_qsv.c_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, i32*)* @Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Encode(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %6, align 8
  store i32* null, i32** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call %struct.TYPE_15__* @encode_frame(%struct.TYPE_13__* %19, i32* %20)
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %7, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %31 = call i32 @async_task_t_fifo_Put(i32* %29, %struct.TYPE_15__* %30)
  br label %32

32:                                               ; preds = %27, %18
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = call i64 @async_task_t_fifo_GetCount(i32* %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %33
  %43 = load i32*, i32** %4, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %71, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = call i64 @async_task_t_fifo_GetCount(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %45, %33
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = call %struct.TYPE_16__* @async_task_t_fifo_Show(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = call %struct.TYPE_15__* @async_task_t_fifo_Get(i32* %60)
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %7, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = call i32* @qsv_synchronize_block(%struct.TYPE_13__* %62, %struct.TYPE_15__* %63)
  store i32* %64, i32** %8, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = call i32 @free(%struct.TYPE_15__* %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = call i32 @free(%struct.TYPE_15__* %69)
  br label %71

71:                                               ; preds = %50, %45, %42
  %72 = load i32*, i32** %8, align 8
  ret i32* %72
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_15__* @encode_frame(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @async_task_t_fifo_Put(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @async_task_t_fifo_GetCount(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_16__* @async_task_t_fifo_Show(i32*) #1

declare dso_local %struct.TYPE_15__* @async_task_t_fifo_Get(i32*) #1

declare dso_local i32* @qsv_synchronize_block(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
