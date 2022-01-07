; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_createfolder.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_createfolder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got %d, %d\0A\00", align 1
@fs3 = common dso_local global i32 0, align 4
@CTL_E_FILEALREADYEXISTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_createfolder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_createfolder() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = call i32 @get_temp_path(i32* null, i32* %10)
  %12 = call i32 @CreateDirectoryW(i32* %10, i32* null)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = call i32 (...) @GetLastError()
  %17 = call i32 (i32, i8*, i64, ...) @ok(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %16)
  %18 = call i32 @SysAllocString(i32* %10)
  store i32 %18, i32* %4, align 4
  store i32* inttoptr (i64 233488111 to i32*), i32** %5, align 8
  %19 = load i32, i32* @fs3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @IFileSystem3_CreateFolder(i32 %19, i32 %20, i32** %5)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @CTL_E_FILEALREADYEXISTS, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %3, align 8
  %27 = call i32 (i32, i8*, i64, ...) @ok(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %5, align 8
  %32 = ptrtoint i32* %31 to i64
  %33 = call i32 (i32, i8*, i64, ...) @ok(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @SysFreeString(i32 %34)
  %36 = call i32 @RemoveDirectoryW(i32* %10)
  %37 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %37)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_temp_path(i32*, i32*) #2

declare dso_local i32 @CreateDirectoryW(i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @SysAllocString(i32*) #2

declare dso_local i64 @IFileSystem3_CreateFolder(i32, i32, i32**) #2

declare dso_local i32 @SysFreeString(i32) #2

declare dso_local i32 @RemoveDirectoryW(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
