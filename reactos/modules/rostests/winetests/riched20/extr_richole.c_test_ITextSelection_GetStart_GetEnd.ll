; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextSelection_GetStart_GetEnd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextSelection_GetStart_GetEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ITextSelection_GetStart_GetEnd.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@EM_SETSEL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ITextSelection_GetStart\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"got wrong start value: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ITextSelection_GetEnd\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"got wrong end value: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"got %d\0A\00", align 1
@CO_E_RELEASED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ITextSelection_GetStart_GetEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ITextSelection_GetStart_GetEnd() #0 {
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
  %13 = call i32 @SendMessageA(i32 %11, i32 %12, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextSelection_GetStart_GetEnd.test_text1 to i32))
  store i32 2, i32* %6, align 4
  store i32 5, i32* %7, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @EM_SETSEL, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @SendMessageA(i32 %14, i32 %15, i32 %16, i32 %17)
  store i32 -559038737, i32* %8, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @ITextSelection_GetStart(i32* %19, i32* %8)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @S_OK, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 2
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 -559038737, i32* %9, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ITextSelection_GetEnd(i32* %31, i32* %9)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @S_OK, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 5
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  store i32 5, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @EM_SETSEL, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @SendMessageA(i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 -559038737, i32* %8, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @ITextSelection_GetStart(i32* %48, i32* %8)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @S_OK, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 2
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  store i32 -559038737, i32* %9, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @ITextSelection_GetEnd(i32* %60, i32* %9)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @S_OK, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 5
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @EM_SETSEL, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @SendMessageA(i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 -559038737, i32* %8, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @ITextSelection_GetStart(i32* %77, i32* %8)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @S_OK, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  store i32 -559038737, i32* %9, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @ITextSelection_GetEnd(i32* %89, i32* %9)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @S_OK, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* %9, align 4
  %97 = icmp eq i32 %96, 13
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  store i32 13, i32* %6, align 4
  store i32 13, i32* %7, align 4
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* @EM_SETSEL, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @SendMessageA(i32 %101, i32 %102, i32 %103, i32 %104)
  store i32 -559038737, i32* %8, align 4
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @ITextSelection_GetStart(i32* %106, i32* %8)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @S_OK, align 4
  %110 = icmp eq i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 12
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  store i32 -559038737, i32* %9, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @ITextSelection_GetEnd(i32* %118, i32* %9)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @S_OK, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 12
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %9, align 4
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @ITextSelection_SetStart(i32* %130, i32 0)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @S_OK, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %5, align 4
  %137 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @ITextSelection_SetStart(i32* %138, i32 0)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @S_FALSE, align 4
  %142 = icmp eq i32 %140, %141
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %5, align 4
  %145 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  %146 = load i32*, i32** %4, align 8
  %147 = call i32 @ITextSelection_SetStart(i32* %146, i32 1)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @S_OK, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %5, align 4
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  %154 = load i32*, i32** %4, align 8
  %155 = call i32 @ITextSelection_SetStart(i32* %154, i32 -1)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @S_OK, align 4
  %158 = icmp eq i32 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %5, align 4
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @ITextSelection_SetStart(i32* %162, i32 -1)
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @S_FALSE, align 4
  %166 = icmp eq i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i32, i32* %5, align 4
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %168)
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 @ITextSelection_SetStart(i32* %170, i32 0)
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @S_FALSE, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* %5, align 4
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  store i32 -1, i32* %8, align 4
  %178 = load i32*, i32** %4, align 8
  %179 = call i32 @ITextSelection_GetStart(i32* %178, i32* %8)
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @S_OK, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load i32, i32* %5, align 4
  %185 = call i32 (i32, i8*, ...) @ok(i32 %183, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %8, align 4
  %187 = icmp eq i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = load i32, i32* %8, align 4
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %189)
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @ITextSelection_SetStart(i32* %191, i32 1)
  store i32 %192, i32* %5, align 4
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @S_OK, align 4
  %195 = icmp eq i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = load i32, i32* %5, align 4
  %198 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %197)
  %199 = load i32*, i32** %4, align 8
  %200 = call i32 @ITextSelection_SetEnd(i32* %199, i32 3)
  store i32 %200, i32* %5, align 4
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @S_OK, align 4
  %203 = icmp eq i32 %201, %202
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %5, align 4
  %206 = call i32 (i32, i8*, ...) @ok(i32 %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %205)
  %207 = load i32*, i32** %4, align 8
  %208 = call i32 @ITextSelection_SetStart(i32* %207, i32 10)
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @S_OK, align 4
  %211 = icmp eq i32 %209, %210
  %212 = zext i1 %211 to i32
  %213 = load i32, i32* %5, align 4
  %214 = call i32 (i32, i8*, ...) @ok(i32 %212, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %213)
  store i32 0, i32* %8, align 4
  %215 = load i32*, i32** %4, align 8
  %216 = call i32 @ITextSelection_GetStart(i32* %215, i32* %8)
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* @S_OK, align 4
  %219 = icmp eq i32 %217, %218
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %5, align 4
  %222 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* %8, align 4
  %224 = icmp eq i32 %223, 10
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* %8, align 4
  %227 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %226)
  store i32 0, i32* %9, align 4
  %228 = load i32*, i32** %4, align 8
  %229 = call i32 @ITextSelection_GetEnd(i32* %228, i32* %9)
  store i32 %229, i32* %5, align 4
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* @S_OK, align 4
  %232 = icmp eq i32 %230, %231
  %233 = zext i1 %232 to i32
  %234 = load i32, i32* %5, align 4
  %235 = call i32 (i32, i8*, ...) @ok(i32 %233, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* %9, align 4
  %237 = icmp eq i32 %236, 10
  %238 = zext i1 %237 to i32
  %239 = load i32, i32* %9, align 4
  %240 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %239)
  %241 = load i32*, i32** %4, align 8
  %242 = call i32 @ITextSelection_SetStart(i32* %241, i32 50)
  store i32 %242, i32* %5, align 4
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* @S_OK, align 4
  %245 = icmp eq i32 %243, %244
  %246 = zext i1 %245 to i32
  %247 = load i32, i32* %5, align 4
  %248 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %247)
  store i32 0, i32* %8, align 4
  %249 = load i32*, i32** %4, align 8
  %250 = call i32 @ITextSelection_GetStart(i32* %249, i32* %8)
  store i32 %250, i32* %5, align 4
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* @S_OK, align 4
  %253 = icmp eq i32 %251, %252
  %254 = zext i1 %253 to i32
  %255 = load i32, i32* %5, align 4
  %256 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* %8, align 4
  %258 = icmp eq i32 %257, 12
  %259 = zext i1 %258 to i32
  %260 = load i32, i32* %8, align 4
  %261 = call i32 (i32, i8*, ...) @ok(i32 %259, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %260)
  store i32 0, i32* %9, align 4
  %262 = load i32*, i32** %4, align 8
  %263 = call i32 @ITextSelection_GetEnd(i32* %262, i32* %9)
  store i32 %263, i32* %5, align 4
  %264 = load i32, i32* %5, align 4
  %265 = load i32, i32* @S_OK, align 4
  %266 = icmp eq i32 %264, %265
  %267 = zext i1 %266 to i32
  %268 = load i32, i32* %5, align 4
  %269 = call i32 (i32, i8*, ...) @ok(i32 %267, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %268)
  %270 = load i32, i32* %9, align 4
  %271 = icmp eq i32 %270, 12
  %272 = zext i1 %271 to i32
  %273 = load i32, i32* %9, align 4
  %274 = call i32 (i32, i8*, ...) @ok(i32 %272, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %273)
  %275 = load i32*, i32** %4, align 8
  %276 = call i32 @ITextSelection_SetStart(i32* %275, i32 0)
  store i32 %276, i32* %5, align 4
  %277 = load i32, i32* %5, align 4
  %278 = load i32, i32* @S_OK, align 4
  %279 = icmp eq i32 %277, %278
  %280 = zext i1 %279 to i32
  %281 = load i32, i32* %5, align 4
  %282 = call i32 (i32, i8*, ...) @ok(i32 %280, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %281)
  %283 = load i32*, i32** %4, align 8
  %284 = call i32 @ITextSelection_SetEnd(i32* %283, i32 5)
  store i32 %284, i32* %5, align 4
  %285 = load i32, i32* %5, align 4
  %286 = load i32, i32* @S_OK, align 4
  %287 = icmp eq i32 %285, %286
  %288 = zext i1 %287 to i32
  %289 = load i32, i32* %5, align 4
  %290 = call i32 (i32, i8*, ...) @ok(i32 %288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %289)
  %291 = load i32*, i32** %4, align 8
  %292 = call i32 @ITextSelection_SetEnd(i32* %291, i32 5)
  store i32 %292, i32* %5, align 4
  %293 = load i32, i32* %5, align 4
  %294 = load i32, i32* @S_FALSE, align 4
  %295 = icmp eq i32 %293, %294
  %296 = zext i1 %295 to i32
  %297 = load i32, i32* %5, align 4
  %298 = call i32 (i32, i8*, ...) @ok(i32 %296, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %297)
  %299 = load i32*, i32** %4, align 8
  %300 = call i32 @ITextSelection_SetEnd(i32* %299, i32 -1)
  store i32 %300, i32* %5, align 4
  %301 = load i32, i32* %5, align 4
  %302 = load i32, i32* @S_OK, align 4
  %303 = icmp eq i32 %301, %302
  %304 = zext i1 %303 to i32
  %305 = load i32, i32* %5, align 4
  %306 = call i32 (i32, i8*, ...) @ok(i32 %304, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %305)
  store i32 -1, i32* %9, align 4
  %307 = load i32*, i32** %4, align 8
  %308 = call i32 @ITextSelection_GetEnd(i32* %307, i32* %9)
  store i32 %308, i32* %5, align 4
  %309 = load i32, i32* %5, align 4
  %310 = load i32, i32* @S_OK, align 4
  %311 = icmp eq i32 %309, %310
  %312 = zext i1 %311 to i32
  %313 = load i32, i32* %5, align 4
  %314 = call i32 (i32, i8*, ...) @ok(i32 %312, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %313)
  %315 = load i32, i32* %9, align 4
  %316 = icmp eq i32 %315, 0
  %317 = zext i1 %316 to i32
  %318 = load i32, i32* %9, align 4
  %319 = call i32 (i32, i8*, ...) @ok(i32 %317, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %318)
  store i32 -1, i32* %8, align 4
  %320 = load i32*, i32** %4, align 8
  %321 = call i32 @ITextSelection_GetStart(i32* %320, i32* %8)
  store i32 %321, i32* %5, align 4
  %322 = load i32, i32* %5, align 4
  %323 = load i32, i32* @S_OK, align 4
  %324 = icmp eq i32 %322, %323
  %325 = zext i1 %324 to i32
  %326 = load i32, i32* %5, align 4
  %327 = call i32 (i32, i8*, ...) @ok(i32 %325, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %326)
  %328 = load i32, i32* %8, align 4
  %329 = icmp eq i32 %328, 0
  %330 = zext i1 %329 to i32
  %331 = load i32, i32* %8, align 4
  %332 = call i32 (i32, i8*, ...) @ok(i32 %330, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %331)
  %333 = load i32*, i32** %4, align 8
  %334 = call i32 @ITextSelection_SetStart(i32* %333, i32 3)
  store i32 %334, i32* %5, align 4
  %335 = load i32, i32* %5, align 4
  %336 = load i32, i32* @S_OK, align 4
  %337 = icmp eq i32 %335, %336
  %338 = zext i1 %337 to i32
  %339 = load i32, i32* %5, align 4
  %340 = call i32 (i32, i8*, ...) @ok(i32 %338, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %339)
  %341 = load i32*, i32** %4, align 8
  %342 = call i32 @ITextSelection_SetEnd(i32* %341, i32 1)
  store i32 %342, i32* %5, align 4
  %343 = load i32, i32* %5, align 4
  %344 = load i32, i32* @S_OK, align 4
  %345 = icmp eq i32 %343, %344
  %346 = zext i1 %345 to i32
  %347 = load i32, i32* %5, align 4
  %348 = call i32 (i32, i8*, ...) @ok(i32 %346, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %347)
  store i32 0, i32* %8, align 4
  %349 = load i32*, i32** %4, align 8
  %350 = call i32 @ITextSelection_GetStart(i32* %349, i32* %8)
  store i32 %350, i32* %5, align 4
  %351 = load i32, i32* %5, align 4
  %352 = load i32, i32* @S_OK, align 4
  %353 = icmp eq i32 %351, %352
  %354 = zext i1 %353 to i32
  %355 = load i32, i32* %5, align 4
  %356 = call i32 (i32, i8*, ...) @ok(i32 %354, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %355)
  %357 = load i32, i32* %8, align 4
  %358 = icmp eq i32 %357, 1
  %359 = zext i1 %358 to i32
  %360 = load i32, i32* %8, align 4
  %361 = call i32 (i32, i8*, ...) @ok(i32 %359, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %360)
  store i32 0, i32* %9, align 4
  %362 = load i32*, i32** %4, align 8
  %363 = call i32 @ITextSelection_GetEnd(i32* %362, i32* %9)
  store i32 %363, i32* %5, align 4
  %364 = load i32, i32* %5, align 4
  %365 = load i32, i32* @S_OK, align 4
  %366 = icmp eq i32 %364, %365
  %367 = zext i1 %366 to i32
  %368 = load i32, i32* %5, align 4
  %369 = call i32 (i32, i8*, ...) @ok(i32 %367, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %368)
  %370 = load i32, i32* %9, align 4
  %371 = icmp eq i32 %370, 1
  %372 = zext i1 %371 to i32
  %373 = load i32, i32* %9, align 4
  %374 = call i32 (i32, i8*, ...) @ok(i32 %372, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %373)
  %375 = load i32*, i32** %4, align 8
  %376 = call i32 @ITextSelection_SetEnd(i32* %375, i32 50)
  store i32 %376, i32* %5, align 4
  %377 = load i32, i32* %5, align 4
  %378 = load i32, i32* @S_OK, align 4
  %379 = icmp eq i32 %377, %378
  %380 = zext i1 %379 to i32
  %381 = load i32, i32* %5, align 4
  %382 = call i32 (i32, i8*, ...) @ok(i32 %380, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %381)
  store i32 0, i32* %8, align 4
  %383 = load i32*, i32** %4, align 8
  %384 = call i32 @ITextSelection_GetStart(i32* %383, i32* %8)
  store i32 %384, i32* %5, align 4
  %385 = load i32, i32* %5, align 4
  %386 = load i32, i32* @S_OK, align 4
  %387 = icmp eq i32 %385, %386
  %388 = zext i1 %387 to i32
  %389 = load i32, i32* %5, align 4
  %390 = call i32 (i32, i8*, ...) @ok(i32 %388, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %389)
  %391 = load i32, i32* %8, align 4
  %392 = icmp eq i32 %391, 1
  %393 = zext i1 %392 to i32
  %394 = load i32, i32* %8, align 4
  %395 = call i32 (i32, i8*, ...) @ok(i32 %393, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %394)
  store i32 0, i32* %9, align 4
  %396 = load i32*, i32** %4, align 8
  %397 = call i32 @ITextSelection_GetEnd(i32* %396, i32* %9)
  store i32 %397, i32* %5, align 4
  %398 = load i32, i32* %5, align 4
  %399 = load i32, i32* @S_OK, align 4
  %400 = icmp eq i32 %398, %399
  %401 = zext i1 %400 to i32
  %402 = load i32, i32* %5, align 4
  %403 = call i32 (i32, i8*, ...) @ok(i32 %401, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %402)
  %404 = load i32, i32* %9, align 4
  %405 = icmp eq i32 %404, 13
  %406 = zext i1 %405 to i32
  %407 = load i32, i32* %9, align 4
  %408 = call i32 (i32, i8*, ...) @ok(i32 %406, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %407)
  %409 = load i32*, i32** %4, align 8
  %410 = call i32 @ITextSelection_SetEnd(i32* %409, i32 0)
  store i32 %410, i32* %5, align 4
  %411 = load i32, i32* %5, align 4
  %412 = load i32, i32* @S_OK, align 4
  %413 = icmp eq i32 %411, %412
  %414 = zext i1 %413 to i32
  %415 = load i32, i32* %5, align 4
  %416 = call i32 (i32, i8*, ...) @ok(i32 %414, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %415)
  store i32 0, i32* %8, align 4
  %417 = load i32*, i32** %4, align 8
  %418 = call i32 @ITextSelection_GetStart(i32* %417, i32* %8)
  store i32 %418, i32* %5, align 4
  %419 = load i32, i32* %5, align 4
  %420 = load i32, i32* @S_OK, align 4
  %421 = icmp eq i32 %419, %420
  %422 = zext i1 %421 to i32
  %423 = load i32, i32* %5, align 4
  %424 = call i32 (i32, i8*, ...) @ok(i32 %422, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %423)
  %425 = load i32, i32* %8, align 4
  %426 = icmp eq i32 %425, 0
  %427 = zext i1 %426 to i32
  %428 = load i32, i32* %8, align 4
  %429 = call i32 (i32, i8*, ...) @ok(i32 %427, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %428)
  store i32 0, i32* %9, align 4
  %430 = load i32*, i32** %4, align 8
  %431 = call i32 @ITextSelection_GetEnd(i32* %430, i32* %9)
  store i32 %431, i32* %5, align 4
  %432 = load i32, i32* %5, align 4
  %433 = load i32, i32* @S_OK, align 4
  %434 = icmp eq i32 %432, %433
  %435 = zext i1 %434 to i32
  %436 = load i32, i32* %5, align 4
  %437 = call i32 (i32, i8*, ...) @ok(i32 %435, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %436)
  %438 = load i32, i32* %9, align 4
  %439 = icmp eq i32 %438, 0
  %440 = zext i1 %439 to i32
  %441 = load i32, i32* %9, align 4
  %442 = call i32 (i32, i8*, ...) @ok(i32 %440, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %441)
  %443 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %444 = load i32*, i32** %4, align 8
  %445 = call i32 @ITextSelection_GetStart(i32* %444, i32* null)
  store i32 %445, i32* %5, align 4
  %446 = load i32, i32* %5, align 4
  %447 = load i32, i32* @CO_E_RELEASED, align 4
  %448 = icmp eq i32 %446, %447
  %449 = zext i1 %448 to i32
  %450 = load i32, i32* %5, align 4
  %451 = call i32 (i32, i8*, ...) @ok(i32 %449, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %450)
  %452 = load i32*, i32** %4, align 8
  %453 = call i32 @ITextSelection_GetStart(i32* %452, i32* %8)
  store i32 %453, i32* %5, align 4
  %454 = load i32, i32* %5, align 4
  %455 = load i32, i32* @CO_E_RELEASED, align 4
  %456 = icmp eq i32 %454, %455
  %457 = zext i1 %456 to i32
  %458 = load i32, i32* %5, align 4
  %459 = call i32 (i32, i8*, ...) @ok(i32 %457, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %458)
  %460 = load i32*, i32** %4, align 8
  %461 = call i32 @ITextSelection_GetEnd(i32* %460, i32* null)
  store i32 %461, i32* %5, align 4
  %462 = load i32, i32* %5, align 4
  %463 = load i32, i32* @CO_E_RELEASED, align 4
  %464 = icmp eq i32 %462, %463
  %465 = zext i1 %464 to i32
  %466 = load i32, i32* %5, align 4
  %467 = call i32 (i32, i8*, ...) @ok(i32 %465, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %466)
  %468 = load i32*, i32** %4, align 8
  %469 = call i32 @ITextSelection_GetEnd(i32* %468, i32* %9)
  store i32 %469, i32* %5, align 4
  %470 = load i32, i32* %5, align 4
  %471 = load i32, i32* @CO_E_RELEASED, align 4
  %472 = icmp eq i32 %470, %471
  %473 = zext i1 %472 to i32
  %474 = load i32, i32* %5, align 4
  %475 = call i32 (i32, i8*, ...) @ok(i32 %473, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %474)
  %476 = load i32*, i32** %4, align 8
  %477 = call i32 @ITextSelection_Release(i32* %476)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32**) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ITextSelection_GetStart(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @ITextSelection_GetEnd(i32*, i32*) #1

declare dso_local i32 @ITextSelection_SetStart(i32*, i32) #1

declare dso_local i32 @ITextSelection_SetEnd(i32*, i32) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @ITextSelection_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
