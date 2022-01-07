; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_address.c_A2S.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_address.c_A2S.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@A2SStr = common dso_local global i32 0, align 4
@MIN_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"NULL address given.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"(IPv6 address not supported)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @A2S(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load i32, i32* @A2SStr, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @MIN_TRACE, align 4
  %11 = call i32 @TI_DbgPrint(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @strcpy(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %41 [
    i32 129, label %19
    i32 128, label %38
  ]

19:                                               ; preds = %15
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DN2H(i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = ashr i32 %26, 24
  %28 = and i32 %27, 255
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 255
  %37 = call i32 @sprintf(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %31, i32 %34, i32 %36)
  br label %41

38:                                               ; preds = %15
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @strcpy(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %15, %38, %19
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %9
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @DN2H(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
