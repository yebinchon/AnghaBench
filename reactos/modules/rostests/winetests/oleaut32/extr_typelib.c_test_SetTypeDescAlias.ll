; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_SetTypeDescAlias.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_typelib.c_test_SetTypeDescAlias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@test_SetTypeDescAlias.interfaceW = internal global [10 x i8] c"interface\00", align 1
@.str = private unnamed_addr constant [19 x i8] c"testing SYS_WIN32\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"testing SYS_WIN64\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tlb\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@TKIND_INTERFACE = common dso_local global i32 0, align 4
@IID_ITypeInfo = common dso_local global i32 0, align 4
@IID_ITypeLib = common dso_local global i32 0, align 4
@TDATests = common dso_local global %struct.TYPE_7__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"typelib should have been released\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"after save...\0A\00", align 1
@REGKIND_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_SetTypeDescAlias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetTypeDescAlias(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %3, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %4, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %5, align 8
  %25 = load i32, i32* %2, align 4
  switch i32 %25, label %30 [
    i32 129, label %26
    i32 128, label %28
  ]

26:                                               ; preds = %1
  %27 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 4, i32* %15, align 4
  br label %31

28:                                               ; preds = %1
  %29 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 8, i32* %15, align 4
  br label %31

30:                                               ; preds = %1
  store i32 1, i32* %17, align 4
  br label %202

31:                                               ; preds = %28, %26
  %32 = call i32 @GetTempFileNameA(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* %21)
  %33 = load i32, i32* @CP_ACP, align 4
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = call i32 @MultiByteToWideChar(i32 %33, i32 0, i32* %21, i32 -1, i32* %24, i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = call i64 @CreateTypeLib2(i32 %36, i32* %24, i32** %7)
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %16, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @TKIND_INTERFACE, align 4
  %46 = call i64 @ICreateTypeLib2_CreateTypeInfo(i32* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @test_SetTypeDescAlias.interfaceW, i64 0, i64 0), i32 %45, i32** %9)
  store i64 %46, i64* %16, align 8
  %47 = load i64, i64* %16, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %16, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = bitcast i32** %8 to i8**
  %55 = call i64 @ICreateTypeInfo_QueryInterface(i32* %53, i32* @IID_ITypeInfo, i8** %54)
  store i64 %55, i64* %16, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %16, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i64 @ICreateTypeInfo_AddRefTypeInfo(i32* %62, i32* %63, i32* %10)
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %16, align 8
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %69)
  %71 = load i32*, i32** %8, align 8
  %72 = call i64 @ITypeInfo_GetTypeAttr(i32* %71, %struct.TYPE_6__** %11)
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* @S_OK, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i64, i64* %16, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %12, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %14, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %87 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %85, %struct.TYPE_6__* %86)
  %88 = load i32*, i32** %8, align 8
  %89 = call i32 @ITypeInfo_Release(i32* %88)
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @ICreateTypeInfo_Release(i32* %90)
  %92 = load i32*, i32** %7, align 8
  %93 = bitcast i32** %6 to i8**
  %94 = call i64 @ICreateTypeLib2_QueryInterface(i32* %92, i32* @IID_ITypeLib, i8** %93)
  store i64 %94, i64* %16, align 8
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* @S_OK, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %16, align 8
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %99)
  store i64 0, i64* %13, align 8
  br label %101

