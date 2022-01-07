; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_Expand.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_Expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_Expand.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@tomStory = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@CO_E_RELEASED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Expand() #0 {
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
  %11 = call i32 @SendMessageA(i32 %9, i32 %10, i32 0, i32 ptrtoint ([13 x i8]* @test_Expand.test_text1 to i32))
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
  %24 = load i32, i32* @tomStory, align 4
  %25 = call i32 @ITextRange_Expand(i32* %23, i32 %24, i32* null)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @S_OK, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @CHECK_RANGE(i32* %32, i32 0, i32 13)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @tomStory, align 4
  %36 = call i32 @ITextSelection_Expand(i32* %34, i32 %35, i32* null)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @S_OK, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @CHECK_SELECTION(i32* %43, i32 0, i32 13)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @RESET_RANGE(i32* %45, i32 1, i32 2)
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @RESET_SELECTION(i32* %47, i32 1, i32 2)
  store i32 0, i32* %5, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @tomStory, align 4
  %51 = call i32 @ITextRange_Expand(i32* %49, i32 %50, i32* %5)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @S_OK, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 12
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @CHECK_RANGE(i32* %63, i32 0, i32 13)
  store i32 0, i32* %5, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @tomStory, align 4
  %67 = call i32 @ITextSelection_Expand(i32* %65, i32 %66, i32* %5)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @S_OK, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 12
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @CHECK_SELECTION(i32* %79, i32 0, i32 13)
  %81 = call i32 @release_interfaces(i32* %7, i32** %1, i32** %2, i32* null)
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* @tomStory, align 4
  %84 = call i32 @ITextRange_Expand(i32* %82, i32 %83, i32* null)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @CO_E_RELEASED, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %4, align 8
  %92 = load i32, i32* @tomStory, align 4
  %93 = call i32 @ITextRange_Expand(i32* %91, i32 %92, i32* %5)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @CO_E_RELEASED, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* @tomStory, align 4
  %102 = call i32 @ITextSelection_Expand(i32* %100, i32 %101, i32* null)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @CO_E_RELEASED, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* @tomStory, align 4
  %111 = call i32 @ITextSelection_Expand(i32* %109, i32 %110, i32* %5)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @CO_E_RELEASED, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @ITextSelection_Release(i32* %118)
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @ITextRange_Release(i32* %120)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ITextDocument_Range(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @ITextRange_Expand(i32*, i32, i32*) #1

declare dso_local i32 @CHECK_RANGE(i32*, i32, i32) #1

declare dso_local i32 @ITextSelection_Expand(i32*, i32, i32*) #1

declare dso_local i32 @CHECK_SELECTION(i32*, i32, i32) #1

declare dso_local i32 @RESET_RANGE(i32*, i32, i32) #1

declare dso_local i32 @RESET_SELECTION(i32*, i32, i32) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @ITextSelection_Release(i32*) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
