; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextRange_GetFont.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextRange_GetFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ITextRange_GetFont.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"got wrong ref count: %d\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"ITextRange_GetFont\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"A new pointer should be return\0A\00", align 1
@CO_E_RELEASED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"ITextFont after ITextDocument destroyed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ITextRange_GetFont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ITextRange_GetFont() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %12 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @WM_SETTEXT, align 4
  %15 = call i32 @SendMessageA(i32 %13, i32 %14, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextRange_GetFont.test_text1 to i32))
  store i32 4, i32* %8, align 4
  store i32 4, i32* %9, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @ITextDocument_Range(i32* %16, i32 %17, i32 %18, i32** %4)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @get_refcount(i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %10, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @ITextRange_GetFont(i32* %27, i32** %5)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @get_refcount(i32* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @get_refcount(i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @ITextRange_GetFont(i32* %48, i32** %6)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ne i32* %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @get_refcount(i32* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @ITextFont_Release(i32* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @get_refcount(i32* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 2
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %10, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @ITextRange_Release(i32* %76)
  %78 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %79 = load i32*, i32** %5, align 8
  %80 = call i64 @ITextFont_GetOutline(i32* %79, i32* %11)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @CO_E_RELEASED, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @ITextFont_Release(i32* %86)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ITextDocument_Range(i32*, i32, i32, i32**) #1

declare dso_local i32 @get_refcount(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @ITextRange_GetFont(i32*, i32**) #1

declare dso_local i32 @ITextFont_Release(i32*) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i64 @ITextFont_GetOutline(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
