; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_IImageList_Add_Remove.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_IImageList_Add_Remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ILC_COLOR16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to create imagelist\0A\00", align 1
@hinst = common dso_local global i32 0, align 4
@icon_bits = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"no hicon1\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"no hicon2\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"no hicon3\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"removed nonexistent icon\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"failed to add icon1\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"failed to add icon2\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"failed to add icon3\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"can't remove 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"icon 1 wasn't deleted\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"icon 2 wasn't deleted\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"icon 3 wasn't deleted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IImageList_Add_Remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IImageList_Add_Remove() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @ILC_COLOR16, align 4
  %9 = call i64 @pImageList_Create(i32 84, i32 84, i32 %8, i32 0, i32 3)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %2, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %1, align 8
  %16 = load i32, i32* @hinst, align 4
  %17 = load i32, i32* @icon_bits, align 4
  %18 = load i32, i32* @icon_bits, align 4
  %19 = call i64 @CreateIcon(i32 %16, i32 32, i32 32, i32 1, i32 1, i32 %17, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @hinst, align 4
  %25 = load i32, i32* @icon_bits, align 4
  %26 = load i32, i32* @icon_bits, align 4
  %27 = call i64 @CreateIcon(i32 %24, i32 32, i32 32, i32 1, i32 1, i32 %25, i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @hinst, align 4
  %33 = load i32, i32* @icon_bits, align 4
  %34 = load i32, i32* @icon_bits, align 4
  %35 = call i64 @CreateIcon(i32 %32, i32 32, i32 32, i32 1, i32 1, i32 %33, i32 %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32*, i32** %1, align 8
  %41 = call i64 @IImageList_Remove(i32* %40, i32 0)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @E_INVALIDARG, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i64, i64* %3, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = call i64 @IImageList_Remove(i32* %48, i32 -1)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  %55 = load i32*, i32** %1, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @IImageList_ReplaceIcon(i32* %55, i32 -1, i64 %56, i32* %7)
  %58 = load i64, i64* @S_OK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %0
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br label %63

63:                                               ; preds = %60, %0
  %64 = phi i1 [ false, %0 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  %67 = load i32*, i32** %1, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @IImageList_ReplaceIcon(i32* %67, i32 -1, i64 %68, i32* %7)
  %70 = load i64, i64* @S_OK, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 1
  br label %75

75:                                               ; preds = %72, %63
  %76 = phi i1 [ false, %63 ], [ %74, %72 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  %79 = load i32*, i32** %1, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @IImageList_ReplaceIcon(i32* %79, i32 -1, i64 %80, i32* %7)
  %82 = load i64, i64* @S_OK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 2
  br label %87

87:                                               ; preds = %84, %75
  %88 = phi i1 [ false, %75 ], [ %86, %84 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %91 = load i32*, i32** %1, align 8
  %92 = call i64 @IImageList_Remove(i32* %91, i32 4711)
  %93 = load i64, i64* @E_INVALIDARG, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i64, i64* %3, align 8
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %96)
  %98 = load i32*, i32** %1, align 8
  %99 = call i64 @IImageList_Remove(i32* %98, i32 0)
  %100 = load i64, i64* @S_OK, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %104 = load i32*, i32** %1, align 8
  %105 = call i64 @IImageList_Remove(i32* %104, i32 0)
  %106 = load i64, i64* @S_OK, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %110 = load i32*, i32** %1, align 8
  %111 = call i64 @IImageList_Remove(i32* %110, i32 0)
  %112 = load i64, i64* @S_OK, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %116 = load i32*, i32** %1, align 8
  %117 = call i64 @IImageList_Remove(i32* %116, i32 0)
  %118 = load i64, i64* @E_INVALIDARG, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %3, align 8
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %121)
  %123 = load i32*, i32** %1, align 8
  %124 = call i32 @IImageList_Release(i32* %123)
  %125 = load i64, i64* %4, align 8
  %126 = call i32 @DestroyIcon(i64 %125)
  %127 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @DestroyIcon(i64 %128)
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %131 = load i64, i64* %6, align 8
  %132 = call i32 @DestroyIcon(i64 %131)
  %133 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i64 @pImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @CreateIcon(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IImageList_Remove(i32*, i32) #1

declare dso_local i64 @IImageList_ReplaceIcon(i32*, i32, i64, i32*) #1

declare dso_local i32 @IImageList_Release(i32*) #1

declare dso_local i32 @DestroyIcon(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
