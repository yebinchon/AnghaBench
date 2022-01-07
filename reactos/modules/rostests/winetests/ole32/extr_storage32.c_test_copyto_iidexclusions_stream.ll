; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_copyto_iidexclusions_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_copyto_iidexclusions_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file1_name = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"StgCreateDocfile failed: 0x%08x\0A\00", align 1
@file2_name = common dso_local global i32 0, align 4
@IID_IStream = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"CopyTo failed: 0x%08x\0A\00", align 1
@stgA_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"OpenStorage failed: 0x%08x\0A\00", align 1
@strmA_name = common dso_local global i32 0, align 4
@STG_E_FILENOTFOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"OpenStream should give STG_E_FILENOTFOUND, gave: 0x%08x\0A\00", align 1
@stgB_name = common dso_local global i32 0, align 4
@strmB_name = common dso_local global i32 0, align 4
@strmC_name = common dso_local global i32 0, align 4
@file1_nameA = common dso_local global i32 0, align 4
@file2_nameA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_copyto_iidexclusions_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_copyto_iidexclusions_stream() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %6 = load i32, i32* @file1_name, align 4
  %7 = load i32, i32* @STGM_CREATE, align 4
  %8 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @STGM_READWRITE, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @StgCreateDocfile(i32 %6, i32 %11, i32 0, i32** %1)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @FAILED(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  br label %158

23:                                               ; preds = %0
  %24 = load i32*, i32** %1, align 8
  %25 = call i64 @create_test_file(i32* %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @FAILED(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %158

30:                                               ; preds = %23
  %31 = load i32, i32* @file2_name, align 4
  %32 = load i32, i32* @STGM_CREATE, align 4
  %33 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @STGM_READWRITE, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @StgCreateDocfile(i32 %31, i32 %36, i32 0, i32** %2)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @FAILED(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  br label %158

48:                                               ; preds = %30
  %49 = load i32*, i32** %1, align 8
  %50 = load i32*, i32** %2, align 8
  %51 = call i64 @IStorage_CopyTo(i32* %49, i32 1, i32* @IID_IStream, i32* null, i32* %50)
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @FAILED(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %158

62:                                               ; preds = %48
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* @stgA_name, align 4
  %65 = load i32, i32* @STGM_READWRITE, align 4
  %66 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %67 = or i32 %65, %66
  %68 = call i64 @IStorage_OpenStorage(i32* %63, i32 %64, i32* null, i32 %67, i32* null, i32 0, i32** %3)
  store i64 %68, i64* %5, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @S_OK, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  %75 = load i64, i64* %5, align 8
  %76 = call i64 @SUCCEEDED(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %62
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* @strmA_name, align 4
  %81 = load i32, i32* @STGM_READWRITE, align 4
  %82 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %83 = or i32 %81, %82
  %84 = call i64 @IStorage_OpenStream(i32* %79, i32 %80, i32* null, i32 %83, i32 0, i32** %4)
  store i64 %84, i64* %5, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  %91 = load i64, i64* %5, align 8
  %92 = call i64 @SUCCEEDED(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %78
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @IStream_Release(i32* %95)
  br label %97

97:                                               ; preds = %94, %78
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @IStorage_Release(i32* %98)
  br label %100

100:                                              ; preds = %97, %62
  %101 = load i32*, i32** %2, align 8
  %102 = load i32, i32* @stgB_name, align 4
  %103 = load i32, i32* @STGM_READWRITE, align 4
  %104 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %105 = or i32 %103, %104
  %106 = call i64 @IStorage_OpenStorage(i32* %101, i32 %102, i32* null, i32 %105, i32* null, i32 0, i32** %3)
  store i64 %106, i64* %5, align 8
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* @S_OK, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %5, align 8
  %112 = call i32 @ok(i32 %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %111)
  %113 = load i64, i64* %5, align 8
  %114 = call i64 @SUCCEEDED(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %138

116:                                              ; preds = %100
  %117 = load i32*, i32** %3, align 8
  %118 = load i32, i32* @strmB_name, align 4
  %119 = load i32, i32* @STGM_READWRITE, align 4
  %120 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %121 = or i32 %119, %120
  %122 = call i64 @IStorage_OpenStream(i32* %117, i32 %118, i32* null, i32 %121, i32 0, i32** %4)
  store i64 %122, i64* %5, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %127)
  %129 = load i64, i64* %5, align 8
  %130 = call i64 @SUCCEEDED(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %116
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @IStream_Release(i32* %133)
  br label %135

135:                                              ; preds = %132, %116
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @IStorage_Release(i32* %136)
  br label %138

138:                                              ; preds = %135, %100
  %139 = load i32*, i32** %2, align 8
  %140 = load i32, i32* @strmC_name, align 4
  %141 = load i32, i32* @STGM_READWRITE, align 4
  %142 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %143 = or i32 %141, %142
  %144 = call i64 @IStorage_OpenStream(i32* %139, i32 %140, i32* null, i32 %143, i32 0, i32** %4)
  store i64 %144, i64* %5, align 8
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i64, i64* %5, align 8
  %150 = call i32 @ok(i32 %148, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %149)
  %151 = load i64, i64* %5, align 8
  %152 = call i64 @SUCCEEDED(i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %138
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @IStream_Release(i32* %155)
  br label %157

157:                                              ; preds = %154, %138
  br label %158

158:                                              ; preds = %157, %61, %47, %29, %22
  %159 = load i32*, i32** %1, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32*, i32** %1, align 8
  %163 = call i32 @IStorage_Release(i32* %162)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32*, i32** %2, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32*, i32** %2, align 8
  %169 = call i32 @IStorage_Release(i32* %168)
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i32, i32* @file1_nameA, align 4
  %172 = call i32 @DeleteFileA(i32 %171)
  %173 = load i32, i32* @file2_nameA, align 4
  %174 = call i32 @DeleteFileA(i32 %173)
  ret void
}

declare dso_local i64 @StgCreateDocfile(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @create_test_file(i32*) #1

declare dso_local i64 @IStorage_CopyTo(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @IStorage_OpenStorage(i32*, i32, i32*, i32, i32*, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IStorage_OpenStream(i32*, i32, i32*, i32, i32, i32**) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