101:                                              ; preds = %119, %31
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TDATests, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %101
  %109 = load i32*, i32** %6, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TDATests, align 8
  %111 = load i64, i64* %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %111
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i64, i64* %12, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @TRUE, align 4
  %118 = call i32 @testTDA(i32* %109, %struct.TYPE_7__* %112, i32 %113, i32 %114, i64 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %108
  %120 = load i64, i64* %13, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %13, align 8
  br label %101

122:                                              ; preds = %101
  %123 = load i32*, i32** %7, align 8
  %124 = call i64 @ICreateTypeLib2_SaveAllChanges(i32* %123)
  store i64 %124, i64* %16, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* @S_OK, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %16, align 8
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %129)
  %131 = load i32*, i32** %6, align 8
  %132 = call i64 @ITypeLib_Release(i32* %131)
  %133 = load i32*, i32** %7, align 8
  %134 = call i64 @ICreateTypeLib2_Release(i32* %133)
  %135 = icmp eq i64 0, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %138 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32, i32* @REGKIND_NONE, align 4
  %140 = call i64 @LoadTypeLibEx(i32* %24, i32 %139, i32** %6)
  store i64 %140, i64* %16, align 8
  %141 = load i64, i64* %16, align 8
  %142 = load i64, i64* @S_OK, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %16, align 8
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %145)
  %147 = load i32*, i32** %6, align 8
  %148 = call i64 @ITypeLib_GetTypeInfo(i32* %147, i32 0, i32** %8)
  store i64 %148, i64* %16, align 8
  %149 = load i64, i64* %16, align 8
  %150 = load i64, i64* @S_OK, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = load i64, i64* %16, align 8
  %154 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %153)
  %155 = load i32*, i32** %8, align 8
  %156 = call i64 @ITypeInfo_GetTypeAttr(i32* %155, %struct.TYPE_6__** %11)
  store i64 %156, i64* %16, align 8
  %157 = load i64, i64* %16, align 8
  %158 = load i64, i64* @S_OK, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i64, i64* %16, align 8
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 %161)
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %12, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %14, align 4
  %169 = load i32*, i32** %8, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %171 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %169, %struct.TYPE_6__* %170)
  %172 = load i32*, i32** %8, align 8
  %173 = call i32 @ITypeInfo_Release(i32* %172)
  store i64 0, i64* %13, align 8
  br label %174

174:                                              ; preds = %192, %122
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TDATests, align 8
  %176 = load i64, i64* %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %174
  %182 = load i32*, i32** %6, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** @TDATests, align 8
  %184 = load i64, i64* %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %184
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load i64, i64* %12, align 8
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* @FALSE, align 4
  %191 = call i32 @testTDA(i32* %182, %struct.TYPE_7__* %185, i32 %186, i32 %187, i64 %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %181
  %193 = load i64, i64* %13, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %13, align 8
  br label %174

195:                                              ; preds = %174
  %196 = load i32*, i32** %6, align 8
  %197 = call i64 @ITypeLib_Release(i32* %196)
  %198 = icmp eq i64 0, %197
  %199 = zext i1 %198 to i32
  %200 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %201 = call i32 @DeleteFileA(i32* %21)
  store i32 0, i32* %17, align 4
  br label %202

202:                                              ; preds = %195, %30
  %203 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %17, align 4
  switch i32 %204, label %206 [
    i32 0, label %205
    i32 1, label %205
  ]

205:                                              ; preds = %202, %202
  ret void

206:                                              ; preds = %202
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace(i8*) #2

declare dso_local i32 @GetTempFileNameA(i8*, i8*, i32, i32*) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32*, i32, i32*, i32) #2

declare dso_local i64 @CreateTypeLib2(i32, i32*, i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @ICreateTypeLib2_CreateTypeInfo(i32*, i8*, i32, i32**) #2

declare dso_local i64 @ICreateTypeInfo_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i64 @ICreateTypeInfo_AddRefTypeInfo(i32*, i32*, i32*) #2

declare dso_local i64 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_6__**) #2

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @ITypeInfo_Release(i32*) #2

declare dso_local i32 @ICreateTypeInfo_Release(i32*) #2

declare dso_local i64 @ICreateTypeLib2_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @testTDA(i32*, %struct.TYPE_7__*, i32, i32, i64, i32, i32) #2

declare dso_local i64 @ICreateTypeLib2_SaveAllChanges(i32*) #2

declare dso_local i64 @ITypeLib_Release(i32*) #2

declare dso_local i64 @ICreateTypeLib2_Release(i32*) #2

declare dso_local i64 @LoadTypeLibEx(i32*, i32, i32**) #2

declare dso_local i64 @ITypeLib_GetTypeInfo(i32*, i32, i32**) #2

declare dso_local i32 @DeleteFileA(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
