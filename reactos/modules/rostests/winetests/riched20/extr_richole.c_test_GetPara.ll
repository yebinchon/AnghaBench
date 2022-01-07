; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_GetPara.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_GetPara.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_GetPara.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"got %p, %p\0A\00", align 1
@CO_E_RELEASED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetPara to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetPara() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %9 = call i32 @create_interfaces(i32* %8, i32** %1, i32** %2, i32** %3)
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @WM_SETTEXT, align 4
  %12 = call i32 @SendMessageA(i32 %10, i32 %11, i32 0, i32 ptrtoint ([13 x i8]* @test_GetPara.test_text1 to i32))
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @EXPECT_REF(i32* %13, i32 3)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @EXPECT_REF(i32* %15, i32 3)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @ITextDocument_Range(i32* %17, i32 0, i32 4, i32** %4)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @S_OK, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i32, i8*, i32, ...) @ok(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @EXPECT_REF(i32* %25, i32 3)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @EXPECT_REF(i32* %27, i32 3)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @EXPECT_REF(i32* %29, i32 1)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ITextRange_GetPara(i32* %31, i32** null)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @E_INVALIDARG, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32, i8*, i32, ...) @ok(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @ITextRange_GetPara(i32* %39, i32** %5)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @S_OK, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i32, i8*, i32, ...) @ok(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @EXPECT_REF(i32* %47, i32 3)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @EXPECT_REF(i32* %49, i32 3)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @EXPECT_REF(i32* %51, i32 2)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @EXPECT_REF(i32* %53, i32 1)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @ITextRange_GetPara(i32* %55, i32** %6)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @S_OK, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i32, i8*, i32, ...) @ok(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = icmp ne i32* %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %5, align 8
  %68 = ptrtoint i32* %67 to i32
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 (i32, i8*, i32, ...) @ok(i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32* %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @EXPECT_REF(i32* %71, i32 3)
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @EXPECT_REF(i32* %73, i32 3)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @EXPECT_REF(i32* %75, i32 3)
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @EXPECT_REF(i32* %77, i32 1)
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @EXPECT_REF(i32* %79, i32 1)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @ITextPara_Release(i32* %81)
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @ITextPara_Release(i32* %83)
  %85 = load i32*, i32** %1, align 8
  %86 = call i32 @EXPECT_REF(i32* %85, i32 3)
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 @EXPECT_REF(i32* %87, i32 3)
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @EXPECT_REF(i32* %89, i32 2)
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @ITextSelection_GetPara(i32* %91, i32** %5)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @S_OK, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i32, i8*, i32, ...) @ok(i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %1, align 8
  %100 = call i32 @EXPECT_REF(i32* %99, i32 3)
  %101 = load i32*, i32** %2, align 8
  %102 = call i32 @EXPECT_REF(i32* %101, i32 3)
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @EXPECT_REF(i32* %103, i32 3)
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @EXPECT_REF(i32* %105, i32 1)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @ITextSelection_GetPara(i32* %107, i32** %6)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @S_OK, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (i32, i8*, i32, ...) @ok(i32 %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** %5, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = icmp ne i32* %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i32*, i32** %5, align 8
  %120 = ptrtoint i32* %119 to i32
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 (i32, i8*, i32, ...) @ok(i32 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32* %121)
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @ITextPara_Release(i32* %123)
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @ITextPara_Release(i32* %125)
  %127 = call i32 @release_interfaces(i32* %8, i32** %1, i32** %2, i32* null)
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @ITextRange_GetPara(i32* %128, i32** null)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @CO_E_RELEASED, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %7, align 4
  %135 = call i32 (i32, i8*, i32, ...) @ok(i32 %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %134)
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @ITextRange_GetPara(i32* %136, i32** %5)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @CO_E_RELEASED, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %7, align 4
  %143 = call i32 (i32, i8*, i32, ...) @ok(i32 %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @ITextSelection_GetPara(i32* %144, i32** null)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @CO_E_RELEASED, align 4
  %148 = icmp eq i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i32, i32* %7, align 4
  %151 = call i32 (i32, i8*, i32, ...) @ok(i32 %149, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %150)
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @ITextSelection_GetPara(i32* %152, i32** %5)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @CO_E_RELEASED, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %7, align 4
  %159 = call i32 (i32, i8*, i32, ...) @ok(i32 %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %158)
  %160 = load i32*, i32** %3, align 8
  %161 = call i32 @ITextSelection_Release(i32* %160)
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @ITextRange_Release(i32* %162)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @EXPECT_REF(i32*, i32) #1

declare dso_local i32 @ITextDocument_Range(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @ITextRange_GetPara(i32*, i32**) #1

declare dso_local i32 @ITextPara_Release(i32*) #1

declare dso_local i32 @ITextSelection_GetPara(i32*, i32**) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @ITextSelection_Release(i32*) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
