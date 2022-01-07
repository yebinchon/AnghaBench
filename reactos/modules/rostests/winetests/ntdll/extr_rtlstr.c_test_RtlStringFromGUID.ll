; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlStringFromGUID.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtlstr.c_test_RtlStringFromGUID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64, i64 }

@IID_Endianness = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"expected ret=0, got 0x%0x\0A\00", align 1
@szGuid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Endianness broken\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlStringFromGUID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlStringFromGUID() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32* null, i32** %5, align 8
  %6 = call i64 @pRtlStringFromGUID(i32* @IID_Endianness, %struct.TYPE_4__* %1)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %2, align 8
  %11 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @szGuid, align 4
  %19 = call i32 @lstrcmpiW(i32* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %15, %0
  %23 = phi i1 [ false, %0 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @pRtlFreeUnicodeString(%struct.TYPE_4__* %1)
  ret void
}

declare dso_local i64 @pRtlStringFromGUID(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @lstrcmpiW(i32*, i32) #1

declare dso_local i32 @pRtlFreeUnicodeString(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
