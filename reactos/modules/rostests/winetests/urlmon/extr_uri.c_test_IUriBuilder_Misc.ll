; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_IUriBuilder_Misc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_IUriBuilder_Misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@http_urlW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Error: CreateIUriBuilder returned 0x%08x, expected 0x%08x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Error: IUriBuilder_GetPort returned 0x%08x, expected 0x%08x.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Error: Expected 'has' to be FALSE, was %d instead.\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Error: Expected the port to be 80, but, was %d instead.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IUriBuilder_Misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IUriBuilder_Misc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @http_urlW, align 4
  %7 = call i32 @pCreateUri(i32 %6, i32 0, i32 0, i32** %2)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i64 @SUCCEEDED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @pCreateIUriBuilder(i32* %12, i32 0, i32 0, i32** %3)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @S_OK, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @S_OK, align 4
  %20 = call i32 (i32, i8*, i32, ...) @ok(i32 %17, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = call i64 @SUCCEEDED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %11
  store i64 -1, i64* %4, align 8
  store i32 -1, i32* %5, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @IUriBuilder_GetPort(i32* %25, i64* %4, i32* %5)
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @S_OK, align 4
  %33 = call i32 (i32, i8*, i32, ...) @ok(i32 %30, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %1, align 4
  %35 = call i64 @SUCCEEDED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %24
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @FALSE, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %4, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i32, i8*, i32, ...) @ok(i32 %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 80
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i32, i8*, i32, ...) @ok(i32 %47, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %37, %24
  br label %51

51:                                               ; preds = %50, %11
  %52 = load i32*, i32** %3, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @IUriBuilder_Release(i32* %55)
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %0
  %59 = load i32*, i32** %2, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @IUri_Release(i32* %62)
  br label %64

64:                                               ; preds = %61, %58
  ret void
}

declare dso_local i32 @pCreateUri(i32, i32, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @pCreateIUriBuilder(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @IUriBuilder_GetPort(i32*, i64*, i32*) #1

declare dso_local i32 @IUriBuilder_Release(i32*) #1

declare dso_local i32 @IUri_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
