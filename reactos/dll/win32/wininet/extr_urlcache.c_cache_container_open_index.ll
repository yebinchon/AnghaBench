; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_cache_container_open_index.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_cache_container_open_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i64 }

@cache_container_open_index.index_dat = internal constant [10 x i8] c"index.dat\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@OPEN_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Could not open or create cache index file \22%s\22\0A\00", align 1
@INVALID_FILE_SIZE = common dso_local global i64 0, align 8
@MIN_BLOCK_NO = common dso_local global i64 0, align 8
@MAX_BLOCK_NO = common dso_local global i64 0, align 8
@FILE_MAP_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"detected old or broken index.dat file\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Couldn't create file mapping (error is %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64)* @cache_container_open_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cache_container_open_index(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @INFINITE, align 4
  %22 = call i32 @WaitForSingleObject(i32 %20, i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ReleaseMutex(i32 %30)
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %32, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %198

33:                                               ; preds = %2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strcpyW(i8* %17, i32 %36)
  %38 = call i32 @strcatW(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @cache_container_open_index.index_dat, i64 0, i64 0))
  %39 = load i32, i32* @GENERIC_READ, align 4
  %40 = load i32, i32* @GENERIC_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FILE_SHARE_READ, align 4
  %43 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @OPEN_ALWAYS, align 4
  %46 = call i64 @CreateFileW(i8* %17, i32 %41, i32 %44, i32* null, i32 %45, i32 0, i32* null)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %33
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @CreateDirectoryW(i32 %53, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i32, i32* @GENERIC_READ, align 4
  %58 = load i32, i32* @GENERIC_WRITE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @FILE_SHARE_READ, align 4
  %61 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @OPEN_ALWAYS, align 4
  %64 = call i64 @CreateFileW(i8* %17, i32 %59, i32 %62, i32* null, i32 %63, i32 0, i32* null)
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %56, %50
  br label %66

66:                                               ; preds = %65, %33
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = call i32 @debugstr_w(i8* %17)
  %72 = call i32 @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ReleaseMutex(i32 %75)
  %77 = call i64 (...) @GetLastError()
  store i64 %77, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %198

78:                                               ; preds = %66
  %79 = load i64, i64* %6, align 8
  %80 = call i64 @GetFileSize(i64 %79, i32* null)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @INVALID_FILE_SIZE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @CloseHandle(i64 %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ReleaseMutex(i32 %89)
  %91 = call i64 (...) @GetLastError()
  store i64 %91, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %198

92:                                               ; preds = %78
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @MIN_BLOCK_NO, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i64, i64* @MIN_BLOCK_NO, align 8
  store i64 %97, i64* %5, align 8
  br label %105

98:                                               ; preds = %92
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* @MAX_BLOCK_NO, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i64, i64* @MAX_BLOCK_NO, align 8
  store i64 %103, i64* %5, align 8
  br label %104

104:                                              ; preds = %102, %98
  br label %105

105:                                              ; preds = %104, %96
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i64 @FILE_SIZE(i64 %107)
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %5, align 8
  %114 = call i64 @cache_container_set_size(%struct.TYPE_4__* %111, i64 %112, i64 %113)
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @CloseHandle(i64 %115)
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ReleaseMutex(i32 %119)
  %121 = load i64, i64* %12, align 8
  store i64 %121, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %198

122:                                              ; preds = %105
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* %6, align 8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* %9, align 8
  %131 = call i64 @cache_container_map_index(i64 %126, i32 %129, i64 %130, i64* %10)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @CloseHandle(i64 %134)
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %179

140:                                              ; preds = %122
  %141 = load i64, i64* %10, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %179

143:                                              ; preds = %140
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* @FILE_MAP_WRITE, align 4
  %148 = call i32* @MapViewOfFile(i64 %146, i32 %147, i32 0, i32 0, i32 0)
  store i32* %148, i32** %13, align 8
  %149 = load i32*, i32** %13, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %164

151:                                              ; preds = %143
  %152 = load i32*, i32** %13, align 8
  %153 = load i64, i64* %9, align 8
  %154 = call i32 @cache_container_is_valid(i32* %152, i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %151
  %157 = call i32 @WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %158 = load i32*, i32** %13, align 8
  %159 = call i32 @UnmapViewOfFile(i32* %158)
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @FreeUrlCacheSpaceW(i32 %162, i32 100, i32 0)
  br label %178

164:                                              ; preds = %151, %143
  %165 = load i32*, i32** %13, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32*, i32** %13, align 8
  %169 = call i32 @UnmapViewOfFile(i32* %168)
  br label %177

170:                                              ; preds = %164
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @CloseHandle(i64 %173)
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %170, %167
  br label %178

178:                                              ; preds = %177, %156
  br label %179

179:                                              ; preds = %178, %140, %122
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %192, label %184

184:                                              ; preds = %179
  %185 = call i64 (...) @GetLastError()
  %186 = call i32 @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %185)
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @ReleaseMutex(i32 %189)
  %191 = call i64 (...) @GetLastError()
  store i64 %191, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %198

192:                                              ; preds = %179
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @ReleaseMutex(i32 %195)
  %197 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %197, i64* %3, align 8
  store i32 1, i32* %11, align 4
  br label %198

198:                                              ; preds = %192, %184, %110, %84, %70, %27
  %199 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i64, i64* %3, align 8
  ret i64 %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #2

declare dso_local i32 @ReleaseMutex(i32) #2

declare dso_local i32 @strcpyW(i8*, i32) #2

declare dso_local i32 @strcatW(i8*, i8*) #2

declare dso_local i64 @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @CreateDirectoryW(i32, i32) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(i8*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @GetFileSize(i64, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i64 @FILE_SIZE(i64) #2

declare dso_local i64 @cache_container_set_size(%struct.TYPE_4__*, i64, i64) #2

declare dso_local i64 @cache_container_map_index(i64, i32, i64, i64*) #2

declare dso_local i32* @MapViewOfFile(i64, i32, i32, i32, i32) #2

declare dso_local i32 @cache_container_is_valid(i32*, i64) #2

declare dso_local i32 @WARN(i8*) #2

declare dso_local i32 @UnmapViewOfFile(i32*) #2

declare dso_local i32 @FreeUrlCacheSpaceW(i32, i32, i32) #2

declare dso_local i32 @ERR(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
