; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhGetCounterInfoA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhGetCounterInfoA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PdhOpenQueryA failed 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\\System\\System Up Time\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"PdhAddCounterA failed 0x%08x\0A\00", align 1
@PDH_INVALID_HANDLE = common dso_local global i32 0, align 4
@PDH_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"PdhGetCounterInfoA failed 0x%08x\0A\00", align 1
@PDH_MORE_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"PdhGetCounterInfoA failed %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"lScale %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"PdhSetCounterScaleFactor failed 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"PdhCloseQuery failed 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhGetCounterInfoA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhGetCounterInfoA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @PdhOpenQueryA(i32* null, i32 0, i32* %2)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @ERROR_SUCCESS, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @PdhAddCounterA(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 0, i32** %3)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @ERROR_SUCCESS, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = call i32 @PdhGetCounterInfoA(i32* null, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @PDH_INVALID_HANDLE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %0
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %28 = icmp eq i32 %26, %27
  br label %29

29:                                               ; preds = %25, %0
  %30 = phi i1 [ true, %0 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @PdhGetCounterInfoA(i32* %34, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @PdhGetCounterInfoA(i32* %42, i32 0, i32* null, %struct.TYPE_3__* %4)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  store i32 3, i32* %5, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @PdhGetCounterInfoA(i32* %50, i32 0, i32* %5, %struct.TYPE_3__* null)
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* @PDH_MORE_DATA, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %29
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %58 = icmp eq i32 %56, %57
  br label %59

59:                                               ; preds = %55, %29
  %60 = phi i1 [ true, %29 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %1, align 4
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  store i32 4, i32* %5, align 4
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @PdhGetCounterInfoA(i32* %64, i32 0, i32* %5, %struct.TYPE_3__* %4)
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* @ERROR_SUCCESS, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %1, align 4
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp eq i64 %73, 4
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @PdhGetCounterInfoA(i32* %78, i32 0, i32* %5, %struct.TYPE_3__* %4)
  store i32 %79, i32* %1, align 4
  %80 = load i32, i32* %1, align 4
  %81 = load i32, i32* @ERROR_SUCCESS, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @PdhSetCounterScaleFactor(i32* %93, i32 0)
  store i32 %94, i32* %1, align 4
  %95 = load i32, i32* %1, align 4
  %96 = load i32, i32* @ERROR_SUCCESS, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %1, align 4
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @PdhGetCounterInfoA(i32* %101, i32 0, i32* %5, %struct.TYPE_3__* %4)
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* %1, align 4
  %104 = load i32, i32* @ERROR_SUCCESS, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %1, align 4
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @PdhSetCounterScaleFactor(i32* %116, i32 -5)
  store i32 %117, i32* %1, align 4
  %118 = load i32, i32* %1, align 4
  %119 = load i32, i32* @ERROR_SUCCESS, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %1, align 4
  %123 = call i32 @ok(i32 %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @PdhGetCounterInfoA(i32* %124, i32 0, i32* %5, %struct.TYPE_3__* %4)
  store i32 %125, i32* %1, align 4
  %126 = load i32, i32* %1, align 4
  %127 = load i32, i32* @ERROR_SUCCESS, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %1, align 4
  %131 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, -5
  %135 = zext i1 %134 to i32
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %2, align 4
  %140 = call i32 @PdhCloseQuery(i32 %139)
  store i32 %140, i32* %1, align 4
  %141 = load i32, i32* %1, align 4
  %142 = load i32, i32* @ERROR_SUCCESS, align 4
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %1, align 4
  %146 = call i32 @ok(i32 %144, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %145)
  ret void
}

declare dso_local i32 @PdhOpenQueryA(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @PdhAddCounterA(i32, i8*, i32, i32**) #1

declare dso_local i32 @PdhGetCounterInfoA(i32*, i32, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @PdhSetCounterScaleFactor(i32*, i32) #1

declare dso_local i32 @PdhCloseQuery(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
