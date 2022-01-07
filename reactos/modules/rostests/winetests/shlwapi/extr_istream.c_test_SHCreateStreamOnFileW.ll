; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_istream.c_test_SHCreateStreamOnFileW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_istream.c_test_SHCreateStreamOnFileW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@test_SHCreateStreamOnFileW.testW_txt = internal constant [11 x i8] c"\\testW.txt\00", align 1
@.str = private unnamed_addr constant [57 x i8] c"SHCreateStreamOnFileW: testing mode %d, STGM flags %08x\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@STGM_CONVERT = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"SHCreateStreamOnFileW: expected E_INVALIDARG, got 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"SHCreateStreamOnFileW: expected a NULL IStream object, got %p\0A\00", align 1
@STGM_DELETEONRELEASE = common dso_local global i32 0, align 4
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@STGM_FAILIFTHERE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Not supported\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [86 x i8] c"SHCreateStreamOnFileW: expected HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND), got 0x%08x\0A\00", align 1
@STGM_CREATE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"SHCreateStreamOnFileW: expected S_OK, got 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"SHCreateStreamOnFileW: expected a valid IStream object, got NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"SHCreateStreamOnFileW: expected 0, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"SHCreateStreamOnFileW: could not delete the test file, got error %d\0A\00", align 1
@ERROR_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_SHCreateStreamOnFileW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHCreateStreamOnFileW(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @trace(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = call i32 @GetTempPathA(i32 %23, i8* %19)
  %25 = call i32 @lstrcatA(i8* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_SHCreateStreamOnFileW.testW_txt, i64 0, i64 0))
  %26 = load i32, i32* @CP_ACP, align 4
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = call i32 @MultiByteToWideChar(i32 %26, i32 0, i8* %19, i32 -1, i32* %16, i32 %27)
  store i32* null, i32** %5, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @STGM_CONVERT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %31, %32
  %34 = call i32* @SHCreateStreamOnFileW(i32* %16, i32 %33, i32** %5)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** @E_INVALIDARG, align 8
  %37 = icmp eq i32* %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32* %44)
  store i32* null, i32** %5, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @STGM_DELETEONRELEASE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %48, %49
  %51 = call i32* @SHCreateStreamOnFileW(i32* %16, i32 %50, i32** %5)
  store i32* %51, i32** %6, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** @E_INVALIDARG, align 8
  %54 = icmp eq i32* %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = icmp eq i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32* %61)
  store i32* null, i32** %5, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @STGM_TRANSACTED, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %65, %66
  %68 = call i32* @SHCreateStreamOnFileW(i32* %16, i32 %67, i32** %5)
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** @E_INVALIDARG, align 8
  %71 = icmp eq i32* %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = icmp eq i32* %75, null
  %77 = zext i1 %76 to i32
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32* %78)
  store i32* null, i32** %5, align 8
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @STGM_FAILIFTHERE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %82, %83
  %85 = call i32* @SHCreateStreamOnFileW(i32* %16, i32 %84, i32** %5)
  store i32* %85, i32** %6, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = load i32*, i32** @E_INVALIDARG, align 8
  %88 = icmp eq i32* %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %2
  %90 = call i32 @win_skip(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %203

91:                                               ; preds = %2
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %94 = call i32* @HRESULT_FROM_WIN32(i32 %93)
  %95 = icmp eq i32* %92, %94
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i32* %97)
  %99 = load i32*, i32** %5, align 8
  %100 = icmp eq i32* %99, null
  %101 = zext i1 %100 to i32
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32* %102)
  store i32* null, i32** %5, align 8
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @STGM_CREATE, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %4, align 4
  %108 = or i32 %106, %107
  %109 = call i32* @SHCreateStreamOnFileW(i32* %16, i32 %108, i32** %5)
  store i32* %109, i32** %6, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** @S_OK, align 8
  %112 = icmp eq i32* %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32* %114)
  %116 = load i32*, i32** %5, align 8
  %117 = icmp ne i32* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32*, i32** %5, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %135

