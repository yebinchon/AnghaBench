; ModuleID = '/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_datum_serialize.c_binary_string_to_datum.c'
source_filename = "/home/carl/AnghaBench/timescaledb/tsl/src/compression/extr_datum_serialize.c_binary_string_to_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binary_string_to_datum(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %21 [
    i32 130, label %14
    i32 128, label %15
    i32 129, label %16
  ]

14:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %21

15:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @pq_getmsgbyte(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %3, %16, %15, %14
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @load_recv_fn(%struct.TYPE_7__* %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @pq_getmsgint32(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i8* @pq_getmsgbytes(i32 %30, i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %34 = load i8*, i8** %10, align 8
  store i8* %34, i8** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ReceiveFunctionCall(i32* %40, %struct.TYPE_6__* %11, i32 %43, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %61

48:                                               ; preds = %21
  %49 = load i32, i32* %6, align 4
  %50 = call i8* @pq_getmsgstring(i32 %49)
  store i8* %50, i8** %12, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @InputFunctionCall(i32* %52, i8* %53, i32 %56, i32 %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %48, %27
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @pq_getmsgbyte(i32) #1

declare dso_local i32 @load_recv_fn(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pq_getmsgint32(i32) #1

declare dso_local i8* @pq_getmsgbytes(i32, i32) #1

declare dso_local i32 @ReceiveFunctionCall(i32*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @pq_getmsgstring(i32) #1

declare dso_local i32 @InputFunctionCall(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
