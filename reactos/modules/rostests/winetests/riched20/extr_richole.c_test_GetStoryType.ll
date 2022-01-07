; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_GetStoryType.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_GetStoryType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_GetStoryType.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@tomTextFrameStory = common dso_local global i32 0, align 4
@tomUnknownStory = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@CO_E_RELEASED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetStoryType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetStoryType() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %8 = call i32 @create_interfaces(i32* %7, i32** %1, i32** %2, i32** %3)
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @WM_SETTEXT, align 4
  %11 = call i32 @SendMessageA(i32 %9, i32 %10, i32 0, i32 ptrtoint ([13 x i8]* @test_GetStoryType.test_text1 to i32))
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @EM_SETSEL, align 4
  %14 = call i32 @SendMessageA(i32 %12, i32 %13, i32 1, i32 2)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @ITextDocument_Range(i32* %15, i32 0, i32 4, i32** %4)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @S_OK, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @ITextRange_GetStoryType(i32* %23, i32* null)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @E_INVALIDARG, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @tomTextFrameStory, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ITextRange_GetStoryType(i32* %32, i32* %5)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @S_OK, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @tomUnknownStory, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @ITextSelection_GetStoryType(i32* %46, i32* null)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @E_INVALIDARG, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @tomTextFrameStory, align 4
  store i32 %54, i32* %5, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @ITextSelection_GetStoryType(i32* %55, i32* %5)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @S_OK, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @tomUnknownStory, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = call i32 @release_interfaces(i32* %7, i32** %1, i32** %2, i32* null)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @ITextRange_GetStoryType(i32* %70, i32* null)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @CO_E_RELEASED, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %76)
  store i32 123, i32* %5, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @ITextRange_GetStoryType(i32* %78, i32* %5)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @CO_E_RELEASED, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, 123
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @ITextSelection_GetStoryType(i32* %91, i32* null)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @CO_E_RELEASED, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %97)
  store i32 123, i32* %5, align 4
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @ITextSelection_GetStoryType(i32* %99, i32* %5)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @CO_E_RELEASED, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %107, 123
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @ITextRange_Release(i32* %112)
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @ITextSelection_Release(i32* %114)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ITextDocument_Range(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @ITextRange_GetStoryType(i32*, i32*) #1

declare dso_local i32 @ITextSelection_GetStoryType(i32*, i32*) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

declare dso_local i32 @ITextSelection_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
