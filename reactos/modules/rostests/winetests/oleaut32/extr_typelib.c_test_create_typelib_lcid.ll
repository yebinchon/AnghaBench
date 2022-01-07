; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_create_typelib_lcid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_create_typelib_lcid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"tlb\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@SYS_WIN32 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@IID_ITypeLib = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"flags 0x%x\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"file creation failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"read %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"got %08x (lcid %08x)\0A\00", align 1
@LIBFLAG_FHASDISKIMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_create_typelib_lcid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_create_typelib_lcid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %3, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %5, align 8
  %20 = call i32 @GetTempFileNameA(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* %16)
  %21 = load i32, i32* @CP_ACP, align 4
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = call i32 @MultiByteToWideChar(i32 %21, i32 0, i8* %16, i32 -1, i32* %19, i32 %22)
  %24 = load i32, i32* @SYS_WIN32, align 4
  %25 = call i32 @CreateTypeLib2(i32 %24, i32* %19, i32** %7)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @S_OK, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = bitcast i32** %10 to i8**
  %34 = call i32 @ICreateTypeLib2_QueryInterface(i32* %32, i32* @IID_ITypeLib, i8** %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @S_OK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @ITypeLib_GetLibAttr(i32* %41, %struct.TYPE_4__** %11)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @S_OK, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32*, i32** %10, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %60 = call i32 @ITypeLib_ReleaseTLibAttr(i32* %58, %struct.TYPE_4__* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @ICreateTypeLib2_SetLcid(i32* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @S_OK, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @ICreateTypeLib2_SetVersion(i32* %70, i32 3, i32 4)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @S_OK, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @ICreateTypeLib2_SaveAllChanges(i32* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @S_OK, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @ITypeLib_GetLibAttr(i32* %86, %struct.TYPE_4__** %11)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @S_OK, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %6, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load i32*, i32** %10, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %105 = call i32 @ITypeLib_ReleaseTLibAttr(i32* %103, %struct.TYPE_4__* %104)
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @ITypeLib_Release(i32* %106)
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @ICreateTypeLib2_Release(i32* %108)
  %110 = load i32, i32* @GENERIC_READ, align 4
  %111 = load i32, i32* @OPEN_EXISTING, align 4
  %112 = call i64 @CreateFileA(i8* %16, i32 %110, i32 0, i32* null, i32 %111, i32 0, i32 0)
  store i64 %112, i64* %8, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %115 = icmp ne i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 (i32, i8*, ...) @ok(i32 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %120 = call i32 @ReadFile(i64 %118, i32* %119, i32 32, i32* %12, i32* null)
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp eq i64 %122, 32
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %12, align 4
  %126 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @CloseHandle(i64 %127)
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %130 = load i32, i32* %129, align 16
  %131 = icmp eq i32 %130, 1413894989
  %132 = zext i1 %131 to i32
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %134 = load i32, i32* %133, align 16
  %135 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 65538
  %139 = zext i1 %138 to i32
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, -1
  %146 = zext i1 %145 to i32
  %147 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  %150 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %2, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %1
  %155 = load i32, i32* %2, align 4
  br label %157

156:                                              ; preds = %1
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi i32 [ %155, %154 ], [ 1033, %156 ]
  %159 = icmp eq i32 %151, %158
  %160 = zext i1 %159 to i32
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %2, align 4
  %164 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %162, i32 %163)
  %165 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  %166 = load i32, i32* %165, align 16
  %167 = load i32, i32* %2, align 4
  %168 = icmp eq i32 %166, %167
  %169 = zext i1 %168 to i32
  %170 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  %171 = load i32, i32* %170, align 16
  %172 = load i32, i32* %2, align 4
  %173 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %171, i32 %172)
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, 262147
  %177 = zext i1 %176 to i32
  %178 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %186)
  %188 = call i32 @LoadTypeLib(i32* %19, i32** %10)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @S_OK, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* %6, align 4
  %194 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  %195 = load i32*, i32** %10, align 8
  %196 = call i32 @ITypeLib_GetLibAttr(i32* %195, %struct.TYPE_4__** %11)
  store i32 %196, i32* %6, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @S_OK, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %6, align 4
  %202 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %201)
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @LIBFLAG_FHASDISKIMAGE, align 4
  %207 = icmp eq i32 %205, %206
  %208 = zext i1 %207 to i32
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i32, i8*, ...) @ok(i32 %208, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %211)
  %213 = load i32*, i32** %10, align 8
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %215 = call i32 @ITypeLib_ReleaseTLibAttr(i32* %213, %struct.TYPE_4__* %214)
  %216 = load i32*, i32** %10, align 8
  %217 = call i32 @ITypeLib_Release(i32* %216)
  %218 = call i32 @DeleteFileA(i8* %16)
  %219 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %219)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetTempFileNameA(i8*, i8*, i32, i8*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i32 @CreateTypeLib2(i32, i32*, i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @ICreateTypeLib2_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @ITypeLib_GetLibAttr(i32*, %struct.TYPE_4__**) #2

declare dso_local i32 @ITypeLib_ReleaseTLibAttr(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @ICreateTypeLib2_SetLcid(i32*, i32) #2

declare dso_local i32 @ICreateTypeLib2_SetVersion(i32*, i32, i32) #2

declare dso_local i32 @ICreateTypeLib2_SaveAllChanges(i32*) #2

declare dso_local i32 @ITypeLib_Release(i32*) #2

declare dso_local i32 @ICreateTypeLib2_Release(i32*) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @ReadFile(i64, i32*, i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @LoadTypeLib(i32*, i32**) #2

declare dso_local i32 @DeleteFileA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
