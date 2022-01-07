; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_path.c_test_widenpath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_path.c_test_widenpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PS_SOLID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"WidenPath fails while widening a poyline path.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"GetPath fails after calling WidenPath.\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Path number of points is too low. Should be more than 6 but is %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ERROR_CAN_NOT_COMPLETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [92 x i8] c"WidenPath fails while widening an open path. Return value is %d, should be %d. Error is %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"WidenPath failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"WidenPath should compute a widened path with a 1px wide pen. Path length is %d, should be more than 6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_widenpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_widenpath() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [6 x %struct.TYPE_3__], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @GetDC(i32 0)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @PS_SOLID, align 4
  %9 = call i32 @RGB(i32 0, i32 0, i32 0)
  %10 = call i32 @CreatePen(i32 %8, i32 10, i32 %9)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @SelectObject(i32 %11, i32 %12)
  %14 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 100, i32* %15, align 16
  %16 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 200, i32* %19, align 8
  %20 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 300, i32* %23, align 16
  %24 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 100, i32* %25, align 4
  %26 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 300, i32* %27, align 8
  %28 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 200, i32* %29, align 4
  %30 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 200, i32* %31, align 16
  %32 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 300, i32* %33, align 4
  %34 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 5
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 100, i32* %35, align 8
  %36 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 5
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 300, i32* %37, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @BeginPath(i32 %38)
  %40 = load i32, i32* %1, align 4
  %41 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %42 = call i32 @Polyline(i32 %40, %struct.TYPE_3__* %41, i32 6)
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @EndPath(i32 %43)
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @WidenPath(i32 %45)
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @GetPath(i32 %48, i32* null, i32* null, i32 0)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, -1
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %5, align 4
  %55 = icmp sgt i32 %54, 6
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @AbortPath(i32 %59)
  %61 = call i32 @SetLastError(i32 -559038737)
  %62 = load i32, i32* %1, align 4
  %63 = call i32 @BeginPath(i32 %62)
  %64 = load i32, i32* %1, align 4
  %65 = call i32 @WidenPath(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @FALSE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %0
  %70 = call i32 (...) @GetLastError()
  %71 = load i32, i32* @ERROR_CAN_NOT_COMPLETE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = call i32 (...) @GetLastError()
  %75 = icmp eq i32 %74, -559038737
  br label %76

76:                                               ; preds = %73, %69
  %77 = phi i1 [ true, %69 ], [ %75, %73 ]
  br label %78

78:                                               ; preds = %76, %0
  %79 = phi i1 [ false, %0 ], [ %77, %76 ]
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @FALSE, align 4
  %83 = call i32 (...) @GetLastError()
  %84 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %1, align 4
  %86 = call i32 @AbortPath(i32 %85)
  %87 = load i32, i32* @PS_SOLID, align 4
  %88 = call i32 @RGB(i32 0, i32 0, i32 0)
  %89 = call i32 @CreatePen(i32 %87, i32 1, i32 %88)
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %1, align 4
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @SelectObject(i32 %90, i32 %91)
  %93 = load i32, i32* %1, align 4
  %94 = call i32 @BeginPath(i32 %93)
  %95 = load i32, i32* %1, align 4
  %96 = getelementptr inbounds [6 x %struct.TYPE_3__], [6 x %struct.TYPE_3__]* %4, i64 0, i64 0
  %97 = call i32 @Polyline(i32 %95, %struct.TYPE_3__* %96, i32 6)
  %98 = load i32, i32* %1, align 4
  %99 = call i32 @EndPath(i32 %98)
  %100 = load i32, i32* %1, align 4
  %101 = call i32 @WidenPath(i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @TRUE, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 (...) @GetLastError()
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %1, align 4
  %109 = call i32 @GetPath(i32 %108, i32* null, i32* null, i32 0)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp sgt i32 %110, 6
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %1, align 4
  %116 = call i32 @ReleaseDC(i32 0, i32 %115)
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @CreatePen(i32, i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @BeginPath(i32) #1

declare dso_local i32 @Polyline(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @EndPath(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @WidenPath(i32) #1

declare dso_local i32 @GetPath(i32, i32*, i32*, i32) #1

declare dso_local i32 @AbortPath(i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
