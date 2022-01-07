; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_add_remove.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_test_add_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ILC_COLOR16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to create imagelist\0A\00", align 1
@hinst = common dso_local global i32 0, align 4
@icon_bits = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"no hicon1\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"no hicon2\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"no hicon3\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Removed nonexistent icon.\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Removed nonexistent icon\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Failed to add icon1.\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Failed to add icon2.\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Failed to add icon3.\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"removed nonexistent icon\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Can't remove 0\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Failed to destroy imagelist.\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Don't crash on bad handle\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Failed to destroy icon 1.\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Failed to destroy icon 2.\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Failed to destroy icon 3.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_add_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_add_remove() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @ILC_COLOR16, align 4
  %6 = call i64 @pImageList_Create(i32 84, i32 84, i32 %5, i32 0, i32 3)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @hinst, align 4
  %12 = load i32, i32* @icon_bits, align 4
  %13 = load i32, i32* @icon_bits, align 4
  %14 = call i64 @CreateIcon(i32 %11, i32 32, i32 32, i32 1, i32 1, i32 %12, i32 %13)
  store i64 %14, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @hinst, align 4
  %20 = load i32, i32* @icon_bits, align 4
  %21 = load i32, i32* @icon_bits, align 4
  %22 = call i64 @CreateIcon(i32 %19, i32 32, i32 32, i32 1, i32 1, i32 %20, i32 %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @hinst, align 4
  %28 = load i32, i32* @icon_bits, align 4
  %29 = load i32, i32* @icon_bits, align 4
  %30 = call i64 @CreateIcon(i32 %27, i32 32, i32 32, i32 1, i32 1, i32 %28, i32 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i64, i64* %1, align 8
  %36 = call i32 @pImageList_Remove(i64 %35, i32 0)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i64, i64* %1, align 8
  %42 = call i32 @pImageList_Remove(i64 %41, i32 -1)
  %43 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* %2, align 8
  %46 = call i32 @pImageList_ReplaceIcon(i64 %44, i32 -1, i64 %45)
  %47 = icmp eq i32 0, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %50 = load i64, i64* %1, align 8
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @pImageList_ReplaceIcon(i64 %50, i32 -1, i64 %51)
  %53 = icmp eq i32 1, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %56 = load i64, i64* %1, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @pImageList_ReplaceIcon(i64 %56, i32 -1, i64 %57)
  %59 = icmp eq i32 2, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %62 = load i64, i64* %1, align 8
  %63 = call i32 @pImageList_Remove(i64 %62, i32 4711)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %68 = load i64, i64* %1, align 8
  %69 = call i32 @pImageList_Remove(i64 %68, i32 0)
  %70 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %71 = load i64, i64* %1, align 8
  %72 = call i32 @pImageList_Remove(i64 %71, i32 0)
  %73 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %74 = load i64, i64* %1, align 8
  %75 = call i32 @pImageList_Remove(i64 %74, i32 0)
  %76 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %77 = load i64, i64* %1, align 8
  %78 = call i32 @pImageList_Remove(i64 %77, i32 0)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i64, i64* %1, align 8
  %84 = call i32 @pImageList_Destroy(i64 %83)
  %85 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %86 = load i64, i64* %2, align 8
  %87 = call i32 @pImageList_ReplaceIcon(i64 3735928559, i32 -1, i64 %86)
  %88 = icmp eq i32 -1, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %91 = load i64, i64* %2, align 8
  %92 = call i32 @DestroyIcon(i64 %91)
  %93 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %94 = load i64, i64* %3, align 8
  %95 = call i32 @DestroyIcon(i64 %94)
  %96 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %97 = load i64, i64* %4, align 8
  %98 = call i32 @DestroyIcon(i64 %97)
  %99 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i64 @pImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @CreateIcon(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pImageList_Remove(i64, i32) #1

declare dso_local i32 @pImageList_ReplaceIcon(i64, i32, i64) #1

declare dso_local i32 @pImageList_Destroy(i64) #1

declare dso_local i32 @DestroyIcon(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
