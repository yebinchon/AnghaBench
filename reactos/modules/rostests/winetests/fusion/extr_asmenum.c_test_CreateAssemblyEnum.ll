; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmenum.c_test_CreateAssemblyEnum.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/fusion/extr_asmenum.c_test_CreateAssemblyEnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"wine\00", align 1
@CANOF_PARSE_DISPLAY_NAME = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Expected S_OK, got %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Expected non-NULL asmname\0A\00", align 1
@ASM_CACHE_GAC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Expected non-NULL asmenum\0A\00", align 1
@ASM_CACHE_ROOT = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Expected E_INVALIDARG, got %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Expected asmenum to be unchanged, got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateAssemblyEnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateAssemblyEnum() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = call i32 @to_widechar(i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  %11 = load i32, i32* @CANOF_PARSE_DISPLAY_NAME, align 4
  %12 = call i32* @pCreateAssemblyNameObject(i32** %5, i32* %9, i32 %11, i32* null)
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  %14 = load i32*, i32** @S_OK, align 8
  %15 = icmp eq i32* %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  %23 = load i32, i32* @ASM_CACHE_GAC, align 4
  %24 = call i32* @pCreateAssemblyEnum(i32** %4, i32* null, i32* null, i32 %23, i32* null)
  store i32* %24, i32** %1, align 8
  %25 = load i32*, i32** %1, align 8
  %26 = load i32*, i32** @S_OK, align 8
  %27 = icmp eq i32* %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @IAssemblyEnum_Release(i32* %35)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %4, align 8
  %37 = load i32, i32* @ASM_CACHE_ROOT, align 4
  %38 = call i32* @pCreateAssemblyEnum(i32** %4, i32* null, i32* null, i32 %37, i32* null)
  store i32* %38, i32** %1, align 8
  %39 = load i32*, i32** %1, align 8
  %40 = load i32*, i32** @E_INVALIDARG, align 8
  %41 = icmp eq i32* %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = icmp eq i32* %45, inttoptr (i64 3735928559 to i32*)
  %47 = zext i1 %46 to i32
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32* %48)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %4, align 8
  %50 = call i32* @pCreateAssemblyEnum(i32** %4, i32* null, i32* null, i32 0, i32* null)
  store i32* %50, i32** %1, align 8
  %51 = load i32*, i32** %1, align 8
  %52 = load i32*, i32** @E_INVALIDARG, align 8
  %53 = icmp eq i32* %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = icmp eq i32* %57, inttoptr (i64 3735928559 to i32*)
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @IAssemblyName_Release(i32* %62)
  %64 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @to_widechar(i32*, i8*) #2

declare dso_local i32* @pCreateAssemblyNameObject(i32**, i32*, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32* @pCreateAssemblyEnum(i32**, i32*, i32*, i32, i32*) #2

declare dso_local i32 @IAssemblyEnum_Release(i32*) #2

declare dso_local i32 @IAssemblyName_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
