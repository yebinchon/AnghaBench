; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextRange_Collapse.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_richole.c_test_ITextRange_Collapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ITextRange_Collapse.test_text1 = internal constant [13 x i8] c"TestSomeText\00", align 1
@WM_SETTEXT = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@tomTrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ITextRange_Collapse\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"got wrong start value: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"got wrong end value: %d\0A\00", align 1
@tomStart = common dso_local global i32 0, align 4
@tomFalse = common dso_local global i32 0, align 4
@tomEnd = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@CO_E_RELEASED = common dso_local global i32 0, align 4
@tomUndefined = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ITextRange_Collapse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ITextRange_Collapse() #0 {
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
  %10 = call i32 @create_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @WM_SETTEXT, align 4
  %13 = call i32 @SendMessageA(i32 %11, i32 %12, i32 0, i32 ptrtoint ([13 x i8]* @test_ITextRange_Collapse.test_text1 to i32))
  store i32 4, i32* %6, align 4
  store i32 8, i32* %7, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ITextDocument_Range(i32* %14, i32 %15, i32 %16, i32** %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @S_OK, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @tomTrue, align 4
  %26 = call i32 @ITextRange_Collapse(i32* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ITextRange_GetStart(i32* %32, i32* %8)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @S_OK, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 4
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @ITextRange_GetEnd(i32* %45, i32* %9)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @S_OK, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %5, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 4
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @ITextRange_Release(i32* %58)
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ITextDocument_Range(i32* %60, i32 %61, i32 %62, i32** %4)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @S_OK, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @tomStart, align 4
  %72 = call i32 @ITextRange_Collapse(i32* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @S_OK, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @ITextRange_GetStart(i32* %78, i32* %8)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @S_OK, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %5, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 4
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @ITextRange_GetEnd(i32* %91, i32* %9)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @S_OK, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %5, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 4
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %9, align 4
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @ITextRange_Release(i32* %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @ITextDocument_Range(i32* %106, i32 %107, i32 %108, i32** %4)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @S_OK, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %5, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* @tomFalse, align 4
  %118 = call i32 @ITextRange_Collapse(i32* %116, i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @S_OK, align 4
  %121 = icmp eq i32 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @ITextRange_GetStart(i32* %124, i32* %8)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @S_OK, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %5, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %132, 8
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %8, align 4
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @ITextRange_GetEnd(i32* %137, i32* %9)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @S_OK, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = load i32, i32* %5, align 4
  %144 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %9, align 4
  %146 = icmp eq i32 %145, 8
  %147 = zext i1 %146 to i32
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (i32, i8*, ...) @ok(i32 %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %148)
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @ITextRange_Release(i32* %150)
  %152 = load i32*, i32** %3, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @ITextDocument_Range(i32* %152, i32 %153, i32 %154, i32** %4)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @S_OK, align 4
  %158 = icmp eq i32 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i32, i32* %5, align 4
  %161 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %160)
  %162 = load i32*, i32** %4, align 8
  %163 = load i32, i32* @tomEnd, align 4
  %164 = call i32 @ITextRange_Collapse(i32* %162, i32 %163)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @S_OK, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 (i32, i8*, ...) @ok(i32 %168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 @ITextRange_GetStart(i32* %170, i32* %8)
  store i32 %171, i32* %5, align 4
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @S_OK, align 4
  %174 = icmp eq i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i32, i32* %5, align 4
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %8, align 4
  %179 = icmp eq i32 %178, 8
  %180 = zext i1 %179 to i32
  %181 = load i32, i32* %8, align 4
  %182 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @ITextRange_GetEnd(i32* %183, i32* %9)
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* @S_OK, align 4
  %187 = icmp eq i32 %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i32, i32* %5, align 4
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %9, align 4
  %192 = icmp eq i32 %191, 8
  %193 = zext i1 %192 to i32
  %194 = load i32, i32* %9, align 4
  %195 = call i32 (i32, i8*, ...) @ok(i32 %193, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  %196 = load i32*, i32** %4, align 8
  %197 = call i32 @ITextRange_Release(i32* %196)
  %198 = load i32*, i32** %3, align 8
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @ITextDocument_Range(i32* %198, i32 %199, i32 %200, i32** %4)
  store i32 %201, i32* %5, align 4
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* @S_OK, align 4
  %204 = icmp eq i32 %202, %203
  %205 = zext i1 %204 to i32
  %206 = load i32, i32* %5, align 4
  %207 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %206)
  %208 = load i32*, i32** %4, align 8
  %209 = call i32 @ITextRange_Collapse(i32* %208, i32 256)
  store i32 %209, i32* %5, align 4
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* @S_OK, align 4
  %212 = icmp eq i32 %210, %211
  %213 = zext i1 %212 to i32
  %214 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %215 = load i32*, i32** %4, align 8
  %216 = call i32 @ITextRange_GetStart(i32* %215, i32* %8)
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* @S_OK, align 4
  %219 = icmp eq i32 %217, %218
  %220 = zext i1 %219 to i32
  %221 = load i32, i32* %5, align 4
  %222 = call i32 (i32, i8*, ...) @ok(i32 %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* %8, align 4
  %224 = icmp eq i32 %223, 4
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* %8, align 4
  %227 = call i32 (i32, i8*, ...) @ok(i32 %225, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %226)
  %228 = load i32*, i32** %4, align 8
  %229 = call i32 @ITextRange_GetEnd(i32* %228, i32* %9)
  store i32 %229, i32* %5, align 4
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* @S_OK, align 4
  %232 = icmp eq i32 %230, %231
  %233 = zext i1 %232 to i32
  %234 = load i32, i32* %5, align 4
  %235 = call i32 (i32, i8*, ...) @ok(i32 %233, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* %9, align 4
  %237 = icmp eq i32 %236, 4
  %238 = zext i1 %237 to i32
  %239 = load i32, i32* %9, align 4
  %240 = call i32 (i32, i8*, ...) @ok(i32 %238, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %239)
  %241 = load i32*, i32** %4, align 8
  %242 = call i32 @ITextRange_Release(i32* %241)
  store i32 6, i32* %6, align 4
  store i32 6, i32* %7, align 4
  %243 = load i32*, i32** %3, align 8
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* %7, align 4
  %246 = call i32 @ITextDocument_Range(i32* %243, i32 %244, i32 %245, i32** %4)
  store i32 %246, i32* %5, align 4
  %247 = load i32, i32* %5, align 4
  %248 = load i32, i32* @S_OK, align 4
  %249 = icmp eq i32 %247, %248
  %250 = zext i1 %249 to i32
  %251 = load i32, i32* %5, align 4
  %252 = call i32 (i32, i8*, ...) @ok(i32 %250, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %251)
  %253 = load i32*, i32** %4, align 8
  %254 = load i32, i32* @tomEnd, align 4
  %255 = call i32 @ITextRange_Collapse(i32* %253, i32 %254)
  store i32 %255, i32* %5, align 4
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* @S_FALSE, align 4
  %258 = icmp eq i32 %256, %257
  %259 = zext i1 %258 to i32
  %260 = call i32 (i32, i8*, ...) @ok(i32 %259, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %261 = load i32*, i32** %4, align 8
  %262 = call i32 @ITextRange_GetStart(i32* %261, i32* %8)
  store i32 %262, i32* %5, align 4
  %263 = load i32, i32* %5, align 4
  %264 = load i32, i32* @S_OK, align 4
  %265 = icmp eq i32 %263, %264
  %266 = zext i1 %265 to i32
  %267 = load i32, i32* %5, align 4
  %268 = call i32 (i32, i8*, ...) @ok(i32 %266, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* %8, align 4
  %270 = icmp eq i32 %269, 6
  %271 = zext i1 %270 to i32
  %272 = load i32, i32* %8, align 4
  %273 = call i32 (i32, i8*, ...) @ok(i32 %271, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %272)
  %274 = load i32*, i32** %4, align 8
  %275 = call i32 @ITextRange_GetEnd(i32* %274, i32* %9)
  store i32 %275, i32* %5, align 4
  %276 = load i32, i32* %5, align 4
  %277 = load i32, i32* @S_OK, align 4
  %278 = icmp eq i32 %276, %277
  %279 = zext i1 %278 to i32
  %280 = load i32, i32* %5, align 4
  %281 = call i32 (i32, i8*, ...) @ok(i32 %279, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* %9, align 4
  %283 = icmp eq i32 %282, 6
  %284 = zext i1 %283 to i32
  %285 = load i32, i32* %9, align 4
  %286 = call i32 (i32, i8*, ...) @ok(i32 %284, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %285)
  %287 = load i32*, i32** %4, align 8
  %288 = call i32 @ITextRange_Release(i32* %287)
  store i32 8, i32* %6, align 4
  store i32 8, i32* %7, align 4
  %289 = load i32*, i32** %3, align 8
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* %7, align 4
  %292 = call i32 @ITextDocument_Range(i32* %289, i32 %290, i32 %291, i32** %4)
  store i32 %292, i32* %5, align 4
  %293 = load i32, i32* %5, align 4
  %294 = load i32, i32* @S_OK, align 4
  %295 = icmp eq i32 %293, %294
  %296 = zext i1 %295 to i32
  %297 = load i32, i32* %5, align 4
  %298 = call i32 (i32, i8*, ...) @ok(i32 %296, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %297)
  %299 = load i32*, i32** %4, align 8
  %300 = load i32, i32* @tomStart, align 4
  %301 = call i32 @ITextRange_Collapse(i32* %299, i32 %300)
  store i32 %301, i32* %5, align 4
  %302 = load i32, i32* %5, align 4
  %303 = load i32, i32* @S_FALSE, align 4
  %304 = icmp eq i32 %302, %303
  %305 = zext i1 %304 to i32
  %306 = call i32 (i32, i8*, ...) @ok(i32 %305, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %307 = load i32*, i32** %4, align 8
  %308 = call i32 @ITextRange_GetStart(i32* %307, i32* %8)
  store i32 %308, i32* %5, align 4
  %309 = load i32, i32* %5, align 4
  %310 = load i32, i32* @S_OK, align 4
  %311 = icmp eq i32 %309, %310
  %312 = zext i1 %311 to i32
  %313 = load i32, i32* %5, align 4
  %314 = call i32 (i32, i8*, ...) @ok(i32 %312, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %313)
  %315 = load i32, i32* %8, align 4
  %316 = icmp eq i32 %315, 8
  %317 = zext i1 %316 to i32
  %318 = load i32, i32* %8, align 4
  %319 = call i32 (i32, i8*, ...) @ok(i32 %317, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %318)
  %320 = load i32*, i32** %4, align 8
  %321 = call i32 @ITextRange_GetEnd(i32* %320, i32* %9)
  store i32 %321, i32* %5, align 4
  %322 = load i32, i32* %5, align 4
  %323 = load i32, i32* @S_OK, align 4
  %324 = icmp eq i32 %322, %323
  %325 = zext i1 %324 to i32
  %326 = load i32, i32* %5, align 4
  %327 = call i32 (i32, i8*, ...) @ok(i32 %325, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %326)
  %328 = load i32, i32* %9, align 4
  %329 = icmp eq i32 %328, 8
  %330 = zext i1 %329 to i32
  %331 = load i32, i32* %9, align 4
  %332 = call i32 (i32, i8*, ...) @ok(i32 %330, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %331)
  %333 = call i32 @release_interfaces(i32* %1, i32** %2, i32** %3, i32* null)
  %334 = load i32*, i32** %4, align 8
  %335 = load i32, i32* @tomStart, align 4
  %336 = call i32 @ITextRange_Collapse(i32* %334, i32 %335)
  store i32 %336, i32* %5, align 4
  %337 = load i32, i32* %5, align 4
  %338 = load i32, i32* @CO_E_RELEASED, align 4
  %339 = icmp eq i32 %337, %338
  %340 = zext i1 %339 to i32
  %341 = load i32, i32* %5, align 4
  %342 = call i32 (i32, i8*, ...) @ok(i32 %340, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %341)
  %343 = load i32*, i32** %4, align 8
  %344 = load i32, i32* @tomUndefined, align 4
  %345 = call i32 @ITextRange_Collapse(i32* %343, i32 %344)
  store i32 %345, i32* %5, align 4
  %346 = load i32, i32* %5, align 4
  %347 = load i32, i32* @CO_E_RELEASED, align 4
  %348 = icmp eq i32 %346, %347
  %349 = zext i1 %348 to i32
  %350 = load i32, i32* %5, align 4
  %351 = call i32 (i32, i8*, ...) @ok(i32 %349, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %350)
  %352 = load i32*, i32** %4, align 8
  %353 = call i32 @ITextRange_Release(i32* %352)
  ret void
}

declare dso_local i32 @create_interfaces(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ITextDocument_Range(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @ITextRange_Collapse(i32*, i32) #1

declare dso_local i32 @ITextRange_GetStart(i32*, i32*) #1

declare dso_local i32 @ITextRange_GetEnd(i32*, i32*) #1

declare dso_local i32 @ITextRange_Release(i32*) #1

declare dso_local i32 @release_interfaces(i32*, i32**, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
