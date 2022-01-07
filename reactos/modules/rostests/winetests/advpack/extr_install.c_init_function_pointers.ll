; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_install.c_init_function_pointers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_install.c_init_function_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"advpack.dll\00", align 1
@hAdvPack = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"RunSetupCommand\00", align 1
@pRunSetupCommand = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"LaunchINFSection\00", align 1
@pLaunchINFSection = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"LaunchINFSectionEx\00", align 1
@pLaunchINFSectionEx = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_function_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_function_pointers() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @LoadLibraryA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @hAdvPack, align 4
  %3 = load i32, i32* @hAdvPack, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %1, align 4
  br label %29

7:                                                ; preds = %0
  %8 = load i32, i32* @hAdvPack, align 4
  %9 = call i64 @GetProcAddress(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** @pRunSetupCommand, align 8
  %11 = load i32, i32* @hAdvPack, align 4
  %12 = call i64 @GetProcAddress(i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** @pLaunchINFSection, align 8
  %14 = load i32, i32* @hAdvPack, align 4
  %15 = call i64 @GetProcAddress(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** @pLaunchINFSectionEx, align 8
  %17 = load i8*, i8** @pRunSetupCommand, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %7
  %20 = load i8*, i8** @pLaunchINFSection, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** @pLaunchINFSectionEx, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %19, %7
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %1, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %27, %25, %5
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @LoadLibraryA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
