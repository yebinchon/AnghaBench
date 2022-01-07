; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_IImageList_Get_SetImageCount.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_IImageList_Get_SetImageCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ILC_COLOR16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to create imagelist\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid image count after increase\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"invalid image count after decrease to 1\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"invalid image count after decrease to 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IImageList_Get_SetImageCount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IImageList_Get_SetImageCount() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @ILC_COLOR16, align 4
  %6 = call i64 @pImageList_Create(i32 84, i32 84, i32 %5, i32 0, i32 3)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = call i64 @IImageList_SetImageCount(i32* %13, i32 3)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %3, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  store i32 0, i32* %4, align 4
  %21 = load i32*, i32** %1, align 8
  %22 = call i64 @IImageList_GetImageCount(i32* %21, i32* %4)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %0
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 3
  br label %29

29:                                               ; preds = %26, %0
  %30 = phi i1 [ false, %0 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32*, i32** %1, align 8
  %34 = call i64 @IImageList_SetImageCount(i32* %33, i32 1)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %3, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  store i32 0, i32* %4, align 4
  %41 = load i32*, i32** %1, align 8
  %42 = call i64 @IImageList_GetImageCount(i32* %41, i32* %4)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %29
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 1
  br label %49

49:                                               ; preds = %46, %29
  %50 = phi i1 [ false, %29 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32*, i32** %1, align 8
  %54 = call i64 @IImageList_SetImageCount(i32* %53, i32 0)
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %3, align 8
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  store i32 -1, i32* %4, align 4
  %61 = load i32*, i32** %1, align 8
  %62 = call i64 @IImageList_GetImageCount(i32* %61, i32* %4)
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %49
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 0
  br label %69

69:                                               ; preds = %66, %49
  %70 = phi i1 [ false, %49 ], [ %68, %66 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @IImageList_Release(i32* %73)
  ret void
}

declare dso_local i64 @pImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IImageList_SetImageCount(i32*, i32) #1

declare dso_local i64 @IImageList_GetImageCount(i32*, i32*) #1

declare dso_local i32 @IImageList_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
