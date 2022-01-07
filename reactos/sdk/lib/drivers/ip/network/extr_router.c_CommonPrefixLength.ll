; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_CommonPrefixLength.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_router.c_CommonPrefixLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@DEBUG_ROUTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Called. Address1 (0x%X)  Address2 (0x%X).\0A\00", align 1
@IP_ADDRESS_V4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Returning %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CommonPrefixLength(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %12 = load i32, i32* @DEBUG_ROUTER, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = bitcast %struct.TYPE_6__* %14 to i8*
  %16 = call i32 @TI_DbgPrint(i32 %12, i8* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IP_ADDRESS_V4, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i64 4, i64* %8, align 8
  br label %24

23:                                               ; preds = %2
  store i64 4, i64* %8, align 8
  br label %24

24:                                               ; preds = %23, %22
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to i64*
  store i64* %28, i64** %6, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = bitcast i32* %31 to i64*
  store i64* %32, i64** %7, align 8
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %50, %24
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i64*, i64** %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  br label %47

47:                                               ; preds = %37, %33
  %48 = phi i1 [ false, %33 ], [ %46, %37 ]
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %33

53:                                               ; preds = %47
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i64, i64* %9, align 8
  %59 = mul i64 8, %58
  store i64 %59, i64* %3, align 8
  br label %93

60:                                               ; preds = %53
  store i64 128, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %61

61:                                               ; preds = %78, %60
  %62 = load i64*, i64** %6, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = and i64 %65, %66
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = and i64 %71, %72
  %74 = icmp eq i64 %67, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %61
  %76 = load i64, i64* %11, align 8
  %77 = lshr i64 %76, 1
  store i64 %77, i64* %11, align 8
  br label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %10, align 8
  br label %61

81:                                               ; preds = %61
  %82 = load i32, i32* @DEBUG_ROUTER, align 4
  %83 = load i64, i64* %9, align 8
  %84 = mul i64 8, %83
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %84, %85
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @TI_DbgPrint(i32 %82, i8* %87)
  %89 = load i64, i64* %9, align 8
  %90 = mul i64 8, %89
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %90, %91
  store i64 %92, i64* %3, align 8
  br label %93

93:                                               ; preds = %81, %57
  %94 = load i64, i64* %3, align 8
  ret i64 %94
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
