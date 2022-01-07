; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_CallForAttributes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_CallForAttributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_CallForAttributes.wszAttributes = internal constant [11 x i8] c"Attributes\00", align 1
@test_CallForAttributes.wszCallForAttributes = internal constant [18 x i8] c"CallForAttributes\00", align 16
@test_CallForAttributes.wszMyDocumentsKey = internal constant [57 x i8] c"CLSID\\{450D8FBA-AD25-11D0-98A8-0800361B1103}\\ShellFolder\00", align 16
@__const.test_CallForAttributes.wszMyDocuments = private unnamed_addr constant [41 x i8] c"::{450D8FBA-AD25-11D0-98A8-0800361B1103}\00", align 16
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"SHGetDesktopFolder failed! hr = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Desktop's ParseDisplayName failed to parse MyDocuments's CLSID! hr = %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Desktop->GetAttributesOf(MyDocuments) failed! hr = %08x\0A\00", align 1
@SFGAO_FILESYSTEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"SFGAO_FILESYSTEM attribute is not set for MyDocuments!\0A\00", align 1
@SFGAO_ISSLOW = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"SFGAO_ISSLOW attribute is set for MyDocuments!\0A\00", align 1
@SFGAO_GHOSTED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [49 x i8] c"SFGAO_GHOSTED attribute is set for MyDocuments!\0A\00", align 1
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"RegOpenKeyEx failed! result: %08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Not enough rights to open the registry key\0A\00", align 1
@ppM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"RegQueryValueEx failed! result: %08x\0A\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [74 x i8] c"Desktop->GetAttributes(MyDocuments) returned unexpected attributes: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CallForAttributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CallForAttributes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [41 x i8], align 16
  %12 = bitcast [41 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([41 x i8], [41 x i8]* @__const.test_CallForAttributes.wszMyDocuments, i32 0, i32 0), i64 41, i1 false)
  %13 = call i64 @SHGetDesktopFolder(i32* %5)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %3, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  br label %196

24:                                               ; preds = %0
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds [41 x i8], [41 x i8]* %11, i64 0, i64 0
  %27 = call i64 @IShellFolder_ParseDisplayName(i32 %25, i32* null, i32* null, i8* %26, i32* null, i32* %6, i32* null)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %3, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @IShellFolder_Release(i32 %38)
  br label %196

40:                                               ; preds = %24
  store i64 4294967295, i64* %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @IShellFolder_GetAttributesOf(i32 %41, i32 1, i32* %6, i64* %7)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %3, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @SFGAO_FILESYSTEM, align 8
  %51 = and i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @SFGAO_ISSLOW, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @SFGAO_GHOSTED, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %69 = load i32, i32* @KEY_WRITE, align 4
  %70 = load i32, i32* @KEY_READ, align 4
  %71 = or i32 %69, %70
  %72 = call i64 @RegOpenKeyExW(i32 %68, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @test_CallForAttributes.wszMyDocumentsKey, i64 0, i64 0), i32 0, i32 %71, i32* %1)
  store i64 %72, i64* %2, align 8
  %73 = load i64, i64* %2, align 8
  %74 = load i64, i64* @ERROR_SUCCESS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %40
  %77 = load i64, i64* %2, align 8
  %78 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %79 = icmp eq i64 %77, %78
  br label %80

80:                                               ; preds = %76, %40
  %81 = phi i1 [ true, %40 ], [ %79, %76 ]
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %2, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %83)
  %85 = load i64, i64* %2, align 8
  %86 = load i64, i64* @ERROR_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  %89 = load i64, i64* %2, align 8
  %90 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i32, i32* @ppM, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @IMalloc_Free(i32 %95, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @IShellFolder_Release(i32 %98)
  br label %196

100:                                              ; preds = %80
  store i64 8, i64* %4, align 8
  %101 = load i32, i32* %1, align 4
  %102 = ptrtoint i64* %9 to i32
  %103 = call i64 @RegQueryValueExW(i32 %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_CallForAttributes.wszAttributes, i64 0, i64 0), i32* null, i32* null, i32 %102, i64* %4)
  store i64 %103, i64* %2, align 8
  %104 = load i64, i64* %2, align 8
  %105 = load i64, i64* @ERROR_SUCCESS, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i64, i64* %2, align 8
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i64 %108)
  %110 = load i64, i64* %2, align 8
  %111 = load i64, i64* @ERROR_SUCCESS, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %100
  %114 = load i32, i32* %1, align 4
  %115 = call i32 @RegCloseKey(i32 %114)
  %116 = load i32, i32* @ppM, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @IMalloc_Free(i32 %116, i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @IShellFolder_Release(i32 %119)
  br label %196

121:                                              ; preds = %100
  store i64 8, i64* %4, align 8
  %122 = load i32, i32* %1, align 4
  %123 = ptrtoint i64* %10 to i32
  %124 = call i64 @RegQueryValueExW(i32 %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_CallForAttributes.wszCallForAttributes, i64 0, i64 0), i32* null, i32* null, i32 %123, i64* %4)
  store i64 %124, i64* %2, align 8
  %125 = load i64, i64* %2, align 8
  %126 = load i64, i64* @ERROR_SUCCESS, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %2, align 8
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i64 %129)
  %131 = load i64, i64* %2, align 8
  %132 = load i64, i64* @ERROR_SUCCESS, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %121
  %135 = load i32, i32* %1, align 4
  %136 = call i32 @RegCloseKey(i32 %135)
  %137 = load i32, i32* @ppM, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @IMalloc_Free(i32 %137, i32 %138)
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @IShellFolder_Release(i32 %140)
  br label %196

