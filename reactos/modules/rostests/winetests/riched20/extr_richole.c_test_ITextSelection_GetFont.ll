; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextSelection_GetFont.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextSelection_GetFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ITextSelection_GetFont.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"got wrong ref count: %d\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"ITextSelection_GetFont\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"A new pointer should be return\0A\00", align 1
@CO_E_RELEASED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"ITextFont after ITextDocument destroyed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ITextSelection_GetFont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ITextSelection_GetFont() #0 {
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
  %12 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %3, i32** %4)
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @WM_SETTEXT, align 4
  %15 = call i32 @SendMessageA(i32 %13, i32 %14, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextSelection_GetFont.test_text1 to i32))
  store i32 4, i32* %8, align 4
  store i32 4, i32* %9, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @EM_SETSEL, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @SendMessageA(i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @get_refcount(i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 2
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %10, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @ITextSelection_GetFont(i32* %28, i32** %5)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @get_refcount(i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @get_refcount(i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 3
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %10, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = call i64 @ITextSelection_GetFont(i32* %49, i32** %6)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = icmp ne i32* %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @get_refcount(i32* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @ITextFont_Release(i32* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @get_refcount(i32* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, 3
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32** %4)
  %78 = load i32*, i32** %5, align 8
  %79 = call i64 @ITextFont_GetOutline(i32* %78, i32* %11)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @CO_E_RELEASED, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @ITextFont_Release(i32* %85)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @get_refcount(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @ITextSelection_GetFont(i32*, i32**) #1

declare dso_local i32 @ITextFont_Release(i32*) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32**) #1

declare dso_local i64 @ITextFont_GetOutline(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
