; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_begindrag.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_begindrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [49 x i8] c"Tests need an ImageList with more than 2 images\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"ImageList_BeginDrag() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ImageList_BeginDrag() returned TRUE\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"No active ImageList drag left\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"New ImageList drag was created\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"ImageList drag was not destroyed\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Active drag should not have been canceled\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"ImageList drag was created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_begindrag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_begindrag() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = call i64 @createImageList(i32 7, i32 13)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = call i32 @pImageList_GetImageCount(i64 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 2
  %11 = zext i1 %10 to i32
  %12 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %1, align 8
  %14 = call i64 @pImageList_BeginDrag(i64 %13, i32 1, i32 0, i32 0)
  store i64 %14, i64* %3, align 8
  %15 = call i64 @pImageList_GetDragImage(i32* null, %struct.TYPE_3__* null)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i64, i64* %2, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %18, %0
  %22 = phi i1 [ false, %0 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i64, i64* %1, align 8
  %26 = call i64 @pImageList_BeginDrag(i64 %25, i32 0, i32 3, i32 5)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i64 @pImageList_GetDragImage(i32* null, %struct.TYPE_3__* %5)
  store i64 %32, i64* %2, align 8
  %33 = load i64, i64* %2, align 8
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %21
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br label %46

46:                                               ; preds = %42, %21
  %47 = phi i1 [ false, %21 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %50 = call i32 (...) @pImageList_EndDrag()
  %51 = call i64 @pImageList_GetDragImage(i32* null, %struct.TYPE_3__* null)
  store i64 %51, i64* %2, align 8
  %52 = load i64, i64* %2, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i64, i64* %1, align 8
  %58 = call i64 @pImageList_BeginDrag(i64 %57, i32 0, i32 0, i32 0)
  %59 = load i64, i64* %1, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i64 @pImageList_BeginDrag(i64 %59, i32 %60, i32 3, i32 5)
  store i64 %61, i64* %3, align 8
  %62 = load i64, i64* %3, align 8
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %67 = call i64 @pImageList_GetDragImage(i32* null, %struct.TYPE_3__* %5)
  store i64 %67, i64* %2, align 8
  %68 = load i64, i64* %2, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %46
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br label %78

78:                                               ; preds = %74, %70, %46
  %79 = phi i1 [ false, %70 ], [ false, %46 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %82 = call i32 (...) @pImageList_EndDrag()
  %83 = call i64 @pImageList_GetDragImage(i32* null, %struct.TYPE_3__* null)
  store i64 %83, i64* %2, align 8
  %84 = load i64, i64* %2, align 8
  %85 = icmp ne i64 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i64, i64* %1, align 8
  %90 = call i64 @pImageList_BeginDrag(i64 %89, i32 -17, i32 0, i32 0)
  store i64 %90, i64* %3, align 8
  %91 = call i64 @pImageList_GetDragImage(i32* null, %struct.TYPE_3__* null)
  store i64 %91, i64* %2, align 8
  %92 = load i64, i64* %3, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %78
  %95 = load i64, i64* %2, align 8
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %94, %78
  %98 = phi i1 [ false, %78 ], [ %96, %94 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %101 = call i32 (...) @pImageList_EndDrag()
  %102 = load i64, i64* %1, align 8
  %103 = call i64 @pImageList_BeginDrag(i64 %102, i32 -1, i32 0, i32 0)
  store i64 %103, i64* %3, align 8
  %104 = call i64 @pImageList_GetDragImage(i32* null, %struct.TYPE_3__* null)
  store i64 %104, i64* %2, align 8
  %105 = load i64, i64* %3, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load i64, i64* %2, align 8
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %107, %97
  %111 = phi i1 [ false, %97 ], [ %109, %107 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %114 = call i32 (...) @pImageList_EndDrag()
  %115 = load i64, i64* %1, align 8
  %116 = call i32 @pImageList_Destroy(i64 %115)
  ret void
}

declare dso_local i64 @createImageList(i32, i32) #1

declare dso_local i32 @pImageList_GetImageCount(i64) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @pImageList_BeginDrag(i64, i32, i32, i32) #1

declare dso_local i64 @pImageList_GetDragImage(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @pImageList_EndDrag(...) #1

declare dso_local i32 @pImageList_Destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
