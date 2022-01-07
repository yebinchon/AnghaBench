; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_copyto_iidexclusions_storage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_copyto_iidexclusions_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file1_name = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"StgCreateDocfile failed: 0x%08x\0A\00", align 1
@file2_name = common dso_local global i32 0, align 4
@IID_IStorage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"CopyTo failed: 0x%08x\0A\00", align 1
@stgA_name = common dso_local global i32 0, align 4
@STG_E_FILENOTFOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"OpenStorage should give STG_E_FILENOTFOUND, gave: 0x%08x\0A\00", align 1
@strmA_name = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"OpenStream should give STG_E_FILENOTFOUND, gave: 0x%08x\0A\00", align 1
@stgB_name = common dso_local global i32 0, align 4
@strmB_name = common dso_local global i32* null, align 8
@strmC_name = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"OpenStream failed: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Read failed: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Expected %s to be read, got %s\0A\00", align 1
@file1_nameA = common dso_local global i32 0, align 4
@file2_nameA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_copyto_iidexclusions_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_copyto_iidexclusions_storage() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [64 x i32], align 16
  %6 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %7 = load i32, i32* @file1_name, align 4
  %8 = load i32, i32* @STGM_CREATE, align 4
  %9 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @STGM_READWRITE, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @StgCreateDocfile(i32 %7, i32 %12, i32 0, i32** %1)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %6, align 8
  %19 = call i32 (i32, i8*, i64, ...) @ok(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @FAILED(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  br label %186

24:                                               ; preds = %0
  %25 = load i32*, i32** %1, align 8
  %26 = call i64 @create_test_file(i32* %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @FAILED(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %186

31:                                               ; preds = %24
  %32 = load i32, i32* @file2_name, align 4
  %33 = load i32, i32* @STGM_CREATE, align 4
  %34 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @STGM_READWRITE, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @StgCreateDocfile(i32 %32, i32 %37, i32 0, i32** %2)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %6, align 8
  %44 = call i32 (i32, i8*, i64, ...) @ok(i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @FAILED(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  br label %186

49:                                               ; preds = %31
  %50 = load i32*, i32** %1, align 8
  %51 = load i32*, i32** %2, align 8
  %52 = call i64 @IStorage_CopyTo(i32* %50, i32 1, i32* @IID_IStorage, i32* null, i32* %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %6, align 8
  %58 = call i32 (i32, i8*, i64, ...) @ok(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @FAILED(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %186

63:                                               ; preds = %49
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* @stgA_name, align 4
  %66 = load i32, i32* @STGM_READWRITE, align 4
  %67 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %68 = or i32 %66, %67
  %69 = call i64 @IStorage_OpenStorage(i32* %64, i32 %65, i32* null, i32 %68, i32* null, i32 0, i32** %3)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %6, align 8
  %75 = call i32 (i32, i8*, i64, ...) @ok(i32 %73, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @SUCCEEDED(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %63
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @IStorage_Release(i32* %80)
  br label %82

82:                                               ; preds = %79, %63
  %83 = load i32*, i32** %2, align 8
  %84 = load i32*, i32** @strmA_name, align 8
  %85 = load i32, i32* @STGM_READWRITE, align 4
  %86 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %87 = or i32 %85, %86
  %88 = call i64 @IStorage_OpenStream(i32* %83, i32* %84, i32* null, i32 %87, i32 0, i32** %4)
  store i64 %88, i64* %6, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %6, align 8
  %94 = call i32 (i32, i8*, i64, ...) @ok(i32 %92, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %93)
  %95 = load i64, i64* %6, align 8
  %96 = call i64 @SUCCEEDED(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %82
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @IStream_Release(i32* %99)
  br label %101

101:                                              ; preds = %98, %82
  %102 = load i32*, i32** %2, align 8
  %103 = load i32, i32* @stgB_name, align 4
  %104 = load i32, i32* @STGM_READWRITE, align 4
  %105 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %106 = or i32 %104, %105
  %107 = call i64 @IStorage_OpenStorage(i32* %102, i32 %103, i32* null, i32 %106, i32* null, i32 0, i32** %3)
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* %6, align 8
  %113 = call i32 (i32, i8*, i64, ...) @ok(i32 %111, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %112)
  %114 = load i64, i64* %6, align 8
  %115 = call i64 @SUCCEEDED(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %101
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @IStorage_Release(i32* %118)
  br label %120

120:                                              ; preds = %117, %101
  %121 = load i32*, i32** %2, align 8
  %122 = load i32*, i32** @strmB_name, align 8
  %123 = load i32, i32* @STGM_READWRITE, align 4
  %124 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %125 = or i32 %123, %124
  %126 = call i64 @IStorage_OpenStream(i32* %121, i32* %122, i32* null, i32 %125, i32 0, i32** %4)
  store i64 %126, i64* %6, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %129 = icmp eq i64 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i64, i64* %6, align 8
  %132 = call i32 (i32, i8*, i64, ...) @ok(i32 %130, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %131)
  %133 = load i64, i64* %6, align 8
  %134 = call i64 @SUCCEEDED(i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %120
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @IStream_Release(i32* %137)
  br label %139

139:                                              ; preds = %136, %120
  %140 = load i32*, i32** %2, align 8
  %141 = load i32*, i32** @strmC_name, align 8
  %142 = load i32, i32* @STGM_READWRITE, align 4
  %143 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %144 = or i32 %142, %143
  %145 = call i64 @IStorage_OpenStream(i32* %140, i32* %141, i32* null, i32 %144, i32 0, i32** %4)
  store i64 %145, i64* %6, align 8
  %146 = load i64, i64* %6, align 8
  %147 = load i64, i64* @S_OK, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = load i64, i64* %6, align 8
  %151 = call i32 (i32, i8*, i64, ...) @ok(i32 %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %150)
  %152 = load i64, i64* %6, align 8
  %153 = call i64 @SUCCEEDED(i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %185

155:                                              ; preds = %139
  %156 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %157 = call i32 @memset(i32* %156, i32 0, i32 256)
  %158 = load i32*, i32** %4, align 8
  %159 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %160 = call i64 @IStream_Read(i32* %158, i32* %159, i32 256, i32* null)
  store i64 %160, i64* %6, align 8
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* @S_OK, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i32
  %165 = load i64, i64* %6, align 8
  %166 = call i32 (i32, i8*, i64, ...) @ok(i32 %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %165)
  %167 = load i64, i64* %6, align 8
  %168 = call i64 @SUCCEEDED(i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %155
  %171 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %172 = load i32*, i32** @strmC_name, align 8
  %173 = call i64 @strcmp_ww(i32* %171, i32* %172)
  %174 = icmp eq i64 %173, 0
  %175 = zext i1 %174 to i32
  %176 = load i32*, i32** @strmC_name, align 8
  %177 = call i32 @wine_dbgstr_w(i32* %176)
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %180 = call i32 @wine_dbgstr_w(i32* %179)
  %181 = call i32 (i32, i8*, i64, ...) @ok(i32 %175, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %178, i32 %180)
  br label %182

182:                                              ; preds = %170, %155
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @IStream_Release(i32* %183)
  br label %185

185:                                              ; preds = %182, %139
  br label %186

186:                                              ; preds = %185, %62, %48, %30, %23
  %187 = load i32*, i32** %1, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32*, i32** %1, align 8
  %191 = call i32 @IStorage_Release(i32* %190)
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32*, i32** %2, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32*, i32** %2, align 8
  %197 = call i32 @IStorage_Release(i32* %196)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i32, i32* @file1_nameA, align 4
  %200 = call i32 @DeleteFileA(i32 %199)
  %201 = load i32, i32* @file2_nameA, align 4
  %202 = call i32 @DeleteFileA(i32 %201)
  ret void
}

declare dso_local i64 @StgCreateDocfile(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @create_test_file(i32*) #1

declare dso_local i64 @IStorage_CopyTo(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @IStorage_OpenStorage(i32*, i32, i32*, i32, i32*, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i64 @IStorage_OpenStream(i32*, i32*, i32*, i32, i32, i32**) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @IStream_Read(i32*, i32*, i32, i32*) #1

declare dso_local i64 @strcmp_ww(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @DeleteFileA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
