; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_events.c__test_attached_event_args.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_events.c__test_attached_event_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32 }

@DISPID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"id = %d\0A\00", align 1
@DISPATCH_METHOD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"wFlags = %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"pDispParams == NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"pdp->cArgs = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"pdp->cNamedArgs = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"pdp->rgdispidNamedArgs = %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"rgvarg = NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"pvarRes = NULL\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"pei = NULL\0A\00", align 1
@VT_EMPTY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"V_VT(pVarRes) = %d\0A\00", align 1
@VT_DISPATCH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"V_VT(pdp->rgvarg) = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"V_DISPATCH(pdp->rgvarg) = %p\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"event != arg0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, %struct.TYPE_3__*, i32*, i32*)* @_test_attached_event_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_test_attached_event_args(i32 %0, i64 %1, i64 %2, %struct.TYPE_3__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @DISPID_VALUE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %8, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @DISPATCH_METHOD, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %9, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %65 = load i32*, i32** %11, align 8
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %69 = load i32*, i32** %12, align 8
  %70 = icmp ne i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @V_VT(i32* %73)
  %75 = load i32, i32* @VT_EMPTY, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @V_VT(i32* %78)
  %80 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @V_VT(i32* %83)
  %85 = load i32, i32* @VT_DISPATCH, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @V_VT(i32* %90)
  %92 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32* @V_DISPATCH(i32* %95)
  %97 = icmp ne i32* %96, null
  %98 = zext i1 %97 to i32
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = call i32* @V_DISPATCH(i32* %101)
  %103 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32* %102)
  %104 = load i32, i32* %7, align 4
  %105 = call i32* @_get_event_obj(i32 %104)
  store i32* %105, i32** %13, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32* @V_DISPATCH(i32* %109)
  %111 = call i32 @iface_cmp(i32* %106, i32* %110)
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @IHTMLEventObj_Release(i32* %113)
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32* @V_DISPATCH(i32*) #1

declare dso_local i32* @_get_event_obj(i32) #1

declare dso_local i32 @iface_cmp(i32*, i32*) #1

declare dso_local i32 @IHTMLEventObj_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
