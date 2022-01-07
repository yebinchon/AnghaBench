; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_SerialNumber.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_SerialNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"No fixed drive found, skipping test.\0A\00", align 1
@E_POINTER = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@S_OK = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"got %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SerialNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SerialNumber() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32* (...) @get_fixed_drive()
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @skip(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %88

10:                                               ; preds = %0
  %11 = load i32*, i32** %1, align 8
  %12 = call i32* @IDrive_get_SerialNumber(i32* %11, i32* null)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** @E_POINTER, align 8
  %15 = icmp eq i32* %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32*, i32** %3, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  store i32 -559038737, i32* %2, align 4
  %20 = load i32*, i32** %1, align 8
  %21 = call i32* @IDrive_get_SerialNumber(i32* %20, i32* %2)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** @S_OK, align 8
  %24 = icmp eq i32* %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32*, i32** %3, align 8
  %27 = ptrtoint i32* %26 to i32
  %28 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, -559038737
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32* @IDrive_get_FileSystem(i32* %34, i32** null)
  store i32* %35, i32** %3, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** @E_POINTER, align 8
  %38 = icmp eq i32* %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32*, i32** %3, align 8
  %41 = ptrtoint i32* %40 to i32
  %42 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32* null, i32** %4, align 8
  %43 = load i32*, i32** %1, align 8
  %44 = call i32* @IDrive_get_FileSystem(i32* %43, i32** %4)
  store i32* %44, i32** %3, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** @S_OK, align 8
  %47 = icmp eq i32* %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32*, i32** %3, align 8
  %50 = ptrtoint i32* %49 to i32
  %51 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = load i32*, i32** %4, align 8
  %56 = ptrtoint i32* %55 to i32
  %57 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @SysFreeString(i32* %58)
  %60 = load i32*, i32** %1, align 8
  %61 = call i32* @IDrive_get_VolumeName(i32* %60, i32** null)
  store i32* %61, i32** %3, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = load i32*, i32** @E_POINTER, align 8
  %64 = icmp eq i32* %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32*, i32** %3, align 8
  %67 = ptrtoint i32* %66 to i32
  %68 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i32* null, i32** %4, align 8
  %69 = load i32*, i32** %1, align 8
  %70 = call i32* @IDrive_get_VolumeName(i32* %69, i32** %4)
  store i32* %70, i32** %3, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = load i32*, i32** @S_OK, align 8
  %73 = icmp eq i32* %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32*, i32** %3, align 8
  %76 = ptrtoint i32* %75 to i32
  %77 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = icmp ne i32* %78, null
  %80 = zext i1 %79 to i32
  %81 = load i32*, i32** %4, align 8
  %82 = ptrtoint i32* %81 to i32
  %83 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @SysFreeString(i32* %84)
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @IDrive_Release(i32* %86)
  br label %88

88:                                               ; preds = %10, %8
  ret void
}

declare dso_local i32* @get_fixed_drive(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32* @IDrive_get_SerialNumber(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32* @IDrive_get_FileSystem(i32*, i32**) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32* @IDrive_get_VolumeName(i32*, i32**) #1

declare dso_local i32 @IDrive_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
