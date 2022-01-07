; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_SetText.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_SetText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SetText.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@test_SetText.textW = internal constant [10 x i8] c"abcdefghi\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@CO_E_RELEASED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetText() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %9 = call i32 @create_interfaces(i32* %7, i32** %1, i32** %2, i32* null)
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @WM_SETTEXT, align 4
  %12 = call i32 @SendMessageA(i32 %10, i32 %11, i32 0, i32 ptrtoint ([13 x i8]* @test_SetText.test_text1 to i32))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @ITextDocument_Range(i32* %13, i32 0, i32 4, i32** %3)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @S_OK, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @ITextDocument_Range(i32* %21, i32 0, i32 4, i32** %4)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @S_OK, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 1, i32* %5, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @ITextRange_GetStart(i32* %29, i32* %5)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @S_OK, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32 0, i32* %5, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ITextRange_GetEnd(i32* %42, i32* %5)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @S_OK, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 4
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @ITextRange_SetText(i32* %55, i32* null)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @S_OK, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 1, i32* %5, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @ITextRange_GetEnd(i32* %63, i32* %5)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @S_OK, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = call i32* @SysAllocString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_SetText.textW, i64 0, i64 0))
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %3, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @ITextRange_SetText(i32* %77, i32* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @S_OK, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @SysFreeString(i32* %86)
  store i32 1, i32* %5, align 4
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @ITextRange_GetStart(i32* %88, i32* %5)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @S_OK, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  store i32 0, i32* %5, align 4
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @ITextRange_GetEnd(i32* %101, i32* %5)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @S_OK, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = icmp eq i32 %109, 9
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  store i32 1, i32* %5, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @ITextRange_GetStart(i32* %114, i32* %5)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @S_OK, align 4
  %118 = icmp eq i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %5, align 4
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @ok(i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  store i32 0, i32* %5, align 4
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @ITextRange_GetEnd(i32* %127, i32* %5)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @S_OK, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @ok(i32 %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %5, align 4
  %136 = icmp eq i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @ok(i32 %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  %140 = call i32* @SysAllocStringLen(i32* null, i32 0)
  store i32* %140, i32** %8, align 8
  %141 = load i32*, i32** %3, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @ITextRange_SetText(i32* %141, i32* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @S_OK, align 4
  %146 = icmp eq i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @ok(i32 %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %148)
  store i32 1, i32* %5, align 4
  %150 = load i32*, i32** %3, align 8
  %151 = call i32 @ITextRange_GetEnd(i32* %150, i32* %5)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @S_OK, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @ok(i32 %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %5, align 4
  %159 = icmp eq i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @ok(i32 %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  %163 = load i32*, i32** %8, align 8
  %164 = call i32 @SysFreeString(i32* %163)
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 @ITextRange_Release(i32* %165)
  %167 = call i32 @release_interfaces(i32* %7, i32** %1, i32** %2, i32* null)
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 @ITextRange_SetText(i32* %168, i32* null)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @CO_E_RELEASED, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @ok(i32 %173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %174)
  %176 = call i32* @SysAllocStringLen(i32* null, i32 0)
  store i32* %176, i32** %8, align 8
  %177 = load i32*, i32** %3, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = call i32 @ITextRange_SetText(i32* %177, i32* %178)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @CO_E_RELEASED, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @ok(i32 %183, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %184)
  %186 = load i32*, i32** %8, align 8
  %187 = call i32 @SysFreeString(i32* %186)
  %188 = load i32*, i32** %3, align 8
  %189 = call i32 @ITextRange_Release(i32* %188)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ITextDocument_Range(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @ITextRange_GetStart(i32*, i32*) #1

declare dso_local i32 @ITextRange_GetEnd(i32*, i32*) #1

declare dso_local i32 @ITextRange_SetText(i32*, i32*) #1

declare dso_local i32* @SysAllocString(i8*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32* @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
