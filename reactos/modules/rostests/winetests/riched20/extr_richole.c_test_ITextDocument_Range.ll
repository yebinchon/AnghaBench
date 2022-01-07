; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextDocument_Range.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextDocument_Range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ITextDocument_Range.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ITextDocument_Range fails 0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"A new pointer should be returned\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"ITextDocument_Range should fail 0x%x.\0A\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@CO_E_RELEASED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"ITextRange after ITextDocument destroyed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ITextDocument_Range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ITextDocument_Range() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %8 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @ITextDocument_Range(i32* %9, i32 0, i32 0, i32** %4)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @S_OK, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @EXPECT_REF(i32* %17, i32 1)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @ITextDocument_Range(i32* %19, i32 0, i32 0, i32** %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @S_OK, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @ITextRange_Release(i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @ITextDocument_Range(i32* %34, i32 0, i32 0, i32** null)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @E_INVALIDARG, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @WM_SETTEXT, align 4
  %44 = call i32 @SendMessageA(i32 %42, i32 %43, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextDocument_Range.test_text1 to i32))
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @ITextDocument_Range(i32* %45, i32 8, i32 30, i32** %5)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @S_OK, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @ITextRange_GetStart(i32* %53, i32* %7)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @S_OK, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %6, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 8
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @ITextRange_GetEnd(i32* %66, i32* %7)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @S_OK, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 13
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @ITextRange_Release(i32* %79)
  %81 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @ITextRange_CanEdit(i32* %82, i32* null)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @CO_E_RELEASED, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @ITextRange_Release(i32* %89)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @ITextDocument_Range(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @EXPECT_REF(i32*, i32) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ITextRange_GetStart(i32*, i32*) #1

declare dso_local i32 @ITextRange_GetEnd(i32*, i32*) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @ITextRange_CanEdit(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
