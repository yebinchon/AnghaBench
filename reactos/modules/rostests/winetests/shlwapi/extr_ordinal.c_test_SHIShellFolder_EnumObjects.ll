; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHIShellFolder_EnumObjects.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_SHIShellFolder_EnumObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ShellFolder = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"SHIShellFolder_EnumObjects failed: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Didn't get expected enumerator location, instead: %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"SHGetDesktopFolder failed: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Didn't get an enumerator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHIShellFolder_EnumObjects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHIShellFolder_EnumObjects() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %4 = call i32 @pSHIShellFolder_EnumObjects(i32* @ShellFolder, i32* null, i32 0, i32** %1)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @S_OK, align 4
  %7 = icmp eq i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %2, align 4
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = icmp eq i32* %11, inttoptr (i64 3405691582 to i32*)
  %13 = zext i1 %12 to i32
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  %16 = call i32 @SHGetDesktopFolder(i32** %3)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @S_OK, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  store i32* null, i32** %1, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @pSHIShellFolder_EnumObjects(i32* %23, i32* null, i32 0, i32** %1)
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @S_OK, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %2, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32*, i32** %1, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %0
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @IEnumIDList_Release(i32* %38)
  br label %40

40:                                               ; preds = %37, %0
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @IShellFolder_Release(i32* %41)
  ret void
}

declare dso_local i32 @pSHIShellFolder_EnumObjects(i32*, i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SHGetDesktopFolder(i32**) #1

declare dso_local i32 @IEnumIDList_Release(i32*) #1

declare dso_local i32 @IShellFolder_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
