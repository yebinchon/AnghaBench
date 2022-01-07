; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetFullPathNameW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetFullPathNameW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32*, i32, i32*, i32**, i32 }

@test_GetFullPathNameW.emptyW = internal constant [1 x i8] zeroinitializer, align 1
@test_GetFullPathNameW.deadbeefW = internal constant [9 x i8] c"deadbeef\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"GetFullPathNameW is not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"[%d] Expected GetFullPathNameW to return 0, got %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"[%d] Expected the output buffer to be unchanged, got %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"[%d] Expected output file part pointer to be untouched, got %p\0A\00", align 1
@ERROR_INVALID_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"[%d] Expected GetLastError() to return 0xdeadbeef, got %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetFullPathNameW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetFullPathNameW() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x %struct.anon], align 16
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %6, i64 0, i64 0
  %13 = bitcast %struct.anon* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 40, i1 false)
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %12, i64 1
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 1
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 3
  %19 = bitcast i8** %3 to i32**
  store i32** %19, i32*** %18, align 8
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 4
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %14, i64 1
  %22 = bitcast %struct.anon* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 40, i1 false)
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1
  %24 = load i32, i32* @MAX_PATH, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %21, i64 1
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  %28 = load i32, i32* @MAX_PATH, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 2
  %30 = bitcast i8* %11 to i32*
  store i32* %30, i32** %29, align 8
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 3
  store i32** null, i32*** %31, align 8
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 4
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %25, i64 1
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 1
  %36 = load i32, i32* @MAX_PATH, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 2
  %38 = bitcast i8* %11 to i32*
  store i32* %38, i32** %37, align 8
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 3
  %40 = bitcast i8** %3 to i32**
  store i32** %40, i32*** %39, align 8
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 4
  store i32 1, i32* %41, align 8
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %33, i64 1
  %43 = bitcast %struct.anon* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %43, i8 0, i64 40, i1 false)
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 0
  store i32* bitcast ([1 x i8]* @test_GetFullPathNameW.emptyW to i32*), i32** %44, align 8
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %42, i64 1
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 0
  store i32* bitcast ([1 x i8]* @test_GetFullPathNameW.emptyW to i32*), i32** %46, align 8
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 1
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 3
  %50 = bitcast i8** %3 to i32**
  store i32** %50, i32*** %49, align 8
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 4
  store i32 1, i32* %51, align 8
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %45, i64 1
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 0
  store i32* bitcast ([1 x i8]* @test_GetFullPathNameW.emptyW to i32*), i32** %53, align 8
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 1
  %55 = load i32, i32* @MAX_PATH, align 4
  store i32 %55, i32* %54, align 8
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 3
  store i32** null, i32*** %57, align 8
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 4
  store i32 0, i32* %58, align 8
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %52, i64 1
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 0
  store i32* bitcast ([1 x i8]* @test_GetFullPathNameW.emptyW to i32*), i32** %60, align 8
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 1
  %62 = load i32, i32* @MAX_PATH, align 4
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 2
  %64 = bitcast i8* %11 to i32*
  store i32* %64, i32** %63, align 8
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 3
  store i32** null, i32*** %65, align 8
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 4
  store i32 0, i32* %66, align 8
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %59, i64 1
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 0
  store i32* bitcast ([1 x i8]* @test_GetFullPathNameW.emptyW to i32*), i32** %68, align 8
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 1
  %70 = load i32, i32* @MAX_PATH, align 4
  store i32 %70, i32* %69, align 8
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 2
  %72 = bitcast i8* %11 to i32*
  store i32* %72, i32** %71, align 8
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 3
  %74 = bitcast i8** %3 to i32**
  store i32** %74, i32*** %73, align 8
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 4
  store i32 1, i32* %75, align 8
  %76 = call i32 @SetLastError(i32 -559038737)
  %77 = call i32 @GetFullPathNameW(i32* null, i32 0, i32* null, i32** null)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %0
  %81 = call i32 (...) @GetLastError()
  %82 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %165

86:                                               ; preds = %80, %0
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %161, %86
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp ult i64 %89, 10
  br i1 %90, label %91, label %164

91:                                               ; preds = %87
  %92 = call i32 @SetLastError(i32 -559038737)
  %93 = call i32 @lstrcpyW(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetFullPathNameW.deadbeefW, i64 0, i64 0))
  store i8* inttoptr (i64 3735928559 to i8*), i8** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %6, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %6, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %6, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %6, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.anon, %struct.anon* %111, i32 0, i32 3
  %113 = load i32**, i32*** %112, align 8
  %114 = call i32 @GetFullPathNameW(i32* %98, i32 %103, i32* %108, i32** %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 (i32, i8*, i32, ...) @ok(i32 %118, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %120)
  %122 = call i32 @lstrcmpW(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_GetFullPathNameW.deadbeefW, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @wine_dbgstr_w(i8* %11)
  %128 = call i32 (i32, i8*, i32, ...) @ok(i32 %125, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %127)
  %129 = load i8*, i8** %3, align 8
  %130 = icmp eq i8* %129, inttoptr (i64 3735928559 to i8*)
  br i1 %130, label %143, label %131

131:                                              ; preds = %91
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %6, i64 0, i64 %133
  %135 = getelementptr inbounds %struct.anon, %struct.anon* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i8*, i8** %3, align 8
  %140 = icmp eq i8* %139, null
  br label %141

141:                                              ; preds = %138, %131
  %142 = phi i1 [ false, %131 ], [ %140, %138 ]
  br label %143

143:                                              ; preds = %141, %91
  %144 = phi i1 [ true, %91 ], [ %142, %141 ]
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %5, align 4
  %147 = load i8*, i8** %3, align 8
  %148 = call i32 (i32, i8*, i32, ...) @ok(i32 %145, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %146, i8* %147)
  %149 = call i32 (...) @GetLastError()
  %150 = icmp eq i32 %149, -559038737
  br i1 %150, label %155, label %151

151:                                              ; preds = %143
  %152 = call i32 (...) @GetLastError()
  %153 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %154 = icmp eq i32 %152, %153
  br label %155

155:                                              ; preds = %151, %143
  %156 = phi i1 [ true, %143 ], [ %154, %151 ]
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %5, align 4
  %159 = call i32 (...) @GetLastError()
  %160 = call i32 (i32, i8*, i32, ...) @ok(i32 %157, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  br label %87

164:                                              ; preds = %87
  store i32 0, i32* %7, align 4
  br label %165

165:                                              ; preds = %164, %84
  %166 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %7, align 4
  switch i32 %167, label %169 [
    i32 0, label %168
    i32 1, label %168
  ]

168:                                              ; preds = %165, %165
  ret void

169:                                              ; preds = %165
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SetLastError(i32) #3

declare dso_local i32 @GetFullPathNameW(i32*, i32, i32*, i32**) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i32 @win_skip(i8*) #3

declare dso_local i32 @lstrcpyW(i8*, i8*) #3

declare dso_local i32 @ok(i32, i8*, i32, ...) #3

declare dso_local i32 @lstrcmpW(i8*, i8*) #3

declare dso_local i32 @wine_dbgstr_w(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
