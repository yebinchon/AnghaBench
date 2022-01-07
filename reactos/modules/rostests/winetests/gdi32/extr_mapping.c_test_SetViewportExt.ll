; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_mapping.c_test_SetViewportExt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_mapping.c_test_SetViewportExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [77 x i8] c"Viewport extents have not been properly adjusted: Expected %dx%d, got %dx%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Window extension changed from %dx%d to %dx%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Window origin changed from (%d,%d) to (%d,%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Viewport origin changed from (%d,%d) to (%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64)* @test_SetViewportExt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetViewportExt(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = alloca %struct.TYPE_8__, align 8
  %17 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @GetWindowOrgEx(i32 %18, %struct.TYPE_8__* %14)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @GetViewportOrgEx(i32 %20, %struct.TYPE_8__* %16)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @GetWindowExtEx(i32 %22, %struct.TYPE_7__* %11)
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @SetViewportExtEx(i32 %24, i64 %25, i64 %26, i32* null)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @GetViewportExtEx(i32 %28, %struct.TYPE_7__* %13)
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @rough_match(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @rough_match(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %35, %5
  %42 = phi i1 [ false, %5 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %45, i64 %47, i64 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @GetWindowExtEx(i32 %51, %struct.TYPE_7__* %12)
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %60, %62
  br label %64

64:                                               ; preds = %58, %41
  %65 = phi i1 [ false, %41 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %70, i64 %72, i64 %74)
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @GetWindowOrgEx(i32 %76, %struct.TYPE_8__* %15)
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %79, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %85, %87
  br label %89

89:                                               ; preds = %83, %64
  %90 = phi i1 [ false, %64 ], [ %88, %83 ]
  %91 = zext i1 %90 to i32
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %93, i64 %95, i64 %97, i64 %99)
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @GetViewportOrgEx(i32 %101, %struct.TYPE_8__* %17)
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %104, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %89
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %110, %112
  br label %114

114:                                              ; preds = %108, %89
  %115 = phi i1 [ false, %89 ], [ %113, %108 ]
  %116 = zext i1 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %118, i64 %120, i64 %122, i64 %124)
  ret void
}

declare dso_local i32 @GetWindowOrgEx(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @GetViewportOrgEx(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @GetWindowExtEx(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @SetViewportExtEx(i32, i64, i64, i32*) #1

declare dso_local i32 @GetViewportExtEx(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ok(i32, i8*, i64, i64, i64, i64) #1

declare dso_local i64 @rough_match(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
