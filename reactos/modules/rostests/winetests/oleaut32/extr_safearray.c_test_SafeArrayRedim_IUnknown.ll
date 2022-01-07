; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_SafeArrayRedim_IUnknown.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_safearray.c_test_SafeArrayRedim_IUnknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@VT_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"UNKNOWN test couldn't create array\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"LPUNKNOWN size mismatch\0A\00", align 1
@xtunk = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to put IUnknown element hres 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to increment refcount of iface.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to shrink array hres 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to decrement refcount\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SafeArrayRedim_IUnknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SafeArrayRedim_IUnknown() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = alloca [1 x i32], align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 2, i32* %6, align 4
  %7 = load i32, i32* @VT_UNKNOWN, align 4
  %8 = call %struct.TYPE_11__* @SafeArrayCreate(i32 %7, i32 1, %struct.TYPE_10__* %1)
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  br label %59

16:                                               ; preds = %0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %20, 4
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  store i32 2, i32* %24, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xtunk, i32 0, i32 0), align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %27 = call i64 @SafeArrayPutElement(%struct.TYPE_11__* %25, i32* %26, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xtunk, i32 0, i32 1))
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %4, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xtunk, i32 0, i32 0), align 4
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = call i64 @SafeArrayRedim(%struct.TYPE_11__* %39, %struct.TYPE_10__* %1)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %4, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @xtunk, i32 0, i32 0), align 4
  %48 = icmp eq i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = call i64 @SafeArrayDestroy(%struct.TYPE_11__* %51)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %4, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.TYPE_11__* @SafeArrayCreate(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @SafeArrayPutElement(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i64 @SafeArrayRedim(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i64 @SafeArrayDestroy(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