142:                                              ; preds = %121
  %143 = load i64, i64* @SFGAO_ISSLOW, align 8
  %144 = load i64, i64* @SFGAO_GHOSTED, align 8
  %145 = or i64 %143, %144
  store i64 %145, i64* %7, align 8
  %146 = load i32, i32* %1, align 4
  %147 = load i32, i32* @REG_DWORD, align 4
  %148 = ptrtoint i64* %7 to i32
  %149 = call i32 @RegSetValueExW(i32 %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_CallForAttributes.wszAttributes, i64 0, i64 0), i32 0, i32 %147, i32 %148, i32 8)
  %150 = load i64, i64* @SFGAO_ISSLOW, align 8
  %151 = load i64, i64* @SFGAO_FILESYSTEM, align 8
  %152 = or i64 %150, %151
  store i64 %152, i64* %8, align 8
  %153 = load i32, i32* %1, align 4
  %154 = load i32, i32* @REG_DWORD, align 4
  %155 = ptrtoint i64* %8 to i32
  %156 = call i32 @RegSetValueExW(i32 %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_CallForAttributes.wszCallForAttributes, i64 0, i64 0), i32 0, i32 %154, i32 %155, i32 8)
  %157 = load i64, i64* @SFGAO_ISSLOW, align 8
  %158 = load i64, i64* @SFGAO_GHOSTED, align 8
  %159 = or i64 %157, %158
  %160 = load i64, i64* @SFGAO_FILESYSTEM, align 8
  %161 = or i64 %159, %160
  store i64 %161, i64* %7, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i64 @IShellFolder_GetAttributesOf(i32 %162, i32 1, i32* %6, i64* %7)
  store i64 %163, i64* %3, align 8
  %164 = load i64, i64* %3, align 8
  %165 = load i64, i64* @S_OK, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = load i64, i64* %3, align 8
  %169 = call i32 (i32, i8*, ...) @ok(i32 %167, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %168)
  %170 = load i64, i64* %3, align 8
  %171 = load i64, i64* @S_OK, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %142
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* @SFGAO_FILESYSTEM, align 8
  %176 = icmp eq i64 %174, %175
  %177 = zext i1 %176 to i32
  %178 = load i64, i64* %7, align 8
  %179 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.9, i64 0, i64 0), i64 %178)
  br label %180

180:                                              ; preds = %173, %142
  %181 = load i32, i32* %1, align 4
  %182 = load i32, i32* @REG_DWORD, align 4
  %183 = ptrtoint i64* %9 to i32
  %184 = call i32 @RegSetValueExW(i32 %181, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_CallForAttributes.wszAttributes, i64 0, i64 0), i32 0, i32 %182, i32 %183, i32 8)
  %185 = load i32, i32* %1, align 4
  %186 = load i32, i32* @REG_DWORD, align 4
  %187 = ptrtoint i64* %10 to i32
  %188 = call i32 @RegSetValueExW(i32 %185, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_CallForAttributes.wszCallForAttributes, i64 0, i64 0), i32 0, i32 %186, i32 %187, i32 8)
  %189 = load i32, i32* %1, align 4
  %190 = call i32 @RegCloseKey(i32 %189)
  %191 = load i32, i32* @ppM, align 4
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @IMalloc_Free(i32 %191, i32 %192)
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @IShellFolder_Release(i32 %194)
  br label %196

196:                                              ; preds = %180, %134, %113, %94, %37, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @SHGetDesktopFolder(i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @IShellFolder_ParseDisplayName(i32, i32*, i32*, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @IShellFolder_Release(i32) #2

declare dso_local i64 @IShellFolder_GetAttributesOf(i32, i32, i32*, i64*) #2

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @IMalloc_Free(i32, i32) #2

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i64*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @RegSetValueExW(i32, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
