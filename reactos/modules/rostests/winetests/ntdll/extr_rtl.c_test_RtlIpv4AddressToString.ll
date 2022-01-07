; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlIpv4AddressToString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlIpv4AddressToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"got %p with '%s' (expected %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"got %p (expected ~0)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlIpv4AddressToString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlIpv4AddressToString() #0 {
  %1 = alloca [20 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 2, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i32 3, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  store i32 4, i32* %16, align 4
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %18 = call i32 @memset(i8* %17, i8 signext 35, i32 19)
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 19
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %21 = call i8* @pRtlIpv4AddressToStringA(%struct.TYPE_7__* %3, i8* %20)
  store i8* %21, i8** %2, align 8
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = icmp eq i8* %24, %28
  %30 = zext i1 %29 to i32
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = call i32 (i32, i8*, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32, i8* %36)
  %38 = call i8* @pRtlIpv4AddressToStringA(%struct.TYPE_7__* %3, i8* null)
  store i8* %38, i8** %2, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = icmp eq i8* %39, inttoptr (i64 -1 to i8*)
  br i1 %40, label %50, label %41

41:                                               ; preds = %0
  %42 = load i8*, i8** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = icmp eq i8* %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @broken(i32 %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %41, %0
  %51 = phi i1 [ true, %0 ], [ %49, %41 ]
  %52 = zext i1 %51 to i32
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 (i32, i8*, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i8* @pRtlIpv4AddressToStringA(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ok(i32, i8*, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
