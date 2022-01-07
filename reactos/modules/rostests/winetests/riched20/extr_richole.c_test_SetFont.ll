; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_SetFont.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_SetFont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SetFont.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@tomTrue = common dso_local global i64 0, align 8
@tomFalse = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@CO_E_RELEASED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetFont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetFont() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %11 = call i32 @create_interfaces(i32* %10, i32** %1, i32** %2, i32** %3)
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @WM_SETTEXT, align 4
  %14 = call i32 @SendMessageA(i32 %12, i32 %13, i32 0, i32 ptrtoint ([13 x i8]* @test_SetFont.test_text1 to i32))
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @EM_SETSEL, align 4
  %17 = call i32 @SendMessageA(i32 %15, i32 %16, i32 1, i32 2)
  %18 = load i32*, i32** %2, align 8
  %19 = call i64 @ITextDocument_Range(i32* %18, i32 0, i32 4, i32** %4)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i64 @ITextDocument_Range(i32* %26, i32 5, i32 2, i32** %5)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @EXPECT_REF(i32* %34, i32 1)
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @ITextRange_GetFont(i32* %36, i32** %6)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @EXPECT_REF(i32* %44, i32 2)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @EXPECT_REF(i32* %46, i32 1)
  %48 = load i32*, i32** %5, align 8
  %49 = call i64 @ITextRange_GetFont(i32* %48, i32** %7)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @EXPECT_REF(i32* %56, i32 2)
  %58 = load i32*, i32** %4, align 8
  %59 = call i64 @ITextRange_SetFont(i32* %58, i32* null)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @E_INVALIDARG, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @EXPECT_REF(i32* %66, i32 2)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call i64 @ITextRange_SetFont(i32* %68, i32* %69)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @EXPECT_REF(i32* %77, i32 2)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @EXPECT_REF(i32* %79, i32 2)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @EXPECT_REF(i32* %81, i32 2)
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i64 @ITextRange_SetFont(i32* %83, i32* %84)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @S_OK, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @EXPECT_REF(i32* %92, i32 2)
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @EXPECT_REF(i32* %94, i32 2)
  %96 = load i64, i64* @tomTrue, align 8
  store i64 %96, i64* %8, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = call i64 @ITextFont_GetItalic(i32* %97, i64* %8)
  store i64 %98, i64* %9, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* @S_OK, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %103)
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @tomFalse, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @ok(i32 %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  %111 = load i32*, i32** %7, align 8
  %112 = load i64, i64* @tomTrue, align 8
  %113 = call i64 @ITextFont_SetItalic(i32* %111, i64 %112)
  store i64 %113, i64* %9, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* @S_OK, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %118)
  %120 = load i32*, i32** %4, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i64 @ITextRange_SetFont(i32* %120, i32* %121)
  store i64 %122, i64* %9, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* @S_OK, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %9, align 8
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %127)
  %129 = load i64, i64* @tomFalse, align 8
  store i64 %129, i64* %8, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = call i64 @ITextFont_GetItalic(i32* %130, i64* %8)
  store i64 %131, i64* %9, align 8
  %132 = load i64, i64* %9, align 8
  %133 = load i64, i64* @S_OK, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %136)
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* @tomTrue, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @ok(i32 %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %142)
  %144 = call i32 @release_interfaces(i32* %10, i32** %1, i32** %2, i32* null)
  %145 = load i32*, i32** %4, align 8
  %146 = call i64 @ITextRange_SetFont(i32* %145, i32* null)
  store i64 %146, i64* %9, align 8
  %147 = load i64, i64* %9, align 8
  %148 = load i64, i64* @E_INVALIDARG, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i64, i64* %9, align 8
  %152 = call i32 @ok(i32 %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %151)
  %153 = load i32*, i32** %4, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = call i64 @ITextRange_SetFont(i32* %153, i32* %154)
  store i64 %155, i64* %9, align 8
  %156 = load i64, i64* %9, align 8
  %157 = load i64, i64* @CO_E_RELEASED, align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i64, i64* %9, align 8
  %161 = call i32 @ok(i32 %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %160)
  %162 = load i32*, i32** %3, align 8
  %163 = call i64 @ITextSelection_SetFont(i32* %162, i32* null)
  store i64 %163, i64* %9, align 8
  %164 = load i64, i64* %9, align 8
  %165 = load i64, i64* @E_INVALIDARG, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i64, i64* %9, align 8
  %169 = call i32 @ok(i32 %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %168)
  %170 = load i32*, i32** %3, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = call i64 @ITextSelection_SetFont(i32* %170, i32* %171)
  store i64 %172, i64* %9, align 8
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* @CO_E_RELEASED, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = load i64, i64* %9, align 8
  %178 = call i32 @ok(i32 %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %177)
  %179 = load i32*, i32** %6, align 8
  %180 = call i32 @ITextFont_Release(i32* %179)
  %181 = load i32*, i32** %7, align 8
  %182 = call i32 @ITextFont_Release(i32* %181)
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @ITextRange_Release(i32* %183)
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 @ITextRange_Release(i32* %185)
  %187 = load i32*, i32** %3, align 8
  %188 = call i32 @ITextSelection_Release(i32* %187)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i64 @ITextDocument_Range(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @EXPECT_REF(i32*, i32) #1

declare dso_local i64 @ITextRange_GetFont(i32*, i32**) #1

declare dso_local i64 @ITextRange_SetFont(i32*, i32*) #1

declare dso_local i64 @ITextFont_GetItalic(i32*, i64*) #1

declare dso_local i64 @ITextFont_SetItalic(i32*, i64) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i64 @ITextSelection_SetFont(i32*, i32*) #1

declare dso_local i32 @ITextFont_Release(i32*) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

declare dso_local i32 @ITextSelection_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
