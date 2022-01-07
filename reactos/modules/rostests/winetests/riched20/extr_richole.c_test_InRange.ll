; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_InRange.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_InRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_InRange.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@tomTrue = common dso_local global i64 0, align 8
@tomFalse = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@CO_E_RELEASED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_InRange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_InRange() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %10 = call i32 @create_interfaces(i32* %9, i32** %4, i32** %5, i32** %6)
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @WM_SETTEXT, align 4
  %13 = call i32 @SendMessageA(i32 %11, i32 %12, i32 0, i32 ptrtoint ([13 x i8]* @test_InRange.test_text1 to i32))
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @EM_SETSEL, align 4
  %16 = call i32 @SendMessageA(i32 %14, i32 %15, i32 1, i32 2)
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @ITextDocument_Range(i32* %17, i32 0, i32 4, i32** %1)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @ITextDocument_Range(i32* %25, i32 0, i32 4, i32** %2)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @ITextDocument_Range(i32* %33, i32 1, i32 2, i32** %3)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i64 @ITextRange_InRange(i32* %41, i32* null, i64* null)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @S_FALSE, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i64, i64* @tomTrue, align 8
  store i64 %49, i64* %7, align 8
  %50 = load i32*, i32** %1, align 8
  %51 = call i64 @ITextRange_InRange(i32* %50, i32* null, i64* %7)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @S_FALSE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @tomFalse, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = load i32*, i32** %2, align 8
  %66 = call i64 @ITextRange_InRange(i32* %64, i32* %65, i64* null)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @S_OK, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %71)
  %73 = load i64, i64* @tomFalse, align 8
  store i64 %73, i64* %7, align 8
  %74 = load i32*, i32** %1, align 8
  %75 = load i32*, i32** %2, align 8
  %76 = call i64 @ITextRange_InRange(i32* %74, i32* %75, i64* %7)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @S_OK, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @tomTrue, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i64 @ITextSelection_InRange(i32* %89, i32* null, i64* null)
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* @S_FALSE, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %95)
  %97 = load i64, i64* @tomTrue, align 8
  store i64 %97, i64* %7, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = call i64 @ITextSelection_InRange(i32* %98, i32* null, i64* %7)
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @S_FALSE, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @ok(i32 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %104)
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* @tomFalse, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %7, align 8
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %110)
  %112 = load i32*, i32** %6, align 8
  %113 = load i32*, i32** %2, align 8
  %114 = call i64 @ITextSelection_InRange(i32* %112, i32* %113, i64* null)
  store i64 %114, i64* %8, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* @S_FALSE, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @ok(i32 %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %119)
  %121 = load i64, i64* @tomTrue, align 8
  store i64 %121, i64* %7, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = load i32*, i32** %2, align 8
  %124 = call i64 @ITextSelection_InRange(i32* %122, i32* %123, i64* %7)
  store i64 %124, i64* %8, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* @S_FALSE, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %129)
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* @tomFalse, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i64, i64* %7, align 8
  %136 = call i32 @ok(i32 %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %135)
  %137 = load i64, i64* @tomTrue, align 8
  store i64 %137, i64* %7, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = load i32*, i32** %3, align 8
  %140 = call i64 @ITextSelection_InRange(i32* %138, i32* %139, i64* %7)
  store i64 %140, i64* %8, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* @S_FALSE, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %8, align 8
  %146 = call i32 @ok(i32 %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %145)
  %147 = load i64, i64* %7, align 8
  %148 = load i64, i64* @tomFalse, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = load i64, i64* %7, align 8
  %152 = call i32 @ok(i32 %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %151)
  %153 = load i64, i64* @tomFalse, align 8
  store i64 %153, i64* %7, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = call i64 @ITextSelection_InRange(i32* %154, i32* %155, i64* %7)
  store i64 %156, i64* %8, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* @S_OK, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @ok(i32 %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %161)
  %163 = load i64, i64* %7, align 8
  %164 = load i64, i64* @tomTrue, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %7, align 8
  %168 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %167)
  %169 = call i32 @release_interfaces(i32* %9, i32** %4, i32** %5, i32* null)
  %170 = load i32*, i32** %1, align 8
  %171 = call i64 @ITextRange_InRange(i32* %170, i32* null, i64* null)
  store i64 %171, i64* %8, align 8
  %172 = load i64, i64* %8, align 8
  %173 = load i64, i64* @CO_E_RELEASED, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i64, i64* %8, align 8
  %177 = call i32 @ok(i32 %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %176)
  %178 = load i64, i64* @tomTrue, align 8
  store i64 %178, i64* %7, align 8
  %179 = load i32*, i32** %1, align 8
  %180 = call i64 @ITextRange_InRange(i32* %179, i32* null, i64* %7)
  store i64 %180, i64* %8, align 8
  %181 = load i64, i64* %8, align 8
  %182 = load i64, i64* @CO_E_RELEASED, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = load i64, i64* %8, align 8
  %186 = call i32 @ok(i32 %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %185)
  %187 = load i64, i64* %7, align 8
  %188 = load i64, i64* @tomFalse, align 8
  %189 = icmp eq i64 %187, %188
  %190 = zext i1 %189 to i32
  %191 = load i64, i64* %7, align 8
  %192 = call i32 @ok(i32 %190, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %191)
  %193 = load i32*, i32** %1, align 8
  %194 = load i32*, i32** %2, align 8
  %195 = call i64 @ITextRange_InRange(i32* %193, i32* %194, i64* null)
  store i64 %195, i64* %8, align 8
  %196 = load i64, i64* %8, align 8
  %197 = load i64, i64* @CO_E_RELEASED, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i64, i64* %8, align 8
  %201 = call i32 @ok(i32 %199, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %200)
  %202 = load i64, i64* @tomTrue, align 8
  store i64 %202, i64* %7, align 8
  %203 = load i32*, i32** %1, align 8
  %204 = load i32*, i32** %2, align 8
  %205 = call i64 @ITextRange_InRange(i32* %203, i32* %204, i64* %7)
  store i64 %205, i64* %8, align 8
  %206 = load i64, i64* %8, align 8
  %207 = load i64, i64* @CO_E_RELEASED, align 8
  %208 = icmp eq i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = load i64, i64* %8, align 8
  %211 = call i32 @ok(i32 %209, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %210)
  %212 = load i64, i64* %7, align 8
  %213 = load i64, i64* @tomFalse, align 8
  %214 = icmp eq i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = load i64, i64* %7, align 8
  %217 = call i32 @ok(i32 %215, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %216)
  %218 = load i32*, i32** %6, align 8
  %219 = call i64 @ITextSelection_InRange(i32* %218, i32* null, i64* null)
  store i64 %219, i64* %8, align 8
  %220 = load i64, i64* %8, align 8
  %221 = load i64, i64* @CO_E_RELEASED, align 8
  %222 = icmp eq i64 %220, %221
  %223 = zext i1 %222 to i32
  %224 = load i64, i64* %8, align 8
  %225 = call i32 @ok(i32 %223, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %224)
  %226 = load i64, i64* @tomTrue, align 8
  store i64 %226, i64* %7, align 8
  %227 = load i32*, i32** %6, align 8
  %228 = call i64 @ITextSelection_InRange(i32* %227, i32* null, i64* %7)
  store i64 %228, i64* %8, align 8
  %229 = load i64, i64* %8, align 8
  %230 = load i64, i64* @CO_E_RELEASED, align 8
  %231 = icmp eq i64 %229, %230
  %232 = zext i1 %231 to i32
  %233 = load i64, i64* %8, align 8
  %234 = call i32 @ok(i32 %232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %233)
  %235 = load i64, i64* %7, align 8
  %236 = load i64, i64* @tomFalse, align 8
  %237 = icmp eq i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = load i64, i64* %7, align 8
  %240 = call i32 @ok(i32 %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %239)
  %241 = load i32*, i32** %6, align 8
  %242 = load i32*, i32** %2, align 8
  %243 = call i64 @ITextSelection_InRange(i32* %241, i32* %242, i64* null)
  store i64 %243, i64* %8, align 8
  %244 = load i64, i64* %8, align 8
  %245 = load i64, i64* @CO_E_RELEASED, align 8
  %246 = icmp eq i64 %244, %245
  %247 = zext i1 %246 to i32
  %248 = load i64, i64* %8, align 8
  %249 = call i32 @ok(i32 %247, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %248)
  %250 = load i64, i64* @tomTrue, align 8
  store i64 %250, i64* %7, align 8
  %251 = load i32*, i32** %6, align 8
  %252 = load i32*, i32** %2, align 8
  %253 = call i64 @ITextSelection_InRange(i32* %251, i32* %252, i64* %7)
  store i64 %253, i64* %8, align 8
  %254 = load i64, i64* %8, align 8
  %255 = load i64, i64* @CO_E_RELEASED, align 8
  %256 = icmp eq i64 %254, %255
  %257 = zext i1 %256 to i32
  %258 = load i64, i64* %8, align 8
  %259 = call i32 @ok(i32 %257, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %258)
  %260 = load i64, i64* %7, align 8
  %261 = load i64, i64* @tomFalse, align 8
  %262 = icmp eq i64 %260, %261
  %263 = zext i1 %262 to i32
  %264 = load i64, i64* %7, align 8
  %265 = call i32 @ok(i32 %263, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %264)
  %266 = load i32*, i32** %1, align 8
  %267 = call i32 @ITextRange_Release(i32* %266)
  %268 = load i32*, i32** %2, align 8
  %269 = call i32 @ITextRange_Release(i32* %268)
  %270 = load i32*, i32** %3, align 8
  %271 = call i32 @ITextRange_Release(i32* %270)
  %272 = load i32*, i32** %6, align 8
  %273 = call i32 @ITextSelection_Release(i32* %272)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i64 @ITextDocument_Range(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @ITextRange_InRange(i32*, i32*, i64*) #1

declare dso_local i64 @ITextSelection_InRange(i32*, i32*, i64*) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

declare dso_local i32 @ITextSelection_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
