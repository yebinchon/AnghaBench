; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-condition.c_test_condition_test_kernel_version.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-condition.c_test_condition_test_kernel_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i8* }

@CONDITION_KERNEL_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"*thisreallyshouldntbeinthekernelversion*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"> 0.1.2\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c">0.1.2\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"'>0.1.2' '<9.0.0'\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"> 0.1.2 < 9.0.0\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c">= 0.1.2\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"< 0.1.2\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"<= 0.1.2\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"= 0.1.2\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"< 4711.8.15\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"<= 4711.8.15\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"= 4711.8.15\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"> 4711.8.15\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c">= 4711.8.15\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"=  \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"<   \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_condition_test_kernel_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_condition_test_kernel_version() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.utsname, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %5 = call i32* @condition_new(i32 %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = ptrtoint i32* %6 to i32
  %8 = call i32 @assert_se(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @condition_test(i32* %9)
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @condition_free(i32* %14)
  %16 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %17 = call i32* @condition_new(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store i32* %17, i32** %1, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = ptrtoint i32* %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @condition_test(i32* %21)
  %23 = icmp sgt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @condition_free(i32* %26)
  %28 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %29 = call i32* @condition_new(i32 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  store i32* %29, i32** %1, align 8
  %30 = load i32*, i32** %1, align 8
  %31 = ptrtoint i32* %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @condition_test(i32* %33)
  %35 = icmp sgt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @condition_free(i32* %38)
  %40 = call i64 @uname(%struct.utsname* %2)
  %41 = icmp sge i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert_se(i32 %42)
  %44 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %45 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32* @condition_new(i32 %44, i8* %46, i32 0, i32 0)
  store i32* %47, i32** %1, align 8
  %48 = load i32*, i32** %1, align 8
  %49 = ptrtoint i32* %48 to i32
  %50 = call i32 @assert_se(i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @condition_test(i32* %51)
  %53 = icmp sgt i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert_se(i32 %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @condition_free(i32* %56)
  %58 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strshorten(i8* %59, i32 4)
  %61 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strchr(i8* %62, i32 0)
  %64 = call i32 @strcpy(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %66 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32* @condition_new(i32 %65, i8* %67, i32 0, i32 0)
  store i32* %68, i32** %1, align 8
  %69 = load i32*, i32** %1, align 8
  %70 = ptrtoint i32* %69 to i32
  %71 = call i32 @assert_se(i32 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = call i32 @condition_test(i32* %72)
  %74 = icmp sgt i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert_se(i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @condition_free(i32* %77)
  %79 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %80 = call i32* @condition_new(i32 %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  store i32* %80, i32** %1, align 8
  %81 = load i32*, i32** %1, align 8
  %82 = ptrtoint i32* %81 to i32
  %83 = call i32 @assert_se(i32 %82)
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @condition_test(i32* %84)
  %86 = icmp sgt i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert_se(i32 %87)
  %89 = load i32*, i32** %1, align 8
  %90 = call i32 @condition_free(i32* %89)
  %91 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %92 = call i32* @condition_new(i32 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  store i32* %92, i32** %1, align 8
  %93 = load i32*, i32** %1, align 8
  %94 = ptrtoint i32* %93 to i32
  %95 = call i32 @assert_se(i32 %94)
  %96 = load i32*, i32** %1, align 8
  %97 = call i32 @condition_test(i32* %96)
  %98 = icmp sgt i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert_se(i32 %99)
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @condition_free(i32* %101)
  %103 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %104 = call i32* @condition_new(i32 %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  store i32* %104, i32** %1, align 8
  %105 = load i32*, i32** %1, align 8
  %106 = ptrtoint i32* %105 to i32
  %107 = call i32 @assert_se(i32 %106)
  %108 = load i32*, i32** %1, align 8
  %109 = call i32 @condition_test(i32* %108)
  %110 = icmp sgt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert_se(i32 %111)
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @condition_free(i32* %113)
  %115 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %116 = call i32* @condition_new(i32 %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0)
  store i32* %116, i32** %1, align 8
  %117 = load i32*, i32** %1, align 8
  %118 = ptrtoint i32* %117 to i32
  %119 = call i32 @assert_se(i32 %118)
  %120 = load i32*, i32** %1, align 8
  %121 = call i32 @condition_test(i32* %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert_se(i32 %125)
  %127 = load i32*, i32** %1, align 8
  %128 = call i32 @condition_free(i32* %127)
  %129 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %130 = call i32* @condition_new(i32 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0)
  store i32* %130, i32** %1, align 8
  %131 = load i32*, i32** %1, align 8
  %132 = ptrtoint i32* %131 to i32
  %133 = call i32 @assert_se(i32 %132)
  %134 = load i32*, i32** %1, align 8
  %135 = call i32 @condition_test(i32* %134)
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp eq i32 %135, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert_se(i32 %139)
  %141 = load i32*, i32** %1, align 8
  %142 = call i32 @condition_free(i32* %141)
  %143 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %144 = call i32* @condition_new(i32 %143, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 0)
  store i32* %144, i32** %1, align 8
  %145 = load i32*, i32** %1, align 8
  %146 = ptrtoint i32* %145 to i32
  %147 = call i32 @assert_se(i32 %146)
  %148 = load i32*, i32** %1, align 8
  %149 = call i32 @condition_test(i32* %148)
  %150 = icmp sgt i32 %149, 0
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert_se(i32 %151)
  %153 = load i32*, i32** %1, align 8
  %154 = call i32 @condition_free(i32* %153)
  %155 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %156 = call i32* @condition_new(i32 %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 0)
  store i32* %156, i32** %1, align 8
  %157 = load i32*, i32** %1, align 8
  %158 = ptrtoint i32* %157 to i32
  %159 = call i32 @assert_se(i32 %158)
  %160 = load i32*, i32** %1, align 8
  %161 = call i32 @condition_test(i32* %160)
  %162 = icmp eq i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert_se(i32 %163)
  %165 = load i32*, i32** %1, align 8
  %166 = call i32 @condition_free(i32* %165)
  %167 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %168 = call i32* @condition_new(i32 %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 0)
  store i32* %168, i32** %1, align 8
  %169 = load i32*, i32** %1, align 8
  %170 = ptrtoint i32* %169 to i32
  %171 = call i32 @assert_se(i32 %170)
  %172 = load i32*, i32** %1, align 8
  %173 = call i32 @condition_test(i32* %172)
  %174 = icmp eq i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert_se(i32 %175)
  %177 = load i32*, i32** %1, align 8
  %178 = call i32 @condition_free(i32* %177)
  %179 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %180 = call i32* @condition_new(i32 %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 0)
  store i32* %180, i32** %1, align 8
  %181 = load i32*, i32** %1, align 8
  %182 = ptrtoint i32* %181 to i32
  %183 = call i32 @assert_se(i32 %182)
  %184 = load i32*, i32** %1, align 8
  %185 = call i32 @condition_test(i32* %184)
  %186 = icmp eq i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert_se(i32 %187)
  %189 = load i32*, i32** %1, align 8
  %190 = call i32 @condition_free(i32* %189)
  %191 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %192 = call i32* @condition_new(i32 %191, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 0)
  store i32* %192, i32** %1, align 8
  %193 = load i32*, i32** %1, align 8
  %194 = ptrtoint i32* %193 to i32
  %195 = call i32 @assert_se(i32 %194)
  %196 = load i32*, i32** %1, align 8
  %197 = call i32 @condition_test(i32* %196)
  %198 = icmp sgt i32 %197, 0
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert_se(i32 %199)
  %201 = load i32*, i32** %1, align 8
  %202 = call i32 @condition_free(i32* %201)
  %203 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %204 = call i32* @condition_new(i32 %203, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 0, i32 0)
  store i32* %204, i32** %1, align 8
  %205 = load i32*, i32** %1, align 8
  %206 = ptrtoint i32* %205 to i32
  %207 = call i32 @assert_se(i32 %206)
  %208 = load i32*, i32** %1, align 8
  %209 = call i32 @condition_test(i32* %208)
  %210 = icmp sgt i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert_se(i32 %211)
  %213 = load i32*, i32** %1, align 8
  %214 = call i32 @condition_free(i32* %213)
  %215 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %216 = call i32* @condition_new(i32 %215, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 0)
  store i32* %216, i32** %1, align 8
  %217 = load i32*, i32** %1, align 8
  %218 = ptrtoint i32* %217 to i32
  %219 = call i32 @assert_se(i32 %218)
  %220 = load i32*, i32** %1, align 8
  %221 = call i32 @condition_test(i32* %220)
  %222 = icmp eq i32 %221, 0
  %223 = zext i1 %222 to i32
  %224 = call i32 @assert_se(i32 %223)
  %225 = load i32*, i32** %1, align 8
  %226 = call i32 @condition_free(i32* %225)
  %227 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %228 = call i32* @condition_new(i32 %227, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 0, i32 0)
  store i32* %228, i32** %1, align 8
  %229 = load i32*, i32** %1, align 8
  %230 = ptrtoint i32* %229 to i32
  %231 = call i32 @assert_se(i32 %230)
  %232 = load i32*, i32** %1, align 8
  %233 = call i32 @condition_test(i32* %232)
  %234 = icmp eq i32 %233, 0
  %235 = zext i1 %234 to i32
  %236 = call i32 @assert_se(i32 %235)
  %237 = load i32*, i32** %1, align 8
  %238 = call i32 @condition_free(i32* %237)
  %239 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %240 = call i32* @condition_new(i32 %239, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 0, i32 0)
  store i32* %240, i32** %1, align 8
  %241 = load i32*, i32** %1, align 8
  %242 = ptrtoint i32* %241 to i32
  %243 = call i32 @assert_se(i32 %242)
  %244 = load i32*, i32** %1, align 8
  %245 = call i32 @condition_test(i32* %244)
  %246 = icmp eq i32 %245, 0
  %247 = zext i1 %246 to i32
  %248 = call i32 @assert_se(i32 %247)
  %249 = load i32*, i32** %1, align 8
  %250 = call i32 @condition_free(i32* %249)
  %251 = call i64 @uname(%struct.utsname* %2)
  %252 = icmp sge i64 %251, 0
  %253 = zext i1 %252 to i32
  %254 = call i32 @assert_se(i32 %253)
  %255 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i8* @strjoina(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %256)
  store i8* %257, i8** %3, align 8
  %258 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %259 = load i8*, i8** %3, align 8
  %260 = call i32* @condition_new(i32 %258, i8* %259, i32 0, i32 0)
  store i32* %260, i32** %1, align 8
  %261 = load i32*, i32** %1, align 8
  %262 = ptrtoint i32* %261 to i32
  %263 = call i32 @assert_se(i32 %262)
  %264 = load i32*, i32** %1, align 8
  %265 = call i32 @condition_test(i32* %264)
  %266 = icmp sgt i32 %265, 0
  %267 = zext i1 %266 to i32
  %268 = call i32 @assert_se(i32 %267)
  %269 = load i32*, i32** %1, align 8
  %270 = call i32 @condition_free(i32* %269)
  %271 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = call i8* @strjoina(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %272)
  store i8* %273, i8** %3, align 8
  %274 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %275 = load i8*, i8** %3, align 8
  %276 = call i32* @condition_new(i32 %274, i8* %275, i32 0, i32 0)
  store i32* %276, i32** %1, align 8
  %277 = load i32*, i32** %1, align 8
  %278 = ptrtoint i32* %277 to i32
  %279 = call i32 @assert_se(i32 %278)
  %280 = load i32*, i32** %1, align 8
  %281 = call i32 @condition_test(i32* %280)
  %282 = icmp sgt i32 %281, 0
  %283 = zext i1 %282 to i32
  %284 = call i32 @assert_se(i32 %283)
  %285 = load i32*, i32** %1, align 8
  %286 = call i32 @condition_free(i32* %285)
  %287 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = call i8* @strjoina(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %288)
  store i8* %289, i8** %3, align 8
  %290 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %291 = load i8*, i8** %3, align 8
  %292 = call i32* @condition_new(i32 %290, i8* %291, i32 0, i32 0)
  store i32* %292, i32** %1, align 8
  %293 = load i32*, i32** %1, align 8
  %294 = ptrtoint i32* %293 to i32
  %295 = call i32 @assert_se(i32 %294)
  %296 = load i32*, i32** %1, align 8
  %297 = call i32 @condition_test(i32* %296)
  %298 = icmp sgt i32 %297, 0
  %299 = zext i1 %298 to i32
  %300 = call i32 @assert_se(i32 %299)
  %301 = load i32*, i32** %1, align 8
  %302 = call i32 @condition_free(i32* %301)
  %303 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = call i8* @strjoina(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %304)
  store i8* %305, i8** %3, align 8
  %306 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %307 = load i8*, i8** %3, align 8
  %308 = call i32* @condition_new(i32 %306, i8* %307, i32 0, i32 0)
  store i32* %308, i32** %1, align 8
  %309 = load i32*, i32** %1, align 8
  %310 = ptrtoint i32* %309 to i32
  %311 = call i32 @assert_se(i32 %310)
  %312 = load i32*, i32** %1, align 8
  %313 = call i32 @condition_test(i32* %312)
  %314 = icmp eq i32 %313, 0
  %315 = zext i1 %314 to i32
  %316 = call i32 @assert_se(i32 %315)
  %317 = load i32*, i32** %1, align 8
  %318 = call i32 @condition_free(i32* %317)
  %319 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %320 = load i8*, i8** %319, align 8
  %321 = call i8* @strjoina(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %320)
  store i8* %321, i8** %3, align 8
  %322 = load i32, i32* @CONDITION_KERNEL_VERSION, align 4
  %323 = load i8*, i8** %3, align 8
  %324 = call i32* @condition_new(i32 %322, i8* %323, i32 0, i32 0)
  store i32* %324, i32** %1, align 8
  %325 = load i32*, i32** %1, align 8
  %326 = ptrtoint i32* %325 to i32
  %327 = call i32 @assert_se(i32 %326)
  %328 = load i32*, i32** %1, align 8
  %329 = call i32 @condition_test(i32* %328)
  %330 = icmp eq i32 %329, 0
  %331 = zext i1 %330 to i32
  %332 = call i32 @assert_se(i32 %331)
  %333 = load i32*, i32** %1, align 8
  %334 = call i32 @condition_free(i32* %333)
  ret void
}

declare dso_local i32* @condition_new(i32, i8*, i32, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @condition_test(i32*) #1

declare dso_local i32 @condition_free(i32*) #1

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i32 @strshorten(i8*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strchr(i8*, i32) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
