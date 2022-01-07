; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_SafeArrayGetPutElement_IUnknown.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_SafeArrayGetPutElement_IUnknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@VT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"UNKNOWN test couldn't create array\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"LPUNKNOWN size mismatch\0A\00", align 1
@xtunk = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to put bstr element hres 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to increment refcount of iface.\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to get bstr element at hres 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Got %p instead of %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Failed to decrement refcount of iface.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SafeArrayGetPutElement_IUnknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SafeArrayGetPutElement_IUnknown() #0 {
  %1 = alloca %struct.TYPE_9__, align 4
  %2 = alloca [1 x i32], align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* @VT_UNKNOWN, align 4
  %9 = call %struct.TYPE_10__* @SafeArrayCreate(i32 %8, i32 1, %struct.TYPE_9__* %1)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %0
  br label %76

17:                                               ; preds = %0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %21, 4
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xtunk, i32 0, i32 0), align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %30 = call i32 @SafeArrayPutElement(%struct.TYPE_10__* %28, i32* %29, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xtunk, i32 0, i32 1))
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @S_OK, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xtunk, i32 0, i32 0), align 4
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i32
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %43 = call i32 @SafeArrayGetElement(%struct.TYPE_10__* %41, i32* %42, i32** %5)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xtunk, i32 0, i32 0), align 4
  %45 = icmp eq i32 %44, 3
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @S_OK, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @S_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %17
  %58 = load i32*, i32** %5, align 8
  %59 = icmp eq i32* %58, getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xtunk, i32 0, i32 1)
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %61, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xtunk, i32 0, i32 1))
  br label %63

63:                                               ; preds = %57, %17
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = call i32 @SafeArrayDestroy(%struct.TYPE_10__* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @S_OK, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %4, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xtunk, i32 0, i32 0), align 4
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %76

76:                                               ; preds = %63, %16
  ret void
}

declare dso_local %struct.TYPE_10__* @SafeArrayCreate(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SafeArrayPutElement(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @SafeArrayGetElement(%struct.TYPE_10__*, i32*, i32**) #1

declare dso_local i32 @SafeArrayDestroy(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
