; ModuleID = '/home/carl/AnghaBench/tig/src/extr_io.c_io_can_read.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_io.c_io_can_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.io = type { i64 }

@__const.io_can_read.tv = private unnamed_addr constant %struct.timeval { i32 0, i32 500 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @io_can_read(%struct.io* %0, i32 %1) #0 {
  %3 = alloca %struct.io*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i32, align 4
  store %struct.io* %0, %struct.io** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.timeval* @__const.io_can_read.tv to i8*), i64 8, i1 false)
  %8 = call i32 @FD_ZERO(i32* %6)
  %9 = load %struct.io*, %struct.io** %3, align 8
  %10 = getelementptr inbounds %struct.io, %struct.io* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @FD_SET(i64 %11, i32* %6)
  %13 = load %struct.io*, %struct.io** %3, align 8
  %14 = getelementptr inbounds %struct.io, %struct.io* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %19
  %22 = phi %struct.timeval* [ null, %19 ], [ %5, %20 ]
  %23 = call i64 @select(i64 %16, i32* %6, i32* null, i32* null, %struct.timeval* %22)
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i64, i32*) #2

declare dso_local i64 @select(i64, i32*, i32*, i32*, %struct.timeval*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
