; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_istream.c_test_SHCreateStreamOnFileA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_istream.c_test_SHCreateStreamOnFileA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_SHCreateStreamOnFileA.testA_txt = internal constant [11 x i8] c"\\testA.txt\00", align 1
@.str = private unnamed_addr constant [57 x i8] c"SHCreateStreamOnFileA: testing mode %d, STGM flags %08x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Not supported\0A\00", align 1
@ERROR_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@ERROR_BAD_PATHNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [128 x i8] c"SHCreateStreamOnFileA: expected HRESULT_FROM_WIN32(ERROR_PATH_NOT_FOUND) or HRESULT_FROM_WIN32(ERROR_BAD_PATHNAME), got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"SHCreateStreamOnFileA: expected a NULL IStream object, got %p\0A\00", align 1
@STGM_CONVERT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"SHCreateStreamOnFileA: expected E_INVALIDARG, got 0x%08x\0A\00", align 1
@STGM_DELETEONRELEASE = common dso_local global i32 0, align 4
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@STGM_FAILIFTHERE = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [86 x i8] c"SHCreateStreamOnFileA: expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got 0x%08x\0A\00", align 1
@STGM_CREATE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"SHCreateStreamOnFileA: expected S_OK, got 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"SHCreateStreamOnFileA: expected a valid IStream object, got NULL\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"SHCreateStreamOnFileA: expected 0, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [65 x i8] c"SHCreateStreamOnFileA: could not delete file '%s', got error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_SHCreateStreamOnFileA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHCreateStreamOnFileA(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @trace(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = call i32 @GetTempPathA(i32 %19, i8* %15)
  %21 = call i32 @lstrcatA(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_SHCreateStreamOnFileA.testA_txt, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @SHCreateStreamOnFileA(i8* null, i32 %24, i32** %5)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @E_INVALIDARG, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 @win_skip(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %219

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ERROR_PATH_NOT_FOUND, align 4
  %34 = call i32 @HRESULT_FROM_WIN32(i32 %33)
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ERROR_BAD_PATHNAME, align 4
  %39 = call i32 @HRESULT_FROM_WIN32(i32 %38)
  %40 = icmp eq i32 %37, %39
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ true, %31 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = icmp eq i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32* %49)
  store i32* null, i32** %5, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @STGM_CONVERT, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @SHCreateStreamOnFileA(i8* %15, i32 %55, i32** %5)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @E_INVALIDARG, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %5, align 8
  %64 = icmp eq i32* %63, null
  %65 = zext i1 %64 to i32
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32* %66)
  store i32* null, i32** %5, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @STGM_DELETEONRELEASE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @SHCreateStreamOnFileA(i8* %15, i32 %72, i32** %5)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @E_INVALIDARG, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = icmp eq i32* %80, null
  %82 = zext i1 %81 to i32
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32* %83)
  store i32* null, i32** %5, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @STGM_TRANSACTED, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %4, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @SHCreateStreamOnFileA(i8* %15, i32 %89, i32** %5)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @E_INVALIDARG, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %6, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = icmp eq i32* %97, null
  %99 = zext i1 %98 to i32
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32* %100)
  store i32* null, i32** %5, align 8
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @STGM_FAILIFTHERE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %4, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @SHCreateStreamOnFileA(i8* %15, i32 %106, i32** %5)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %110 = call i32 @HRESULT_FROM_WIN32(i32 %109)
  %111 = icmp eq i32 %108, %110
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %6, align 4
  %114 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** %5, align 8
  %116 = icmp eq i32* %115, null
  %117 = zext i1 %116 to i32
  %118 = load i32*, i32** %5, align 8
  %119 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32* %118)
  store i32* null, i32** %5, align 8
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @STGM_CREATE, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* %4, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @SHCreateStreamOnFileA(i8* %15, i32 %124, i32** %5)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @S_OK, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %6, align 4
  %131 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %130)
  %132 = load i32*, i32** %5, align 8
  %133 = icmp ne i32* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0))
  %136 = load i32*, i32** %5, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %41
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @test_stream_qi(i32* %139)
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @test_IStream_invalid_operations(i32* %141, i32 %142)
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @IStream_Release(i32* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %138, %41
  store i32* null, i32** %5, align 8
  %152 = load i32, i32* %3, align 4
  %153 = load i32, i32* @STGM_FAILIFTHERE, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* %4, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @SHCreateStreamOnFileA(i8* %15, i32 %156, i32** %5)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @S_OK, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = load i32, i32* %6, align 4
  %163 = call i32 (i32, i8*, ...) @ok(i32 %161, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %162)
  %164 = load i32*, i32** %5, align 8
  %165 = icmp ne i32* %164, null
  %166 = zext i1 %165 to i32
  %167 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0))
  %168 = load i32*, i32** %5, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %181

170:                                              ; preds = %151
  %171 = load i32*, i32** %5, align 8
  %172 = load i32, i32* %3, align 4
  %173 = call i32 @test_IStream_invalid_operations(i32* %171, i32 %172)
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @IStream_Release(i32* %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp eq i32 %176, 0
  %178 = zext i1 %177 to i32
  %179 = load i32, i32* %7, align 4
  %180 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %170, %151
  store i32* null, i32** %5, align 8
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* @STGM_CREATE, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* %4, align 4
  %186 = or i32 %184, %185
  %187 = call i32 @SHCreateStreamOnFileA(i8* %15, i32 %186, i32** %5)
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* @S_OK, align 4
  %190 = icmp eq i32 %188, %189
  %191 = zext i1 %190 to i32
  %192 = load i32, i32* %6, align 4
  %193 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %192)
  %194 = load i32*, i32** %5, align 8
  %195 = icmp ne i32* %194, null
  %196 = zext i1 %195 to i32
  %197 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0))
  %198 = load i32*, i32** %5, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %218

200:                                              ; preds = %181
  %201 = load i32*, i32** %5, align 8
  %202 = load i32, i32* %3, align 4
  %203 = call i32 @test_stream_read_write(i32* %201, i32 %202)
  %204 = load i32*, i32** %5, align 8
  %205 = load i32, i32* %3, align 4
  %206 = call i32 @test_IStream_invalid_operations(i32* %204, i32 %205)
  %207 = load i32*, i32** %5, align 8
  %208 = call i32 @IStream_Release(i32* %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp eq i32 %209, 0
  %211 = zext i1 %210 to i32
  %212 = load i32, i32* %7, align 4
  %213 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %212)
  %214 = call i32 @DeleteFileA(i8* %15)
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = call i32 (...) @GetLastError()
  %217 = call i32 (i32, i8*, ...) @ok(i32 %215, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0), i8* %15, i32 %216)
  br label %218

218:                                              ; preds = %200, %181
  store i32 0, i32* %10, align 4
  br label %219

219:                                              ; preds = %218, %29
  %220 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %220)
  %221 = load i32, i32* %10, align 4
  switch i32 %221, label %223 [
    i32 0, label %222
    i32 1, label %222
  ]

222:                                              ; preds = %219, %219
  ret void

223:                                              ; preds = %219
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace(i8*, i32, i32) #2

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i32 @SHCreateStreamOnFileA(i8*, i32, i32**) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @test_stream_qi(i32*) #2

declare dso_local i32 @test_IStream_invalid_operations(i32*, i32) #2

declare dso_local i32 @IStream_Release(i32*) #2

declare dso_local i32 @test_stream_read_write(i32*, i32) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
