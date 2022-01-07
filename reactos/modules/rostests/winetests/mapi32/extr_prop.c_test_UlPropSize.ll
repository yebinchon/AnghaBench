; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_UlPropSize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_UlPropSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, i64 }
%struct.TYPE_23__ = type { i8*, i8*, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_21__ = type { i32, i8** }
%struct.TYPE_20__ = type { i32, i8** }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i64 }

@test_UlPropSize.szHiA = internal global [4 x i8] c"Hi!\00", align 1
@test_UlPropSize.szHiW = internal global [4 x i8] c"Hi!\00", align 1
@PROP_ID_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"pt= %d: Expected %d, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_UlPropSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_UlPropSize() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = alloca [2 x i8*], align 16
  %3 = alloca [2 x %struct.TYPE_25__], align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_24__, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %133, %0
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @PROP_ID_INVALID, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %136

12:                                               ; preds = %8
  %13 = call i32 @memset(%struct.TYPE_24__* %7, i32 0, i32 152)
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  store i64 1, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @PROP_TYPE(i64 %16)
  switch i32 %17, label %122 [
    i32 140, label %18
    i32 148, label %22
    i32 139, label %25
    i32 147, label %29
    i32 137, label %32
    i32 132, label %36
    i32 141, label %39
    i32 131, label %43
    i32 142, label %46
    i32 150, label %50
    i32 145, label %53
    i32 154, label %57
    i32 135, label %60
    i32 129, label %64
    i32 149, label %67
    i32 152, label %68
    i32 133, label %69
    i32 138, label %70
    i32 146, label %74
    i32 151, label %77
    i32 130, label %80
    i32 128, label %83
    i32 153, label %86
    i32 136, label %90
    i32 134, label %100
    i32 144, label %110
  ]

18:                                               ; preds = %12
  store i64 2, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 14
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  store i64 2, i64* %21, align 8
  br label %22

22:                                               ; preds = %12, %18
  %23 = load i64, i64* %5, align 8
  %24 = mul i64 %23, 4
  store i64 %24, i64* %5, align 8
  br label %123

25:                                               ; preds = %12
  store i64 2, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 13
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  store i64 2, i64* %28, align 8
  br label %29

29:                                               ; preds = %12, %25
  %30 = load i64, i64* %5, align 8
  %31 = mul i64 %30, 4
  store i64 %31, i64* %5, align 8
  br label %123

32:                                               ; preds = %12
  store i64 2, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 12
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 0
  store i64 2, i64* %35, align 8
  br label %36

36:                                               ; preds = %12, %32
  %37 = load i64, i64* %5, align 8
  %38 = mul i64 %37, 4
  store i64 %38, i64* %5, align 8
  br label %123

39:                                               ; preds = %12
  store i64 2, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 11
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 0
  store i64 2, i64* %42, align 8
  br label %43

43:                                               ; preds = %12, %39
  %44 = load i64, i64* %5, align 8
  %45 = mul i64 %44, 8
  store i64 %45, i64* %5, align 8
  br label %123

46:                                               ; preds = %12
  store i64 2, i64* %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 10
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 0
  store i64 2, i64* %49, align 8
  br label %50

50:                                               ; preds = %12, %46
  %51 = load i64, i64* %5, align 8
  %52 = mul i64 %51, 4
  store i64 %52, i64* %5, align 8
  br label %123

53:                                               ; preds = %12
  store i64 2, i64* %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 9
  %56 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %55, i32 0, i32 0
  store i64 2, i64* %56, align 8
  br label %57

57:                                               ; preds = %12, %53
  %58 = load i64, i64* %5, align 8
  %59 = mul i64 %58, 8
  store i64 %59, i64* %5, align 8
  br label %123

60:                                               ; preds = %12
  store i64 2, i64* %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %62, i32 0, i32 0
  store i64 2, i64* %63, align 8
  br label %64

