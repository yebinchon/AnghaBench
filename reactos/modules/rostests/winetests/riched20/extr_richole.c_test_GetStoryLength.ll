; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_GetStoryLength.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_GetStoryLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_GetStoryLength.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CO_E_RELEASED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetStoryLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetStoryLength() #0 {
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
  %11 = call i32 @SendMessageA(i32 %9, i32 %10, i32 0, i32 ptrtoint ([13 x i8]* @test_GetStoryLength.test_text1 to i32))
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
  %24 = call i32 @ITextRange_GetStoryLength(i32* %23, i32* null)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @E_INVALIDARG, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %5, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ITextRange_GetStoryLength(i32* %31, i32* %5)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @S_OK, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 13
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @ITextSelection_GetStoryLength(i32* %44, i32* null)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @E_INVALIDARG, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i32 0, i32* %5, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @ITextSelection_GetStoryLength(i32* %52, i32* %5)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @S_OK, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 13
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @WM_SETTEXT, align 4
  %67 = call i32 @SendMessageA(i32 %65, i32 %66, i32 0, i32 ptrtoint ([1 x i8]* @.str.2 to i32))
  store i32 0, i32* %5, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @ITextRange_GetStoryLength(i32* %68, i32* %5)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @S_OK, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32 0, i32* %5, align 4
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @ITextSelection_GetStoryLength(i32* %81, i32* %5)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @S_OK, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 1
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = call i32 @release_interfaces(i32* %7, i32** %1, i32** %2, i32* null)
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @ITextRange_GetStoryLength(i32* %95, i32* null)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @CO_E_RELEASED, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %101)
  store i32 100, i32* %5, align 4
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @ITextRange_GetStoryLength(i32* %103, i32* %5)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @CO_E_RELEASED, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = icmp eq i32 %111, 100
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i32*, i32** %3, align 8
  %117 = call i32 @ITextSelection_GetStoryLength(i32* %116, i32* null)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @CO_E_RELEASED, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @ok(i32 %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %122)
  store i32 100, i32* %5, align 4
  %124 = load i32*, i32** %3, align 8
  %125 = call i32 @ITextSelection_GetStoryLength(i32* %124, i32* %5)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @CO_E_RELEASED, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %5, align 4
  %133 = icmp eq i32 %132, 100
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @ok(i32 %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load i32*, i32** %3, align 8
  %138 = call i32 @ITextSelection_Release(i32* %137)
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @ITextRange_Release(i32* %139)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ITextDocument_Range(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @ITextRange_GetStoryLength(i32*, i32*) #1

declare dso_local i32 @ITextSelection_GetStoryLength(i32*, i32*) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @ITextSelection_Release(i32*) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
