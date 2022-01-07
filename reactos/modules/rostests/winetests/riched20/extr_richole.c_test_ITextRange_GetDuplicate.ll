; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextRange_GetDuplicate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextRange_GetDuplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ITextRange_GetDuplicate.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"ITextDocument_Range fails 0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"ITextRange_GetDuplicate\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"A new pointer should be returned\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"got wrong value: %d\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@CO_E_RELEASED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ITextRange_GetDuplicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ITextRange_GetDuplicate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %11 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @WM_SETTEXT, align 4
  %14 = call i32 @SendMessageA(i32 %12, i32 %13, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextRange_GetDuplicate.test_text1 to i32))
  store i64 0, i64* %7, align 8
  store i64 4, i64* %8, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @ITextDocument_Range(i32* %15, i64 %16, i64 %17, i32** %4)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %6, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @ITextRange_GetDuplicate(i32* %25, i32** %5)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = icmp ne i32* %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @ITextRange_GetStart(i32* %37, i64* %9)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %6, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %9, align 8
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i64 @ITextRange_GetEnd(i32* %51, i64* %10)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %6, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %10, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @ITextRange_Release(i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i64 @ITextRange_GetDuplicate(i32* %67, i32** null)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* @E_INVALIDARG, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %75 = load i32*, i32** %4, align 8
  %76 = call i64 @ITextRange_GetDuplicate(i32* %75, i32** null)
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @CO_E_RELEASED, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %6, align 8
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i64 @ITextRange_GetDuplicate(i32* %83, i32** %5)
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @CO_E_RELEASED, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %6, align 8
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @ITextRange_Release(i32* %91)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i64 @ITextDocument_Range(i32*, i64, i64, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @ITextRange_GetDuplicate(i32*, i32**) #1

declare dso_local i64 @ITextRange_GetStart(i32*, i64*) #1

declare dso_local i64 @ITextRange_GetEnd(i32*, i64*) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
