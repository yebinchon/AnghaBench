; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tests/tests/extr_ipreceive.c_RunTest.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tests/tests/extr_ipreceive.c_RunTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet = type { i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RunTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RunTest() #0 {
  %1 = alloca [1 x %struct.packet], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  %6 = bitcast [1 x %struct.packet]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 24, i1 false)
  %7 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %36, %0
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @NT_SUCCESS(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [1 x %struct.packet], [1 x %struct.packet]* %1, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.packet, %struct.packet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %13, %18
  br label %20

20:                                               ; preds = %12, %8
  %21 = phi i1 [ false, %8 ], [ %19, %12 ]
  br i1 %21, label %22, label %39

22:                                               ; preds = %20
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [1 x %struct.packet], [1 x %struct.packet]* %1, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.packet, %struct.packet* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [1 x %struct.packet], [1 x %struct.packet]* %1, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.packet, %struct.packet* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = call i32 @IPReceive(i32* %3, %struct.TYPE_3__* %4)
  br label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %8

39:                                               ; preds = %20
  %40 = load i32, i32* @STATUS_SUCCESS, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @_AssertEqualValue(i32 %40, i32 %41)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @IPReceive(i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @_AssertEqualValue(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
