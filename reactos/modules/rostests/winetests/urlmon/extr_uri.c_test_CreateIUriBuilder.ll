; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CreateIUriBuilder.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_uri.c_test_CreateIUriBuilder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_POINTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"Error: CreateIUriBuilder returned 0x%08x, expected 0x%08x\0A\00", align 1
@http_urlW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Error: CreateUri returned 0x%08x, expected 0x%08x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Error: CreateIUriBuilder returned 0x%08x, expected 0x%08x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Error: Expecting builder not to be NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Error: Expected the ref count to be %u, but was %u instead.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateIUriBuilder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateIUriBuilder() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  %6 = call i64 @pCreateIUriBuilder(i32* null, i32 0, i32 0, i32** null)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @E_POINTER, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @E_POINTER, align 8
  %13 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %12)
  %14 = load i32, i32* @http_urlW, align 4
  %15 = call i64 @pCreateUri(i32 %14, i32 0, i32 0, i32** %3)
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %20, i64 %21)
  %23 = load i64, i64* %1, align 8
  %24 = call i64 @SUCCEEDED(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %0
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @get_refcnt(i32* %27)
  store i64 %28, i64* %5, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @pCreateIUriBuilder(i32* %29, i32 0, i32 0, i32** %2)
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %1, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %35, i64 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @get_refcnt(i32* %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = add nsw i64 %45, 1
  %47 = icmp eq i64 %44, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %5, align 8
  %50 = add nsw i64 %49, 1
  %51 = load i64, i64* %4, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %50, i64 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %26
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @IUriBuilder_Release(i32* %56)
  br label %58

58:                                               ; preds = %55, %26
  %59 = load i32*, i32** %3, align 8
  %60 = call i64 @get_refcnt(i32* %59)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %65, i64 %66)
  br label %68

68:                                               ; preds = %58, %0
  %69 = load i32*, i32** %3, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @IUri_Release(i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  ret void
}

declare dso_local i64 @pCreateIUriBuilder(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @pCreateUri(i32, i32, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @get_refcnt(i32*) #1

declare dso_local i32 @IUriBuilder_Release(i32*) #1

declare dso_local i32 @IUri_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
