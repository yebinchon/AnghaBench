; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_test_SHGetFolderPathEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_test_SHGetFolderPathEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@MAX_PATH = common dso_local global i32 0, align 4
@IID_IOleObject = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@FOLDERID_Desktop = common dso_local global i32 0, align 4
@KF_FLAG_DEFAULT_PATH = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"expected S_OK, got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"expected path != NULL\0A\00", align 1
@known_folders = common dso_local global %struct.TYPE_3__* null, align 8
@KF_FLAG_DEFAULT = common dso_local global i32 0, align 4
@KF_FLAG_SIMPLE_IDLIST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"expected equal paths: %s, %s\0A\00", align 1
@KF_FLAG_DONT_UNEXPAND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"expected equal paths\0A\00", align 1
@E_INVALIDARG = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"expected E_INVALIDARG, got 0x%08x\0A\00", align 1
@E_NOT_SUFFICIENT_BUFFER = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [46 x i8] c"expected E_NOT_SUFFICIENT_BUFFER, got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHGetFolderPathEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHGetFolderPathEx() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %13 = call i32* @pSHGetKnownFolderPath(i32* @IID_IOleObject, i32 0, i32* null, i32** %3)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %16 = call i32* @HRESULT_FROM_WIN32(i32 %15)
  %17 = icmp eq i32* %14, %16
  %18 = zext i1 %17 to i32
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  store i32* null, i32** %3, align 8
  %26 = load i32, i32* @KF_FLAG_DEFAULT_PATH, align 4
  %27 = call i32* @pSHGetKnownFolderPath(i32* @FOLDERID_Desktop, i32 %26, i32* null, i32** %3)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** @S_OK, align 8
  %30 = icmp eq i32* %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %32)
  %34 = load i32*, i32** %3, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @CoTaskMemFree(i32* %38)
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %152, %0
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @known_folders, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %42)
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %155

