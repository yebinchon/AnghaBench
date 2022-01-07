; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextSelection_GetDuplicate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextSelection_GetDuplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ITextSelection_GetDuplicate.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"got %p, %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@IID_ITextSelection = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@CO_E_RELEASED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ITextSelection_GetDuplicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ITextSelection_GetDuplicate() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %11 = call i32 @create_interfaces(i32* %10, i32** %1, i32** %2, i32** %3)
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @WM_SETTEXT, align 4
  %14 = call i32 @SendMessageA(i32 %12, i32 %13, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextSelection_GetDuplicate.test_text1 to i32))
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @EM_SETSEL, align 4
  %17 = call i32 @SendMessageA(i32 %15, i32 %16, i32 1, i32 2)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @ITextSelection_GetDuplicate(i32* %18, i32** null)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @E_INVALIDARG, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %9, align 4
  %25 = call i32 (i32, i8*, i32, ...) @ok(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @EXPECT_REF(i32* %26, i32 2)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @ITextSelection_GetDuplicate(i32* %28, i32** %5)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @S_OK, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i32, i8*, i32, ...) @ok(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @ITextSelection_GetDuplicate(i32* %36, i32** %6)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @S_OK, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i32, i8*, i32, ...) @ok(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32*, i32** %5, align 8
  %49 = ptrtoint i32* %48 to i32
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 (i32, i8*, i32, ...) @ok(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @EXPECT_REF(i32* %52, i32 2)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @EXPECT_REF(i32* %54, i32 1)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @EXPECT_REF(i32* %56, i32 1)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @ITextRange_Release(i32* %58)
  store i32 0, i32* %8, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @ITextRange_GetStart(i32* %60, i32* %8)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @S_OK, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %9, align 4
  %67 = call i32 (i32, i8*, i32, ...) @ok(i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 1
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i32, i8*, i32, ...) @ok(i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  store i32 0, i32* %8, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @ITextRange_GetEnd(i32* %73, i32* %8)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @S_OK, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %9, align 4
  %80 = call i32 (i32, i8*, i32, ...) @ok(i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 2
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @EM_SETSEL, align 4
  %88 = call i32 @SendMessageA(i32 %86, i32 %87, i32 2, i32 3)
  store i32 0, i32* %8, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @ITextRange_GetStart(i32* %89, i32* %8)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @S_OK, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (i32, i8*, i32, ...) @ok(i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, 1
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i32, i8*, i32, ...) @ok(i32 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  store i32 0, i32* %8, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @ITextRange_GetEnd(i32* %102, i32* %8)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @S_OK, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (i32, i8*, i32, ...) @ok(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = icmp eq i32 %110, 2
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i32, i8*, i32, ...) @ok(i32 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** %5, align 8
  %116 = bitcast i32** %4 to i8**
  %117 = call i32 @ITextRange_QueryInterface(i32* %115, i32* @IID_ITextSelection, i8** %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @E_NOINTERFACE, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %9, align 4
  %123 = call i32 (i32, i8*, i32, ...) @ok(i32 %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = call i32 @release_interfaces(i32* %10, i32** %1, i32** %2, i32* null)
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @ITextSelection_GetDuplicate(i32* %125, i32** null)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @CO_E_RELEASED, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (i32, i8*, i32, ...) @ok(i32 %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @ITextSelection_GetDuplicate(i32* %133, i32** %5)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @CO_E_RELEASED, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %9, align 4
  %140 = call i32 (i32, i8*, i32, ...) @ok(i32 %138, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %139)
  %141 = load i32*, i32** %5, align 8
  %142 = call i32 @ITextRange_GetFont(i32* %141, i32** %7)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @CO_E_RELEASED, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %9, align 4
  %148 = call i32 (i32, i8*, i32, ...) @ok(i32 %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %147)
  %149 = load i32*, i32** %3, align 8
  %150 = call i32 @ITextSelection_Release(i32* %149)
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @ITextRange_Release(i32* %151)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ITextSelection_GetDuplicate(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @EXPECT_REF(i32*, i32) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

declare dso_local i32 @ITextRange_GetStart(i32*, i32*) #1

declare dso_local i32 @ITextRange_GetEnd(i32*, i32*) #1

declare dso_local i32 @ITextRange_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @ITextRange_GetFont(i32*, i32**) #1

declare dso_local i32 @ITextSelection_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
