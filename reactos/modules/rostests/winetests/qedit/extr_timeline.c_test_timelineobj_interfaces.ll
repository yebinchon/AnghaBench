; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qedit/extr_timeline.c_test_timelineobj_interfaces.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qedit/extr_timeline.c_test_timelineobj_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_AMTimeline = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IAMTimeline = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"CoCreateInstance failed: %08x\0A\00", align 1
@TIMELINE_MAJOR_TYPE_GROUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CreateEmptyNode failed: %08x\0A\00", align 1
@IID_IAMTimelineGroup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@IID_IAMTimelineObj = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Different pointers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_timelineobj_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_timelineobj_interfaces() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  %6 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %7 = bitcast i32** %2 to i8**
  %8 = call i64 @CoCreateInstance(i32* @CLSID_AMTimeline, i32* null, i32 %6, i32* @IID_IAMTimeline, i8** %7)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %0
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @broken(i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %0
  %20 = phi i1 [ true, %0 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %1, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %73

27:                                               ; preds = %19
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @TIMELINE_MAJOR_TYPE_GROUP, align 4
  %30 = call i64 @IAMTimeline_CreateEmptyNode(i32* %28, i32** %3, i32 %29)
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %1, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %1, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %27
  %41 = load i32*, i32** %3, align 8
  %42 = bitcast i32** %4 to i8**
  %43 = call i64 @IAMTimelineObj_QueryInterface(i32* %41, i32* @IID_IAMTimelineGroup, i8** %42)
  store i64 %43, i64* %1, align 8
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @S_OK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %1, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = bitcast i32** %5 to i8**
  %52 = call i64 @IAMTimelineGroup_QueryInterface(i32* %50, i32* @IID_IAMTimelineObj, i8** %51)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %1, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = icmp eq i32* %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @IAMTimelineObj_Release(i32* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @IAMTimelineGroup_Release(i32* %66)
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @IAMTimelineObj_Release(i32* %68)
  br label %70

70:                                               ; preds = %40, %27
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @IAMTimeline_Release(i32* %71)
  br label %73

73:                                               ; preds = %70, %26
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @IAMTimeline_CreateEmptyNode(i32*, i32**, i32) #1

declare dso_local i64 @IAMTimelineObj_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @IAMTimelineGroup_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IAMTimelineObj_Release(i32*) #1

declare dso_local i32 @IAMTimelineGroup_Release(i32*) #1

declare dso_local i32 @IAMTimeline_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