122:                                              ; preds = %91
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @test_stream_qi(i32* %123)
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @test_IStream_invalid_operations(i32* %125, i32 %126)
  %128 = load i32*, i32** %5, align 8
  %129 = call i32* @IStream_Release(i32* %128)
  store i32* %129, i32** %7, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = icmp eq i32* %130, null
  %132 = zext i1 %131 to i32
  %133 = load i32*, i32** %7, align 8
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32* %133)
  br label %135

135:                                              ; preds = %122, %91
  store i32* null, i32** %5, align 8
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @STGM_FAILIFTHERE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* %4, align 4
  %140 = or i32 %138, %139
  %141 = call i32* @SHCreateStreamOnFileW(i32* %16, i32 %140, i32** %5)
  store i32* %141, i32** %6, align 8
  %142 = load i32*, i32** %6, align 8
  %143 = load i32*, i32** @S_OK, align 8
  %144 = icmp eq i32* %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32*, i32** %6, align 8
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32* %146)
  %148 = load i32*, i32** %5, align 8
  %149 = icmp ne i32* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  %152 = load i32*, i32** %5, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %165

154:                                              ; preds = %135
  %155 = load i32*, i32** %5, align 8
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @test_IStream_invalid_operations(i32* %155, i32 %156)
  %158 = load i32*, i32** %5, align 8
  %159 = call i32* @IStream_Release(i32* %158)
  store i32* %159, i32** %7, align 8
  %160 = load i32*, i32** %7, align 8
  %161 = icmp eq i32* %160, null
  %162 = zext i1 %161 to i32
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32* %163)
  br label %165

165:                                              ; preds = %154, %135
  store i32* null, i32** %5, align 8
  %166 = load i32, i32* %3, align 4
  %167 = load i32, i32* @STGM_CREATE, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* %4, align 4
  %170 = or i32 %168, %169
  %171 = call i32* @SHCreateStreamOnFileW(i32* %16, i32 %170, i32** %5)
  store i32* %171, i32** %6, align 8
  %172 = load i32*, i32** %6, align 8
  %173 = load i32*, i32** @S_OK, align 8
  %174 = icmp eq i32* %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 (i32, i8*, ...) @ok(i32 %175, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32* %176)
  %178 = load i32*, i32** %5, align 8
  %179 = icmp ne i32* %178, null
  %180 = zext i1 %179 to i32
  %181 = call i32 (i32, i8*, ...) @ok(i32 %180, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  %182 = load i32*, i32** %5, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %202

184:                                              ; preds = %165
  %185 = load i32*, i32** %5, align 8
  %186 = load i32, i32* %3, align 4
  %187 = call i32 @test_stream_read_write(i32* %185, i32 %186)
  %188 = load i32*, i32** %5, align 8
  %189 = load i32, i32* %3, align 4
  %190 = call i32 @test_IStream_invalid_operations(i32* %188, i32 %189)
  %191 = load i32*, i32** %5, align 8
  %192 = call i32* @IStream_Release(i32* %191)
  store i32* %192, i32** %7, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = icmp eq i32* %193, null
  %195 = zext i1 %194 to i32
  %196 = load i32*, i32** %7, align 8
  %197 = call i32 (i32, i8*, ...) @ok(i32 %195, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32* %196)
  %198 = call i32 @DeleteFileA(i8* %19)
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = call i32* (...) @GetLastError()
  %201 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0), i32* %200)
  br label %202

202:                                              ; preds = %184, %165
  store i32 0, i32* %11, align 4
  br label %203

203:                                              ; preds = %202, %89
  %204 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %11, align 4
  switch i32 %205, label %207 [
    i32 0, label %206
    i32 1, label %206
  ]

206:                                              ; preds = %203, %203
  ret void

207:                                              ; preds = %203
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace(i8*, i32, i32) #2

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32* @SHCreateStreamOnFileW(i32*, i32, i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i32* @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @test_stream_qi(i32*) #2

declare dso_local i32 @test_IStream_invalid_operations(i32*, i32) #2

declare dso_local i32* @IStream_Release(i32*) #2

declare dso_local i32 @test_stream_read_write(i32*, i32) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32* @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
