; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_MoveEnd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_MoveEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_MoveEnd.test_text1 = internal constant [12 x i8] c"Word1 Word2\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@tomStory = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@CO_E_RELEASED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_MoveEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_MoveEnd() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %8 = call i32 @create_interfaces(i32* %7, i32** %1, i32** %2, i32** %3)
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @WM_SETTEXT, align 4
  %11 = call i32 @SendMessageA(i32 %9, i32 %10, i32 0, i32 ptrtoint ([12 x i8]* @test_MoveEnd.test_text1 to i32))
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @EM_SETSEL, align 4
  %14 = call i32 @SendMessageA(i32 %12, i32 %13, i32 1, i32 2)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @ITextDocument_Range(i32* %15, i32 1, i32 2, i32** %4)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @S_OK, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @tomStory, align 4
  %25 = call i32 @ITextRange_MoveEnd(i32* %23, i32 %24, i32 0, i32* %5)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @S_FALSE, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @CHECK_RANGE(i32* %37, i32 1, i32 2)
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @tomStory, align 4
  %41 = call i32 @ITextRange_MoveEnd(i32* %39, i32 %40, i32 -1, i32* %5)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @S_OK, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, -1
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @CHECK_RANGE(i32* %53, i32 0, i32 0)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @tomStory, align 4
  %57 = call i32 @ITextRange_MoveEnd(i32* %55, i32 %56, i32 1, i32* %5)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @S_OK, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 1
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @CHECK_RANGE(i32* %69, i32 0, i32 12)
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* @tomStory, align 4
  %73 = call i32 @ITextRange_MoveEnd(i32* %71, i32 %72, i32 1, i32* %5)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @S_FALSE, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @CHECK_RANGE(i32* %85, i32 0, i32 12)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @RESET_RANGE(i32* %87, i32 1, i32 2)
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* @tomStory, align 4
  %91 = call i32 @ITextRange_MoveEnd(i32* %89, i32 %90, i32 3, i32* %5)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @S_OK, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 1
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @CHECK_RANGE(i32* %103, i32 1, i32 12)
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @RESET_RANGE(i32* %105, i32 2, i32 3)
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* @tomStory, align 4
  %109 = call i32 @ITextRange_MoveEnd(i32* %107, i32 %108, i32 -3, i32* %5)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @S_OK, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = icmp eq i32 %116, -1
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @ok(i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @CHECK_RANGE(i32* %121, i32 0, i32 0)
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* @tomStory, align 4
  %125 = call i32 @ITextRange_MoveEnd(i32* %123, i32 %124, i32 -1, i32* %5)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @S_FALSE, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %5, align 4
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @ok(i32 %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @CHECK_RANGE(i32* %137, i32 0, i32 0)
  %139 = load i32*, i32** %3, align 8
  %140 = load i32, i32* @tomStory, align 4
  %141 = call i32 @ITextSelection_MoveEnd(i32* %139, i32 %140, i32 0, i32* %5)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @S_FALSE, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @ok(i32 %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %5, align 4
  %149 = icmp eq i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @ok(i32 %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @CHECK_SELECTION(i32* %153, i32 1, i32 2)
  %155 = load i32*, i32** %3, align 8
  %156 = load i32, i32* @tomStory, align 4
  %157 = call i32 @ITextSelection_MoveEnd(i32* %155, i32 %156, i32 -1, i32* %5)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @S_OK, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @ok(i32 %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* %5, align 4
  %165 = icmp eq i32 %164, -1
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 @CHECK_SELECTION(i32* %169, i32 0, i32 0)
  %171 = load i32*, i32** %3, align 8
  %172 = load i32, i32* @tomStory, align 4
  %173 = call i32 @ITextSelection_MoveEnd(i32* %171, i32 %172, i32 1, i32* %5)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @S_OK, align 4
  %176 = icmp eq i32 %174, %175
  %177 = zext i1 %176 to i32
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @ok(i32 %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %5, align 4
  %181 = icmp eq i32 %180, 1
  %182 = zext i1 %181 to i32
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @ok(i32 %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %183)
  %185 = load i32*, i32** %3, align 8
  %186 = call i32 @CHECK_SELECTION(i32* %185, i32 0, i32 12)
  %187 = load i32*, i32** %3, align 8
  %188 = load i32, i32* @tomStory, align 4
  %189 = call i32 @ITextSelection_MoveEnd(i32* %187, i32 %188, i32 1, i32* %5)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @S_FALSE, align 4
  %192 = icmp eq i32 %190, %191
  %193 = zext i1 %192 to i32
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @ok(i32 %193, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* %5, align 4
  %197 = icmp eq i32 %196, 0
  %198 = zext i1 %197 to i32
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @ok(i32 %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %199)
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 @CHECK_SELECTION(i32* %201, i32 0, i32 12)
  %203 = load i32*, i32** %3, align 8
  %204 = call i32 @RESET_SELECTION(i32* %203, i32 1, i32 2)
  %205 = load i32*, i32** %3, align 8
  %206 = load i32, i32* @tomStory, align 4
  %207 = call i32 @ITextSelection_MoveEnd(i32* %205, i32 %206, i32 3, i32* %5)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* @S_OK, align 4
  %210 = icmp eq i32 %208, %209
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @ok(i32 %211, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* %5, align 4
  %215 = icmp eq i32 %214, 1
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* %5, align 4
  %218 = call i32 @ok(i32 %216, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %217)
  %219 = load i32*, i32** %3, align 8
  %220 = call i32 @CHECK_SELECTION(i32* %219, i32 1, i32 12)
  %221 = load i32*, i32** %3, align 8
  %222 = call i32 @RESET_SELECTION(i32* %221, i32 2, i32 3)
  %223 = load i32*, i32** %3, align 8
  %224 = load i32, i32* @tomStory, align 4
  %225 = call i32 @ITextSelection_MoveEnd(i32* %223, i32 %224, i32 -3, i32* %5)
  store i32 %225, i32* %6, align 4
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @S_OK, align 4
  %228 = icmp eq i32 %226, %227
  %229 = zext i1 %228 to i32
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @ok(i32 %229, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* %5, align 4
  %233 = icmp eq i32 %232, -1
  %234 = zext i1 %233 to i32
  %235 = load i32, i32* %5, align 4
  %236 = call i32 @ok(i32 %234, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %235)
  %237 = load i32*, i32** %3, align 8
  %238 = call i32 @CHECK_SELECTION(i32* %237, i32 0, i32 0)
  %239 = load i32*, i32** %3, align 8
  %240 = load i32, i32* @tomStory, align 4
  %241 = call i32 @ITextSelection_MoveEnd(i32* %239, i32 %240, i32 -1, i32* %5)
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* @S_FALSE, align 4
  %244 = icmp eq i32 %242, %243
  %245 = zext i1 %244 to i32
  %246 = load i32, i32* %6, align 4
  %247 = call i32 @ok(i32 %245, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %246)
  %248 = load i32, i32* %5, align 4
  %249 = icmp eq i32 %248, 0
  %250 = zext i1 %249 to i32
  %251 = load i32, i32* %5, align 4
  %252 = call i32 @ok(i32 %250, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %251)
  %253 = load i32*, i32** %3, align 8
  %254 = call i32 @CHECK_SELECTION(i32* %253, i32 0, i32 0)
  %255 = call i32 @release_interfaces(i32* %7, i32** %1, i32** %2, i32* null)
  %256 = load i32*, i32** %4, align 8
  %257 = load i32, i32* @tomStory, align 4
  %258 = call i32 @ITextRange_MoveEnd(i32* %256, i32 %257, i32 1, i32* null)
  store i32 %258, i32* %6, align 4
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* @CO_E_RELEASED, align 4
  %261 = icmp eq i32 %259, %260
  %262 = zext i1 %261 to i32
  %263 = load i32, i32* %6, align 4
  %264 = call i32 @ok(i32 %262, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %263)
  %265 = load i32*, i32** %4, align 8
  %266 = load i32, i32* @tomStory, align 4
  %267 = call i32 @ITextRange_MoveEnd(i32* %265, i32 %266, i32 1, i32* %5)
  store i32 %267, i32* %6, align 4
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* @CO_E_RELEASED, align 4
  %270 = icmp eq i32 %268, %269
  %271 = zext i1 %270 to i32
  %272 = load i32, i32* %6, align 4
  %273 = call i32 @ok(i32 %271, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %272)
  %274 = load i32*, i32** %3, align 8
  %275 = load i32, i32* @tomStory, align 4
  %276 = call i32 @ITextSelection_MoveEnd(i32* %274, i32 %275, i32 1, i32* null)
  store i32 %276, i32* %6, align 4
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* @CO_E_RELEASED, align 4
  %279 = icmp eq i32 %277, %278
  %280 = zext i1 %279 to i32
  %281 = load i32, i32* %6, align 4
  %282 = call i32 @ok(i32 %280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %281)
  %283 = load i32*, i32** %3, align 8
  %284 = load i32, i32* @tomStory, align 4
  %285 = call i32 @ITextSelection_MoveEnd(i32* %283, i32 %284, i32 1, i32* %5)
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* %6, align 4
  %287 = load i32, i32* @CO_E_RELEASED, align 4
  %288 = icmp eq i32 %286, %287
  %289 = zext i1 %288 to i32
  %290 = load i32, i32* %6, align 4
  %291 = call i32 @ok(i32 %289, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %290)
  %292 = load i32*, i32** %3, align 8
  %293 = call i32 @ITextSelection_Release(i32* %292)
  %294 = load i32*, i32** %4, align 8
  %295 = call i32 @ITextRange_Release(i32* %294)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ITextDocument_Range(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @ITextRange_MoveEnd(i32*, i32, i32, i32*) #1

declare dso_local i32 @CHECK_RANGE(i32*, i32, i32) #1

declare dso_local i32 @RESET_RANGE(i32*, i32, i32) #1

declare dso_local i32 @ITextSelection_MoveEnd(i32*, i32, i32, i32*) #1

declare dso_local i32 @CHECK_SELECTION(i32*, i32, i32) #1

declare dso_local i32 @RESET_SELECTION(i32*, i32, i32) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @ITextSelection_Release(i32*) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
