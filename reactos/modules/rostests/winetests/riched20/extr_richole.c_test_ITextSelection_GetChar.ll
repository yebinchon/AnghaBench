; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextSelection_GetChar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextSelection_GetChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ITextSelection_GetChar.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [24 x i8] c"ITextSelection_GetChar\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"got wrong char: %c\0A\00", align 1
@E_INVALIDARG = common dso_local global i8 0, align 1
@CO_E_RELEASED = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ITextSelection_GetChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ITextSelection_GetChar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %9 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %3, i32** %4)
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @WM_SETTEXT, align 4
  %12 = call i32 @SendMessageA(i32 %10, i32 %11, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextSelection_GetChar.test_text1 to i32))
  store i32 0, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @EM_SETSEL, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @SendMessageA(i32 %13, i32 %14, i32 %15, i32 %16)
  store i8 -17, i8* %6, align 1
  %18 = load i32*, i32** %4, align 8
  %19 = call signext i8 @ITextSelection_GetChar(i32* %18, i8* %6)
  store i8 %19, i8* %5, align 1
  %20 = load i8, i8* %5, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* @S_OK, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i8, i8* %6, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 84
  %30 = zext i1 %29 to i32
  %31 = load i8, i8* %6, align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @EM_SETSEL, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @SendMessageA(i32 %34, i32 %35, i32 %36, i32 %37)
  store i8 -17, i8* %6, align 1
  %39 = load i32*, i32** %4, align 8
  %40 = call signext i8 @ITextSelection_GetChar(i32* %39, i8* %6)
  store i8 %40, i8* %5, align 1
  %41 = load i8, i8* %5, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @S_OK, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %42, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %48 = load i8, i8* %6, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 84
  %51 = zext i1 %50 to i32
  %52 = load i8, i8* %6, align 1
  %53 = sext i8 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 12, i32* %7, align 4
  store i32 12, i32* %8, align 4
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @EM_SETSEL, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @SendMessageA(i32 %55, i32 %56, i32 %57, i32 %58)
  store i8 -17, i8* %6, align 1
  %60 = load i32*, i32** %4, align 8
  %61 = call signext i8 @ITextSelection_GetChar(i32* %60, i8* %6)
  store i8 %61, i8* %5, align 1
  %62 = load i8, i8* %5, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @S_OK, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %69 = load i8, i8* %6, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 13
  %72 = zext i1 %71 to i32
  %73 = load i8, i8* %6, align 1
  %74 = sext i8 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i32 13, i32* %7, align 4
  store i32 13, i32* %8, align 4
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* @EM_SETSEL, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @SendMessageA(i32 %76, i32 %77, i32 %78, i32 %79)
  store i8 -17, i8* %6, align 1
  %81 = load i32*, i32** %4, align 8
  %82 = call signext i8 @ITextSelection_GetChar(i32* %81, i8* %6)
  store i8 %82, i8* %5, align 1
  %83 = load i8, i8* %5, align 1
  %84 = sext i8 %83 to i32
  %85 = load i8, i8* @S_OK, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %84, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %90 = load i8, i8* %6, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 13
  %93 = zext i1 %92 to i32
  %94 = load i8, i8* %6, align 1
  %95 = sext i8 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %4, align 8
  %98 = call signext i8 @ITextSelection_GetChar(i32* %97, i8* null)
  store i8 %98, i8* %5, align 1
  %99 = load i8, i8* %5, align 1
  %100 = sext i8 %99 to i32
  %101 = load i8, i8* @E_INVALIDARG, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %100, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %106 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %107 = load i32*, i32** %4, align 8
  %108 = call signext i8 @ITextSelection_GetChar(i32* %107, i8* null)
  store i8 %108, i8* %5, align 1
  %109 = load i8, i8* %5, align 1
  %110 = sext i8 %109 to i32
  %111 = load i8, i8* @CO_E_RELEASED, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %110, %112
  %114 = zext i1 %113 to i32
  %115 = load i8, i8* %5, align 1
  %116 = sext i8 %115 to i32
  %117 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** %4, align 8
  %119 = call signext i8 @ITextSelection_GetChar(i32* %118, i8* %6)
  store i8 %119, i8* %5, align 1
  %120 = load i8, i8* %5, align 1
  %121 = sext i8 %120 to i32
  %122 = load i8, i8* @CO_E_RELEASED, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  %125 = zext i1 %124 to i32
  %126 = load i8, i8* %5, align 1
  %127 = sext i8 %126 to i32
  %128 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @ITextSelection_Release(i32* %129)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local signext i8 @ITextSelection_GetChar(i32*, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @ITextSelection_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
