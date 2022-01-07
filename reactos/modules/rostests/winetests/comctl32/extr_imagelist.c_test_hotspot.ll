; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_hotspot.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_hotspot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotspot = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@test_hotspot.hotspots = internal constant [4 x %struct.hotspot] [%struct.hotspot { i32 10, i32 7 }, %struct.hotspot { i32 47, i32 31 }, %struct.hotspot { i32 -9, i32 -8 }, %struct.hotspot { i32 -7, i32 35 }], align 16
@.str = private unnamed_addr constant [33 x i8] c"BeginDrag failed for { %d, %d }\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"BeginDrag (%d,%d)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"SetDragCursorImage failed for {%d, %d}{%d, %d}\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SetDragCursorImage (%d,%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Expected drag hotspot [%d,%d] got [%d,%d]\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Expected drag image size [%d,%d] got [%d,%d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"GetDragImage (%d,%d)\0A\00", align 1
@HOTSPOTS_MAX = common dso_local global i32 0, align 4
@SIZEX2 = common dso_local global i32 0, align 4
@SIZEY2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hotspot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hotspot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__, align 4
  %18 = call i32 @createImageList(i32 47, i32 31)
  store i32 %18, i32* %4, align 4
  %19 = call i32 @createImageList(i32 11, i32 17)
  store i32 %19, i32* %5, align 4
  %20 = call i32 (...) @create_window()
  store i32 %20, i32* %6, align 4
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %157, %0
  %22 = load i32, i32* %1, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %160

24:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %153, %24
  %26 = load i32, i32* %2, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %156

28:                                               ; preds = %25
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x %struct.hotspot], [4 x %struct.hotspot]* @test_hotspot.hotspots, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.hotspot, %struct.hotspot* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x %struct.hotspot], [4 x %struct.hotspot]* @test_hotspot.hotspots, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.hotspot, %struct.hotspot* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x %struct.hotspot], [4 x %struct.hotspot]* @test_hotspot.hotspots, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.hotspot, %struct.hotspot* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x %struct.hotspot], [4 x %struct.hotspot]* @test_hotspot.hotspots, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.hotspot, %struct.hotspot* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @pImageList_BeginDrag(i32 %49, i32 0, i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @max(i32 47, i32 31)
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %67 = load i32, i32* @TRUE, align 4
  %68 = call i32 @show_image(i32 %63, i32 %64, i32 0, i32 %65, i8* %66, i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @pImageList_SetDragCursorImage(i32 %69, i32 0, i32 %70, i32 %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %75, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @sprintf(i8* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @max(i32 11, i32 17)
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %89 = load i32, i32* @TRUE, align 4
  %90 = call i32 @show_image(i32 %85, i32 %86, i32 0, i32 %87, i8* %88, i32 %89)
  %91 = call i32 @pImageList_GetDragImage(i32* null, %struct.TYPE_3__* %17)
  store i32 %91, i32* %16, align 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %28
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp eq i32 %98, %99
  br label %101

101:                                              ; preds = %96, %28
  %102 = phi i1 [ false, %28 ], [ %100, %96 ]
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %105, i32 %107, i32 %109)
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @pImageList_GetIconSize(i32 %111, i32* %13, i32* %14)
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 11, %113
  %115 = load i32, i32* %9, align 4
  %116 = sub nsw i32 47, %115
  %117 = call i32 @max(i32 %114, i32 %116)
  %118 = call i32 @max(i32 47, i32 %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 17, %119
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 31, %121
  %123 = call i32 @max(i32 %120, i32 %122)
  %124 = call i32 @max(i32 31, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %101
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %129, %130
  br label %132

132:                                              ; preds = %128, %101
  %133 = phi i1 [ false, %101 ], [ %131, %128 ]
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %14, align 4
  %139 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %134, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %141 = load i32, i32* %1, align 4
  %142 = load i32, i32* %2, align 4
  %143 = call i32 @sprintf(i8* %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %141, i32 %142)
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @max(i32 %146, i32 %147)
  %149 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %150 = load i32, i32* @TRUE, align 4
  %151 = call i32 @show_image(i32 %144, i32 %145, i32 0, i32 %148, i8* %149, i32 %150)
  %152 = call i32 (...) @pImageList_EndDrag()
  br label %153

153:                                              ; preds = %132
  %154 = load i32, i32* %2, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %2, align 4
  br label %25

156:                                              ; preds = %25
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %1, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %1, align 4
  br label %21

160:                                              ; preds = %21
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @pImageList_Destroy(i32 %161)
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @pImageList_Destroy(i32 %163)
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @DestroyWindow(i32 %165)
  ret void
}

declare dso_local i32 @createImageList(i32, i32) #1

declare dso_local i32 @create_window(...) #1

declare dso_local i32 @pImageList_BeginDrag(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @show_image(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @pImageList_SetDragCursorImage(i32, i32, i32, i32) #1

declare dso_local i32 @pImageList_GetDragImage(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @pImageList_GetIconSize(i32, i32*, i32*) #1

declare dso_local i32 @pImageList_EndDrag(...) #1

declare dso_local i32 @pImageList_Destroy(i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