45:                                               ; preds = %40
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @known_folders, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %8, align 8
  store i32* null, i32** %3, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* @KF_FLAG_DEFAULT, align 4
  %54 = call i32* @pSHGetKnownFolderPath(i32* %52, i32 %53, i32* null, i32** %3)
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @FAILED(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %152

59:                                               ; preds = %45
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** @S_OK, align 8
  %62 = icmp eq i32* %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %64)
  %66 = load i32*, i32** %3, align 8
  %67 = icmp ne i32* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @KF_FLAG_SIMPLE_IDLIST, align 4
  %72 = call i32* @pSHGetKnownFolderPath(i32* %70, i32 %71, i32* null, i32** %4)
  store i32* %72, i32** %6, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** @S_OK, align 8
  %75 = icmp eq i32* %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %77)
  %79 = load i32*, i32** %4, align 8
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32*, i32** %3, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @lstrcmpiW(i32* %83, i32* %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @wine_dbgstr_w(i32* %89)
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @wine_dbgstr_w(i32* %91)
  %93 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %90, i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @CoTaskMemFree(i32* %94)
  store i32* null, i32** %4, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* @KF_FLAG_DONT_UNEXPAND, align 4
  %98 = call i32* @pSHGetKnownFolderPath(i32* %96, i32 %97, i32* null, i32** %4)
  store i32* %98, i32** %6, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** @S_OK, align 8
  %101 = icmp eq i32* %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %103)
  %105 = load i32*, i32** %4, align 8
  %106 = icmp ne i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32*, i32** %3, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @lstrcmpiW(i32* %109, i32* %110)
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @wine_dbgstr_w(i32* %115)
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @wine_dbgstr_w(i32* %117)
  %119 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %118)
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @CoTaskMemFree(i32* %120)
  store i32* null, i32** %4, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* @KF_FLAG_SIMPLE_IDLIST, align 4
  %124 = load i32, i32* @KF_FLAG_DONT_UNEXPAND, align 4
  %125 = or i32 %123, %124
  %126 = call i32* @pSHGetKnownFolderPath(i32* %122, i32 %125, i32* null, i32** %4)
  store i32* %126, i32** %6, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i32*, i32** @S_OK, align 8
  %129 = icmp eq i32* %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %131)
  %133 = load i32*, i32** %4, align 8
  %134 = icmp ne i32* %133, null
  %135 = zext i1 %134 to i32
  %136 = call i32 (i32, i8*, ...) @ok(i32 %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i32*, i32** %3, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @lstrcmpiW(i32* %137, i32* %138)
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = load i32*, i32** %3, align 8
  %144 = call i32 @wine_dbgstr_w(i32* %143)
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @wine_dbgstr_w(i32* %145)
  %147 = call i32 (i32, i8*, ...) @ok(i32 %142, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %144, i32 %146)
  %148 = load i32*, i32** %4, align 8
  %149 = call i32 @CoTaskMemFree(i32* %148)
  %150 = load i32*, i32** %3, align 8
  %151 = call i32 @CoTaskMemFree(i32* %150)
  br label %152

152:                                              ; preds = %59, %58
  %153 = load i32, i32* %5, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %40

155:                                              ; preds = %40
  store i32* null, i32** %3, align 8
  %156 = call i32* @pSHGetKnownFolderPath(i32* @FOLDERID_Desktop, i32 0, i32* null, i32** %3)
  store i32* %156, i32** %6, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = load i32*, i32** @S_OK, align 8
  %159 = icmp eq i32* %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 (i32, i8*, ...) @ok(i32 %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %161)
  %163 = load i32*, i32** %3, align 8
  %164 = icmp ne i32* %163, null
  %165 = zext i1 %164 to i32
  %166 = call i32 (i32, i8*, ...) @ok(i32 %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %167 = load i32, i32* @MAX_PATH, align 4
  %168 = call i32* @pSHGetFolderPathEx(i32* @FOLDERID_Desktop, i32 0, i32* null, i32* %12, i32 %167)
  store i32* %168, i32** %6, align 8
  %169 = load i32*, i32** %6, align 8
  %170 = load i32*, i32** @S_OK, align 8
  %171 = icmp eq i32* %169, %170
  %172 = zext i1 %171 to i32
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 (i32, i8*, ...) @ok(i32 %172, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %173)
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @lstrcmpiW(i32* %175, i32* %12)
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = call i32 (i32, i8*, ...) @ok(i32 %179, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %181 = call i32 @lstrlenW(i32* %12)
  store i32 %181, i32* %7, align 4
  %182 = load i32*, i32** %3, align 8
  %183 = call i32 @CoTaskMemFree(i32* %182)
  %184 = call i32* @pSHGetFolderPathEx(i32* @FOLDERID_Desktop, i32 0, i32* null, i32* %12, i32 0)
  store i32* %184, i32** %6, align 8
  %185 = load i32*, i32** %6, align 8
  %186 = load i32*, i32** @E_INVALIDARG, align 8
  %187 = icmp eq i32* %185, %186
  %188 = zext i1 %187 to i32
  %189 = load i32*, i32** %6, align 8
  %190 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32* %189)
  %191 = load i32, i32* %7, align 4
  %192 = call i32* @pSHGetFolderPathEx(i32* @FOLDERID_Desktop, i32 0, i32* null, i32* %12, i32 %191)
  store i32* %192, i32** %6, align 8
  %193 = load i32*, i32** %6, align 8
  %194 = load i32*, i32** @E_NOT_SUFFICIENT_BUFFER, align 8
  %195 = icmp eq i32* %193, %194
  %196 = zext i1 %195 to i32
  %197 = load i32*, i32** %6, align 8
  %198 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32* %197)
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  %201 = call i32* @pSHGetFolderPathEx(i32* @FOLDERID_Desktop, i32 0, i32* null, i32* %12, i32 %200)
  store i32* %201, i32** %6, align 8
  %202 = load i32*, i32** %6, align 8
  %203 = load i32*, i32** @S_OK, align 8
  %204 = icmp eq i32* %202, %203
  %205 = zext i1 %204 to i32
  %206 = load i32*, i32** %6, align 8
  %207 = call i32 (i32, i8*, ...) @ok(i32 %205, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %206)
  %208 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %208)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @pSHGetKnownFolderPath(i32*, i32, i32*, i32**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32* @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @CoTaskMemFree(i32*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i64 @FAILED(i32*) #2

declare dso_local i32 @lstrcmpiW(i32*, i32*) #2

declare dso_local i32 @wine_dbgstr_w(i32*) #2

declare dso_local i32* @pSHGetFolderPathEx(i32*, i32, i32*, i32*, i32) #2

declare dso_local i32 @lstrlenW(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