64:                                               ; preds = %12, %60
  %65 = load i64, i64* %5, align 8
  %66 = mul i64 %65, 4
  store i64 %66, i64* %5, align 8
  br label %123

67:                                               ; preds = %12
  store i64 4, i64* %5, align 8
  br label %123

68:                                               ; preds = %12
  store i64 4, i64* %5, align 8
  br label %123

69:                                               ; preds = %12
  store i64 0, i64* %5, align 8
  br label %123

70:                                               ; preds = %12
  store i64 2, i64* %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 0
  store i64 2, i64* %73, align 8
  br label %74

74:                                               ; preds = %12, %70
  %75 = load i64, i64* %5, align 8
  %76 = mul i64 %75, 4
  store i64 %76, i64* %5, align 8
  br label %123

77:                                               ; preds = %12
  %78 = load i64, i64* %5, align 8
  %79 = mul i64 %78, 4
  store i64 %79, i64* %5, align 8
  br label %123

80:                                               ; preds = %12
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_UlPropSize.szHiA, i64 0, i64 0), i8** %82, align 8
  store i64 4, i64* %5, align 8
  br label %123

83:                                               ; preds = %12
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_UlPropSize.szHiW, i64 0, i64 0), i8** %85, align 8
  store i64 4, i64* %5, align 8
  br label %123

86:                                               ; preds = %12
  store i64 19, i64* %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  store i64 19, i64* %89, align 8
  br label %123

90:                                               ; preds = %12
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  store i32 2, i32* %93, align 8
  %94 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  store i8** %94, i8*** %97, align 8
  %98 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_UlPropSize.szHiA, i64 0, i64 0), i8** %98, align 16
  %99 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_UlPropSize.szHiA, i64 0, i64 0), i8** %99, align 8
  store i64 8, i64* %5, align 8
  br label %123

100:                                              ; preds = %12
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  store i32 2, i32* %103, align 8
  %104 = getelementptr inbounds [2 x i8*], [2 x i8*]* %2, i64 0, i64 0
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  store i8** %104, i8*** %107, align 8
  %108 = getelementptr inbounds [2 x i8*], [2 x i8*]* %2, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_UlPropSize.szHiW, i64 0, i64 0), i8** %108, align 16
  %109 = getelementptr inbounds [2 x i8*], [2 x i8*]* %2, i64 0, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_UlPropSize.szHiW, i64 0, i64 0), i8** %109, align 8
  store i64 8, i64* %5, align 8
  br label %123

110:                                              ; preds = %12
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  store i32 2, i32* %113, align 8
  %114 = getelementptr inbounds [2 x %struct.TYPE_25__], [2 x %struct.TYPE_25__]* %3, i64 0, i64 0
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  store %struct.TYPE_25__* %114, %struct.TYPE_25__** %117, align 8
  %118 = getelementptr inbounds [2 x %struct.TYPE_25__], [2 x %struct.TYPE_25__]* %3, i64 0, i64 0
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  store i32 19, i32* %119, align 4
  %120 = getelementptr inbounds [2 x %struct.TYPE_25__], [2 x %struct.TYPE_25__]* %3, i64 0, i64 1
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 4
  store i64 20, i64* %5, align 8
  br label %123

122:                                              ; preds = %12
  store i64 0, i64* %5, align 8
  br label %123

123:                                              ; preds = %122, %110, %100, %90, %86, %83, %80, %77, %74, %69, %68, %67, %64, %57, %50, %43, %36, %29, %22
  %124 = call i64 @pUlPropSize(%struct.TYPE_24__* %7)
  store i64 %124, i64* %6, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %5, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %4, align 8
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %129, i64 %130, i64 %131)
  br label %133

133:                                              ; preds = %123
  %134 = load i64, i64* %4, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %4, align 8
  br label %8

136:                                              ; preds = %8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @PROP_TYPE(i64) #1

declare dso_local i64 @pUlPropSize(%struct.TYPE_24__*) #1

declare dso_local i32 @ok(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
