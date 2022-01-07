; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhGetCounterInfoW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhGetCounterInfoW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"PdhOpenQueryW failed 0x%08x\0A\00", align 1
@percentage_processor_time = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"PdhAddCounterW failed 0x%08x\0A\00", align 1
@PDH_INVALID_HANDLE = common dso_local global i32 0, align 4
@PDH_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"PdhGetCounterInfoW failed 0x%08x\0A\00", align 1
@PDH_MORE_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"PdhGetCounterInfoW failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"lScale %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"PdhSetCounterScaleFactor failed 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"PdhCloseQuery failed 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhGetCounterInfoW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhGetCounterInfoW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @PdhOpenQueryW(i32* null, i32 0, i32* %2)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @ERROR_SUCCESS, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @percentage_processor_time, align 4
  %15 = call i32 @PdhAddCounterW(i32 %13, i32 %14, i32 0, i32** %3)
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @ERROR_SUCCESS, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call i32 @PdhGetCounterInfoW(i32* null, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @PDH_INVALID_HANDLE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %0
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %29 = icmp eq i32 %27, %28
  br label %30

30:                                               ; preds = %26, %0
  %31 = phi i1 [ true, %0 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @PdhGetCounterInfoW(i32* %35, i32 0, i32* null, %struct.TYPE_3__* null)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @PdhGetCounterInfoW(i32* %43, i32 0, i32* null, %struct.TYPE_3__* %4)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  store i32 3, i32* %5, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @PdhGetCounterInfoW(i32* %51, i32 0, i32* %5, %struct.TYPE_3__* null)
  store i32 %52, i32* %1, align 4
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @PDH_MORE_DATA, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %30
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %59 = icmp eq i32 %57, %58
  br label %60

60:                                               ; preds = %56, %30
  %61 = phi i1 [ true, %30 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i32 4, i32* %5, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @PdhGetCounterInfoW(i32* %65, i32 0, i32* %5, %struct.TYPE_3__* %4)
  store i32 %66, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @ERROR_SUCCESS, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp eq i64 %74, 4
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @PdhGetCounterInfoW(i32* %79, i32 0, i32* %5, %struct.TYPE_3__* %4)
  store i32 %80, i32* %1, align 4
  %81 = load i32, i32* %1, align 4
  %82 = load i32, i32* @ERROR_SUCCESS, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %1, align 4
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @PdhSetCounterScaleFactor(i32* %94, i32 0)
  store i32 %95, i32* %1, align 4
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* @ERROR_SUCCESS, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %1, align 4
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @PdhGetCounterInfoW(i32* %102, i32 0, i32* %5, %struct.TYPE_3__* %4)
  store i32 %103, i32* %1, align 4
  %104 = load i32, i32* %1, align 4
  %105 = load i32, i32* @ERROR_SUCCESS, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %1, align 4
  %109 = call i32 @ok(i32 %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @PdhSetCounterScaleFactor(i32* %117, i32 -5)
  store i32 %118, i32* %1, align 4
  %119 = load i32, i32* %1, align 4
  %120 = load i32, i32* @ERROR_SUCCESS, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = load i32, i32* %1, align 4
  %124 = call i32 @ok(i32 %122, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @PdhGetCounterInfoW(i32* %125, i32 0, i32* %5, %struct.TYPE_3__* %4)
  store i32 %126, i32* %1, align 4
  %127 = load i32, i32* %1, align 4
  %128 = load i32, i32* @ERROR_SUCCESS, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %1, align 4
  %132 = call i32 @ok(i32 %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, -5
  %136 = zext i1 %135 to i32
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ok(i32 %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %2, align 4
  %141 = call i32 @PdhCloseQuery(i32 %140)
  store i32 %141, i32* %1, align 4
  %142 = load i32, i32* %1, align 4
  %143 = load i32, i32* @ERROR_SUCCESS, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %1, align 4
  %147 = call i32 @ok(i32 %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  ret void
}

declare dso_local i32 @PdhOpenQueryW(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @PdhAddCounterW(i32, i32, i32, i32**) #1

declare dso_local i32 @PdhGetCounterInfoW(i32*, i32, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @PdhSetCounterScaleFactor(i32*, i32) #1

declare dso_local i32 @PdhCloseQuery(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
