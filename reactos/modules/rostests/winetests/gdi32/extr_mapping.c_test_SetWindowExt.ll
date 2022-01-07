; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_mapping.c_test_SetWindowExt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_mapping.c_test_SetWindowExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"Window extension: Expected %dx%d, got %dx%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"Viewport extents have not been properly adjusted: Expected %dx%d, got %dx%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Window origin changed from (%d,%d) to (%d,%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Viewport origin changed from (%d,%d) to (%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64)* @test_SetWindowExt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetWindowExt(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @GetWindowOrgEx(i32 %17, %struct.TYPE_8__* %13)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @GetViewportOrgEx(i32 %19, %struct.TYPE_8__* %15)
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @SetWindowExtEx(i32 %21, i64 %22, i64 %23, i32* null)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @GetWindowExtEx(i32 %25, %struct.TYPE_7__* %11)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %31, %5
  %37 = phi i1 [ false, %5 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40, i64 %42, i64 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @GetViewportExtEx(i32 %46, %struct.TYPE_7__* %12)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @rough_match(i64 %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %36
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @rough_match(i64 %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %53, %36
  %60 = phi i1 [ false, %36 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i64 %62, i64 %63, i64 %65, i64 %67)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @GetWindowOrgEx(i32 %69, %struct.TYPE_8__* %14)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %59
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %78, %80
  br label %82

82:                                               ; preds = %76, %59
  %83 = phi i1 [ false, %59 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %86, i64 %88, i64 %90, i64 %92)
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @GetViewportOrgEx(i32 %94, %struct.TYPE_8__* %16)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %97, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %82
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %103, %105
  br label %107

107:                                              ; preds = %101, %82
  %108 = phi i1 [ false, %82 ], [ %106, %101 ]
  %109 = zext i1 %108 to i32
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %111, i64 %113, i64 %115, i64 %117)
  ret void
}

declare dso_local i32 @GetWindowOrgEx(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @GetViewportOrgEx(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @SetWindowExtEx(i32, i64, i64, i32*) #1

declare dso_local i32 @GetWindowExtEx(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ok(i32, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @GetViewportExtEx(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @rough_match(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
