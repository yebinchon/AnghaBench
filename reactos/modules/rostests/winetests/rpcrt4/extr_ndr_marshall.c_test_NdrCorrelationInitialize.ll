; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_ndr_marshall.c_test_NdrCorrelationInitialize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_ndr_marshall.c_test_NdrCorrelationInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_NdrCorrelationInitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_NdrCorrelationInitialize() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca [256 x %struct.TYPE_6__], align 16
  %3 = call i32 @memset(%struct.TYPE_6__* %1, i32 0, i32 4)
  %4 = getelementptr inbounds [256 x %struct.TYPE_6__], [256 x %struct.TYPE_6__]* %2, i64 0, i64 0
  %5 = call i32 @memset(%struct.TYPE_6__* %4, i32 0, i32 1024)
  %6 = getelementptr inbounds [256 x %struct.TYPE_6__], [256 x %struct.TYPE_6__]* %2, i64 0, i64 0
  %7 = call i32 @NdrCorrelationInitialize(%struct.TYPE_6__* %1, %struct.TYPE_6__* %6, i32 1024, i32 0)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %18, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @broken(i32 %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %11, %0
  %19 = phi i1 [ true, %0 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @memset(%struct.TYPE_6__* %1, i32 0, i32 4)
  %25 = getelementptr inbounds [256 x %struct.TYPE_6__], [256 x %struct.TYPE_6__]* %2, i64 0, i64 0
  %26 = call i32 @memset(%struct.TYPE_6__* %25, i32 0, i32 1024)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds [256 x %struct.TYPE_6__], [256 x %struct.TYPE_6__]* %2, i64 0, i64 0
  %29 = call i32 @NdrCorrelationInitialize(%struct.TYPE_6__* %1, %struct.TYPE_6__* %28, i32 1024, i32 0)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %35)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @NdrCorrelationInitialize(%struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
