; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextSelection_Collapse.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextSelection_Collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ITextSelection_Collapse.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@tomTrue = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ITextSelection_Collapse\0A\00", align 1
@EM_GETSEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"got wrong start value: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"got wrong end value: %d\0A\00", align 1
@tomStart = common dso_local global i32 0, align 4
@tomFalse = common dso_local global i32 0, align 4
@tomEnd = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@CO_E_RELEASED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@tomUndefined = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ITextSelection_Collapse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ITextSelection_Collapse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %10 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %3, i32** %4)
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @WM_SETTEXT, align 4
  %13 = call i32 @SendMessageA(i32 %11, i32 %12, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextSelection_Collapse.test_text1 to i32))
  store i32 4, i32* %6, align 4
  store i32 8, i32* %7, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @EM_SETSEL, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @SendMessageA(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @tomTrue, align 4
  %21 = call i32 @ITextSelection_Collapse(i32* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @S_OK, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @EM_GETSEL, align 4
  %29 = ptrtoint i32* %8 to i32
  %30 = ptrtoint i32* %9 to i32
  %31 = call i32 @SendMessageA(i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 4
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 4
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @EM_SETSEL, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @SendMessageA(i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @tomStart, align 4
  %49 = call i32 @ITextSelection_Collapse(i32* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @S_OK, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @EM_GETSEL, align 4
  %57 = ptrtoint i32* %8 to i32
  %58 = ptrtoint i32* %9 to i32
  %59 = call i32 @SendMessageA(i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 4
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 4
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* @EM_SETSEL, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @SendMessageA(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @tomFalse, align 4
  %77 = call i32 @ITextSelection_Collapse(i32* %75, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @S_OK, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @EM_GETSEL, align 4
  %85 = ptrtoint i32* %8 to i32
  %86 = ptrtoint i32* %9 to i32
  %87 = call i32 @SendMessageA(i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 8
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 8
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %1, align 4
  %99 = load i32, i32* @EM_SETSEL, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @SendMessageA(i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @tomEnd, align 4
  %105 = call i32 @ITextSelection_Collapse(i32* %103, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @S_OK, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* %1, align 4
  %112 = load i32, i32* @EM_GETSEL, align 4
  %113 = ptrtoint i32* %8 to i32
  %114 = ptrtoint i32* %9 to i32
  %115 = call i32 @SendMessageA(i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 8
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 8
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %9, align 4
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %1, align 4
  %127 = load i32, i32* @EM_SETSEL, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @SendMessageA(i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @ITextSelection_Collapse(i32* %131, i32 256)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @S_OK, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %138 = load i32, i32* %1, align 4
  %139 = load i32, i32* @EM_GETSEL, align 4
  %140 = ptrtoint i32* %8 to i32
  %141 = ptrtoint i32* %9 to i32
  %142 = call i32 @SendMessageA(i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %143, 4
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %8, align 4
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %9, align 4
  %149 = icmp eq i32 %148, 4
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %9, align 4
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  store i32 6, i32* %6, align 4
  store i32 6, i32* %7, align 4
  %153 = load i32, i32* %1, align 4
  %154 = load i32, i32* @EM_SETSEL, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @SendMessageA(i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* @tomEnd, align 4
  %160 = call i32 @ITextSelection_Collapse(i32* %158, i32 %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @S_FALSE, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 (i32, i8*, ...) @ok(i32 %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %166 = load i32, i32* %1, align 4
  %167 = load i32, i32* @EM_GETSEL, align 4
  %168 = ptrtoint i32* %8 to i32
  %169 = ptrtoint i32* %9 to i32
  %170 = call i32 @SendMessageA(i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = load i32, i32* %8, align 4
  %172 = icmp eq i32 %171, 6
  %173 = zext i1 %172 to i32
  %174 = load i32, i32* %8, align 4
  %175 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %9, align 4
  %177 = icmp eq i32 %176, 6
  %178 = zext i1 %177 to i32
  %179 = load i32, i32* %9, align 4
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  store i32 8, i32* %6, align 4
  store i32 8, i32* %7, align 4
  %181 = load i32, i32* %1, align 4
  %182 = load i32, i32* @EM_SETSEL, align 4
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @SendMessageA(i32 %181, i32 %182, i32 %183, i32 %184)
  %186 = load i32*, i32** %4, align 8
  %187 = load i32, i32* @tomStart, align 4
  %188 = call i32 @ITextSelection_Collapse(i32* %186, i32 %187)
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* @S_FALSE, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %194 = load i32, i32* %1, align 4
  %195 = load i32, i32* @EM_GETSEL, align 4
  %196 = ptrtoint i32* %8 to i32
  %197 = ptrtoint i32* %9 to i32
  %198 = call i32 @SendMessageA(i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i32, i32* %8, align 4
  %200 = icmp eq i32 %199, 8
  %201 = zext i1 %200 to i32
  %202 = load i32, i32* %8, align 4
  %203 = call i32 (i32, i8*, ...) @ok(i32 %201, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* %9, align 4
  %205 = icmp eq i32 %204, 8
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* %9, align 4
  %208 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %207)
  %209 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %210 = load i32*, i32** %4, align 8
  %211 = load i32, i32* @tomStart, align 4
  %212 = call i32 @ITextSelection_Collapse(i32* %210, i32 %211)
  store i32 %212, i32* %5, align 4
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @CO_E_RELEASED, align 4
  %215 = icmp eq i32 %213, %214
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* %5, align 4
  %218 = call i32 (i32, i8*, ...) @ok(i32 %216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %217)
  %219 = load i32*, i32** %4, align 8
  %220 = load i32, i32* @tomUndefined, align 4
  %221 = call i32 @ITextSelection_Collapse(i32* %219, i32 %220)
  store i32 %221, i32* %5, align 4
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* @CO_E_RELEASED, align 4
  %224 = icmp eq i32 %222, %223
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* %5, align 4
  %227 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %226)
  %228 = load i32*, i32** %4, align 8
  %229 = call i32 @ITextSelection_Release(i32* %228)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ITextSelection_Collapse(i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @ITextSelection_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
