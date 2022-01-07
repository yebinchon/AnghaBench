; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_create_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_create_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ILC_COLOR16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"ImageList_Destroy(0xdeadbeef) should fail and not crash\0A\00", align 1
@ILC_COLORDDB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Wrong cx (%i)\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Wrong cy (%i)\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Unexpected image count after increase\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_create_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_create_destroy() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @ILC_COLOR16, align 4
  %7 = call i32* @pImageList_Create(i32 0, i32 0, i32 %6, i32 0, i32 3)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %11)
  %13 = load i32, i32* @ILC_COLOR16, align 4
  %14 = call i32* @pImageList_Create(i32 0, i32 16, i32 %13, i32 0, i32 3)
  store i32* %14, i32** %1, align 8
  %15 = load i32*, i32** %1, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load i32, i32* @ILC_COLOR16, align 4
  %21 = call i32* @pImageList_Create(i32 16, i32 0, i32 %20, i32 0, i32 3)
  store i32* %21, i32** %1, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = icmp eq i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %25)
  %27 = load i32, i32* @ILC_COLOR16, align 4
  %28 = call i32* @pImageList_Create(i32 16, i32 -1, i32 %27, i32 0, i32 3)
  store i32* %28, i32** %1, align 8
  %29 = load i32*, i32** %1, align 8
  %30 = icmp eq i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %32)
  %34 = load i32, i32* @ILC_COLOR16, align 4
  %35 = call i32* @pImageList_Create(i32 -1, i32 16, i32 %34, i32 0, i32 3)
  store i32* %35, i32** %1, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %39)
  %41 = call i64 @pImageList_Destroy(i32* inttoptr (i64 3735928559 to i32*))
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @FALSE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @ILC_COLORDDB, align 4
  %48 = call i32* @pImageList_Create(i32 0, i32 14, i32 %47, i32 4, i32 4)
  store i32* %48, i32** %1, align 8
  %49 = load i32*, i32** %1, align 8
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @pImageList_GetIconSize(i32* %54, i32* %2, i32* %3)
  %56 = load i32, i32* %2, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %2, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = icmp eq i32 %61, 14
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %3, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %1, align 8
  %67 = call i64 @pImageList_Destroy(i32* %66)
  %68 = load i32, i32* @ILC_COLORDDB, align 4
  %69 = call i32* @pImageList_Create(i32 0, i32 0, i32 %68, i32 4, i32 4)
  store i32* %69, i32** %1, align 8
  %70 = load i32*, i32** %1, align 8
  %71 = icmp ne i32* %70, null
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %73)
  %75 = load i32*, i32** %1, align 8
  %76 = call i32 @pImageList_GetIconSize(i32* %75, i32* %2, i32* %3)
  %77 = load i32, i32* %2, align 4
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %2, align 4
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %3, align 4
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %3, align 4
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32*, i32** %1, align 8
  %88 = call i64 @pImageList_Destroy(i32* %87)
  %89 = load i32, i32* @ILC_COLORDDB, align 4
  %90 = call i32* @pImageList_Create(i32 0, i32 0, i32 %89, i32 0, i32 4)
  store i32* %90, i32** %1, align 8
  %91 = load i32*, i32** %1, align 8
  %92 = icmp ne i32* %91, null
  %93 = zext i1 %92 to i32
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %94)
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @pImageList_GetIconSize(i32* %96, i32* %2, i32* %3)
  %98 = load i32, i32* %2, align 4
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %2, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %3, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load i32*, i32** %1, align 8
  %109 = call i32 @pImageList_SetImageCount(i32* %108, i32 3)
  %110 = load i32*, i32** %1, align 8
  %111 = call i32 @pImageList_GetImageCount(i32* %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 3
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %116 = load i32*, i32** %1, align 8
  %117 = call i64 @pImageList_Destroy(i32* %116)
  %118 = load i32, i32* @ILC_COLORDDB, align 4
  %119 = call i32* @pImageList_Create(i32 -1, i32 -1, i32 %118, i32 4, i32 4)
  store i32* %119, i32** %1, align 8
  %120 = load i32*, i32** %1, align 8
  %121 = icmp eq i32* %120, null
  %122 = zext i1 %121 to i32
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %123)
  %125 = load i32, i32* @ILC_COLORDDB, align 4
  %126 = call i32* @pImageList_Create(i32 -1, i32 1, i32 %125, i32 4, i32 4)
  store i32* %126, i32** %1, align 8
  %127 = load i32*, i32** %1, align 8
  %128 = icmp eq i32* %127, null
  %129 = zext i1 %128 to i32
  %130 = load i32*, i32** %1, align 8
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %130)
  %132 = load i32, i32* @ILC_COLORDDB, align 4
  %133 = call i32* @pImageList_Create(i32 1, i32 -1, i32 %132, i32 4, i32 4)
  store i32* %133, i32** %1, align 8
  %134 = load i32*, i32** %1, align 8
  %135 = icmp eq i32* %134, null
  %136 = zext i1 %135 to i32
  %137 = load i32*, i32** %1, align 8
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %137)
  ret void
}

declare dso_local i32* @pImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @pImageList_Destroy(i32*) #1

declare dso_local i32 @pImageList_GetIconSize(i32*, i32*, i32*) #1

declare dso_local i32 @pImageList_SetImageCount(i32*, i32) #1

declare dso_local i32 @pImageList_GetImageCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
