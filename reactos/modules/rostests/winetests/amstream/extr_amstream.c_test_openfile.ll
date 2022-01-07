; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_test_openfile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/amstream/extr_amstream.c_test_openfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"IAMMultiMediaStream_GetFilterGraph returned: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Filtergraph should not be created yet\0A\00", align 1
@filenameW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"IAMMultiMediaStream_OpenFile returned: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Filtergraph should be created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_openfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_openfile() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* (...) @create_ammultimediastream()
  store i32* %4, i32** %1, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %55

7:                                                ; preds = %0
  %8 = load i32*, i32** %1, align 8
  %9 = call i64 @IAMMultiMediaStream_GetFilterGraph(i32* %8, i32** %3)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %2, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = icmp eq i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @IGraphBuilder_Release(i32* %23)
  br label %25

25:                                               ; preds = %22, %7
  %26 = load i32*, i32** %1, align 8
  %27 = load i32, i32* @filenameW, align 4
  %28 = call i64 @IAMMultiMediaStream_OpenFile(i32* %26, i32 %27, i32 0)
  store i64 %28, i64* %2, align 8
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %2, align 8
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i64 @IAMMultiMediaStream_GetFilterGraph(i32* %35, i32** %3)
  store i64 %36, i64* %2, align 8
  %37 = load i64, i64* %2, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %2, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32*, i32** %3, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %25
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @IGraphBuilder_Release(i32* %50)
  br label %52

52:                                               ; preds = %49, %25
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @IAMMultiMediaStream_Release(i32* %53)
  br label %55

55:                                               ; preds = %52, %6
  ret void
}

declare dso_local i32* @create_ammultimediastream(...) #1

declare dso_local i64 @IAMMultiMediaStream_GetFilterGraph(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IGraphBuilder_Release(i32*) #1

declare dso_local i64 @IAMMultiMediaStream_OpenFile(i32*, i32, i32) #1

declare dso_local i32 @IAMMultiMediaStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
