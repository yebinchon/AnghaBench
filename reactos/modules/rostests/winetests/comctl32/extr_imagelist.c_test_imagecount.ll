; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_imagecount.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_imagecount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"don't crash on bad handle\0A\00", align 1
@ILC_COLOR16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to create imagelist.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"couldn't increase image count\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"invalid image count after increase\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"couldn't decrease image count\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"invalid image count after decrease to 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"invalid image count after decrease to 0\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to destroy imagelist.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_imagecount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_imagecount() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @pImageList_GetImageCount(i64 3735928559)
  %3 = icmp eq i32 0, %2
  %4 = zext i1 %3 to i32
  %5 = call i32 @ok(i32 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @ILC_COLOR16, align 4
  %7 = call i64 @pImageList_Create(i32 84, i32 84, i32 %6, i32 0, i32 3)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i64, i64* %1, align 8
  %13 = call i32 @pImageList_SetImageCount(i64 %12, i32 3)
  %14 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @pImageList_GetImageCount(i64 %15)
  %17 = icmp eq i32 %16, 3
  %18 = zext i1 %17 to i32
  %19 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %20 = load i64, i64* %1, align 8
  %21 = call i32 @pImageList_SetImageCount(i64 %20, i32 1)
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %23 = load i64, i64* %1, align 8
  %24 = call i32 @pImageList_GetImageCount(i64 %23)
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @pImageList_SetImageCount(i64 %28, i32 0)
  %30 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i64, i64* %1, align 8
  %32 = call i32 @pImageList_GetImageCount(i64 %31)
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @pImageList_Destroy(i64 %36)
  %38 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @pImageList_GetImageCount(i64) #1

declare dso_local i64 @pImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pImageList_SetImageCount(i64, i32) #1

declare dso_local i32 @pImageList_Destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
