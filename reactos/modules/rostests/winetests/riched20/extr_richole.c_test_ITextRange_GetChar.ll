; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextRange_GetChar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextRange_GetChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ITextRange_GetChar.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ITextRange_GetChar\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"got wrong char: %c\0A\00", align 1
@E_INVALIDARG = common dso_local global i8 0, align 1
@CO_E_RELEASED = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ITextRange_GetChar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ITextRange_GetChar() #0 {
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
  store i32 0, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %9 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @WM_SETTEXT, align 4
  %12 = call i32 @SendMessageA(i32 %10, i32 %11, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextRange_GetChar.test_text1 to i32))
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call signext i8 @ITextDocument_Range(i32* %13, i32 %14, i32 %15, i32** %4)
  store i8 %16, i8* %5, align 1
  %17 = load i8, i8* %5, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @S_OK, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  %22 = zext i1 %21 to i32
  %23 = load i8, i8* %5, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i8 -17, i8* %6, align 1
  %26 = load i32*, i32** %4, align 8
  %27 = call signext i8 @ITextRange_GetChar(i32* %26, i8* %6)
  store i8 %27, i8* %5, align 1
  %28 = load i8, i8* %5, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* @S_OK, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8, i8* %6, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 84
  %38 = zext i1 %37 to i32
  %39 = load i8, i8* %6, align 1
  %40 = sext i8 %39 to i32
  %41 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ITextRange_Release(i32* %42)
  %44 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %45 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @WM_SETTEXT, align 4
  %48 = call i32 @SendMessageA(i32 %46, i32 %47, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextRange_GetChar.test_text1 to i32))
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call signext i8 @ITextDocument_Range(i32* %49, i32 %50, i32 %51, i32** %4)
  store i8 %52, i8* %5, align 1
  %53 = load i8, i8* %5, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @S_OK, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  %58 = zext i1 %57 to i32
  %59 = load i8, i8* %5, align 1
  %60 = sext i8 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %60)
  store i8 -17, i8* %6, align 1
  %62 = load i32*, i32** %4, align 8
  %63 = call signext i8 @ITextRange_GetChar(i32* %62, i8* %6)
  store i8 %63, i8* %5, align 1
  %64 = load i8, i8* %5, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* @S_OK, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i8, i8* %6, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 84
  %74 = zext i1 %73 to i32
  %75 = load i8, i8* %6, align 1
  %76 = sext i8 %75 to i32
  %77 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @ITextRange_Release(i32* %78)
  %80 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  store i32 12, i32* %7, align 4
  store i32 12, i32* %8, align 4
  %81 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* @WM_SETTEXT, align 4
  %84 = call i32 @SendMessageA(i32 %82, i32 %83, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextRange_GetChar.test_text1 to i32))
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call signext i8 @ITextDocument_Range(i32* %85, i32 %86, i32 %87, i32** %4)
  store i8 %88, i8* %5, align 1
  %89 = load i8, i8* %5, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8, i8* @S_OK, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %90, %92
  %94 = zext i1 %93 to i32
  %95 = load i8, i8* %5, align 1
  %96 = sext i8 %95 to i32
  %97 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %96)
  store i8 -17, i8* %6, align 1
  %98 = load i32*, i32** %4, align 8
  %99 = call signext i8 @ITextRange_GetChar(i32* %98, i8* %6)
  store i8 %99, i8* %5, align 1
  %100 = load i8, i8* %5, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* @S_OK, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i8, i8* %6, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 13
  %110 = zext i1 %109 to i32
  %111 = load i8, i8* %6, align 1
  %112 = sext i8 %111 to i32
  %113 = call i32 (i32, i8*, ...) @ok(i32 %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @ITextRange_Release(i32* %114)
  %116 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  store i32 13, i32* %7, align 4
  store i32 13, i32* %8, align 4
  %117 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %118 = load i32, i32* %1, align 4
  %119 = load i32, i32* @WM_SETTEXT, align 4
  %120 = call i32 @SendMessageA(i32 %118, i32 %119, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextRange_GetChar.test_text1 to i32))
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call signext i8 @ITextDocument_Range(i32* %121, i32 %122, i32 %123, i32** %4)
  store i8 %124, i8* %5, align 1
  %125 = load i8, i8* %5, align 1
  %126 = sext i8 %125 to i32
  %127 = load i8, i8* @S_OK, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %126, %128
  %130 = zext i1 %129 to i32
  %131 = load i8, i8* %5, align 1
  %132 = sext i8 %131 to i32
  %133 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %132)
  store i8 -17, i8* %6, align 1
  %134 = load i32*, i32** %4, align 8
  %135 = call signext i8 @ITextRange_GetChar(i32* %134, i8* %6)
  store i8 %135, i8* %5, align 1
  %136 = load i8, i8* %5, align 1
  %137 = sext i8 %136 to i32
  %138 = load i8, i8* @S_OK, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %137, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %143 = load i8, i8* %6, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 13
  %146 = zext i1 %145 to i32
  %147 = load i8, i8* %6, align 1
  %148 = sext i8 %147 to i32
  %149 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @ITextRange_Release(i32* %150)
  %152 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %153 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %154 = load i32, i32* %1, align 4
  %155 = load i32, i32* @WM_SETTEXT, align 4
  %156 = call i32 @SendMessageA(i32 %154, i32 %155, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextRange_GetChar.test_text1 to i32))
  store i32 12, i32* %7, align 4
  store i32 12, i32* %8, align 4
  %157 = load i32*, i32** %3, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call signext i8 @ITextDocument_Range(i32* %157, i32 %158, i32 %159, i32** %4)
  store i8 %160, i8* %5, align 1
  %161 = load i8, i8* %5, align 1
  %162 = sext i8 %161 to i32
  %163 = load i8, i8* @S_OK, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %162, %164
  %166 = zext i1 %165 to i32
  %167 = load i8, i8* %5, align 1
  %168 = sext i8 %167 to i32
  %169 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %168)
  %170 = load i32*, i32** %4, align 8
  %171 = call signext i8 @ITextRange_GetChar(i32* %170, i8* null)
  store i8 %171, i8* %5, align 1
  %172 = load i8, i8* %5, align 1
  %173 = sext i8 %172 to i32
  %174 = load i8, i8* @E_INVALIDARG, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %173, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %179 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %180 = load i32*, i32** %4, align 8
  %181 = call signext i8 @ITextRange_GetChar(i32* %180, i8* null)
  store i8 %181, i8* %5, align 1
  %182 = load i8, i8* %5, align 1
  %183 = sext i8 %182 to i32
  %184 = load i8, i8* @CO_E_RELEASED, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %183, %185
  %187 = zext i1 %186 to i32
  %188 = load i8, i8* %5, align 1
  %189 = sext i8 %188 to i32
  %190 = call i32 (i32, i8*, ...) @ok(i32 %187, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %189)
  %191 = load i32*, i32** %4, align 8
  %192 = call signext i8 @ITextRange_GetChar(i32* %191, i8* %6)
  store i8 %192, i8* %5, align 1
  %193 = load i8, i8* %5, align 1
  %194 = sext i8 %193 to i32
  %195 = load i8, i8* @CO_E_RELEASED, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %194, %196
  %198 = zext i1 %197 to i32
  %199 = load i8, i8* %5, align 1
  %200 = sext i8 %199 to i32
  %201 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %200)
  %202 = load i32*, i32** %4, align 8
  %203 = call i32 @ITextRange_Release(i32* %202)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local signext i8 @ITextDocument_Range(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local signext i8 @ITextRange_GetChar(i32*, i8*) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
