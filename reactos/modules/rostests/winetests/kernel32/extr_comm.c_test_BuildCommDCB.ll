; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_BuildCommDCB.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_BuildCommDCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@__const.test_BuildCommDCB.port_name = private unnamed_addr constant [5 x i8] c"COMx\00", align 1
@.str = private unnamed_addr constant [63 x i8] c"Could not find a valid COM port.  Some tests will be skipped.\0A\00", align 1
@TEST_COUNT = common dso_local global i32 0, align 4
@test = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"COMx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_BuildCommDCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_BuildCommDCB() #0 {
  %1 = alloca [5 x i8], align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  %8 = bitcast [5 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_BuildCommDCB.port_name, i32 0, i32 0), i64 5, i1 false)
  store i8 0, i8* %2, align 1
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 3
  store i8 49, i8* %9, align 1
  br label %10

10:                                               ; preds = %23, %0
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 3
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp sle i32 %13, 57
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  store i32 4, i32* %6, align 4
  %16 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %17 = call i64 @GetDefaultCommConfigA(i8* %16, i32* %5, i32* %6)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 3
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %2, align 1
  br label %27

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 3
  %25 = load i8, i8* %24, align 1
  %26 = add i8 %25, 1
  store i8 %26, i8* %24, align 1
  br label %10

27:                                               ; preds = %19, %10
  %28 = load i8, i8* %2, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 @trace(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %168, %32
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @TEST_COUNT, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %171

37:                                               ; preds = %33
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strcpy(i8* %38, i32 %44)
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %47 = call i8* @strstr(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %47, i8** %4, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %37
  %51 = load i8, i8* %2, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i8, i8* %2, align 1
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  store i8 %54, i8* %56, align 1
  br label %58

57:                                               ; preds = %50
  br label %168

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %37
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %66 = load i32, i32* %3, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = call i32 @test_BuildCommDCBA(i8* %60, %struct.TYPE_6__* %64, i32 0, i32* %69)
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %73 = load i32, i32* %3, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %77 = load i32, i32* %3, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = call i32 @test_BuildCommDCBA(i8* %71, %struct.TYPE_6__* %75, i32 255, i32* %80)
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %84 = load i32, i32* %3, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %88 = load i32, i32* %3, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %93 = load i32, i32* %3, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = call i32 @test_BuildCommDCBAndTimeoutsA(i8* %82, %struct.TYPE_6__* %86, i32 0, i32* %91, i32* %96)
  %98 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %100 = load i32, i32* %3, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %104 = load i32, i32* %3, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %109 = load i32, i32* %3, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = call i32 @test_BuildCommDCBAndTimeoutsA(i8* %98, %struct.TYPE_6__* %102, i32 255, i32* %107, i32* %112)
  %114 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %116 = load i32, i32* %3, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %120 = load i32, i32* %3, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = call i32 @test_BuildCommDCBW(i8* %114, %struct.TYPE_6__* %118, i32 0, i32* %123)
  %125 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %127 = load i32, i32* %3, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %131 = load i32, i32* %3, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = call i32 @test_BuildCommDCBW(i8* %125, %struct.TYPE_6__* %129, i32 255, i32* %134)
  %136 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %138 = load i32, i32* %3, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 %139
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %142 = load i32, i32* %3, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %147 = load i32, i32* %3, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = call i32 @test_BuildCommDCBAndTimeoutsW(i8* %136, %struct.TYPE_6__* %140, i32 0, i32* %145, i32* %150)
  %152 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %154 = load i32, i32* %3, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %158 = load i32, i32* %3, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** @test, align 8
  %163 = load i32, i32* %3, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = call i32 @test_BuildCommDCBAndTimeoutsW(i8* %152, %struct.TYPE_6__* %156, i32 255, i32* %161, i32* %166)
  br label %168

168:                                              ; preds = %59, %57
  %169 = load i32, i32* %3, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %3, align 4
  br label %33

171:                                              ; preds = %33
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @GetDefaultCommConfigA(i8*, i32*, i32*) #2

declare dso_local i32 @trace(i8*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @test_BuildCommDCBA(i8*, %struct.TYPE_6__*, i32, i32*) #2

declare dso_local i32 @test_BuildCommDCBAndTimeoutsA(i8*, %struct.TYPE_6__*, i32, i32*, i32*) #2

declare dso_local i32 @test_BuildCommDCBW(i8*, %struct.TYPE_6__*, i32, i32*) #2

declare dso_local i32 @test_BuildCommDCBAndTimeoutsW(i8*, %struct.TYPE_6__*, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
