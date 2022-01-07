; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_copy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ILC_COLOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ImageList not empty.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Tests need an ImageList with more than 2 images\0A\00", align 1
@ILCF_MOVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"ImageList_Copy() should have returned FALSE\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Expected no image in dst ImageList, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_copy() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @ILC_COLOR, align 4
  %6 = call i32 @pImageList_Create(i32 5, i32 11, i32 %5, i32 1, i32 1)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @pImageList_GetImageCount(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @createImageList(i32 7, i32 13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @pImageList_GetImageCount(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 2
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @ILCF_MOVE, align 4
  %24 = call i32 @pImageList_Copy(i32 %21, i32 0, i32 %22, i32 2, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @pImageList_GetImageCount(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @pImageList_Destroy(i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @pImageList_Destroy(i32 %39)
  ret void
}

declare dso_local i32 @pImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pImageList_GetImageCount(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @createImageList(i32, i32) #1

declare dso_local i32 @pImageList_Copy(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pImageList_Destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
