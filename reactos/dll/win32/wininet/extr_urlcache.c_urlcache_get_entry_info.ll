; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_get_entry_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_get_entry_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_entry = type { i64 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"(%s, %p, %p, %x, %x)\0A\00", align 1
@GET_INSTALLED_ENTRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ignoring unsupported flags: %x\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MIN_BLOCK_NO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"entry %s not found!\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@URL_SIGNATURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"Trying to retrieve entry of unknown format %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Found URL: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Header info: %s\0A\00", align 1
@INSTALLED_CACHE_ENTRY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Local File Name: %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32, i32)* @urlcache_get_entry_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urlcache_get_entry_info(i8* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.hash_entry*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @debugstr_a(i8* %17)
  %19 = load i8*, i8** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19, i32* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @GET_INSTALLED_ENTRY, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %5
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @cache_containers_find(i8* %33, i32** %15)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @ERROR_SUCCESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @SetLastError(i32 %39)
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %6, align 4
  br label %187

42:                                               ; preds = %32
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* @MIN_BLOCK_NO, align 4
  %45 = call i32 @cache_container_open_index(i32* %43, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* @ERROR_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @SetLastError(i32 %50)
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %6, align 4
  br label %187

53:                                               ; preds = %42
  %54 = load i32*, i32** %15, align 8
  %55 = call i32* @cache_container_lock_index(i32* %54)
  store i32* %55, i32** %12, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %6, align 4
  br label %187

59:                                               ; preds = %53
  %60 = load i32*, i32** %12, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @urlcache_find_hash_entry(i32* %60, i8* %61, %struct.hash_entry** %13)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load i32*, i32** %15, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @cache_container_unlock_index(i32* %65, i32* %66)
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @debugstr_a(i8* %68)
  %70 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %72 = call i32 @SetLastError(i32 %71)
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %6, align 4
  br label %187

74:                                               ; preds = %59
  %75 = load i32*, i32** %12, align 8
  %76 = ptrtoint i32* %75 to i64
  %77 = load %struct.hash_entry*, %struct.hash_entry** %13, align 8
  %78 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = inttoptr i64 %80 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %14, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @URL_SIGNATURE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %74
  %89 = load i32*, i32** %15, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @cache_container_unlock_index(i32* %89, i32* %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = ptrtoint i64* %94 to i32
  %96 = call i32 @debugstr_an(i32 %95, i32 4)
  %97 = call i32 @FIXME(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %99 = call i32 @SetLastError(i32 %98)
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %6, align 4
  br label %187

101:                                              ; preds = %74
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %103 = ptrtoint %struct.TYPE_5__* %102 to i32
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = sext i32 %103 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = call i32 @debugstr_a(i8* %108)
  %110 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %112 = ptrtoint %struct.TYPE_5__* %111 to i32
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %112, %115
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @debugstr_an(i32 %116, i32 %119)
  %121 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @GET_INSTALLED_ENTRY, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %101
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @INSTALLED_CACHE_ENTRY, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %140, label %133

133:                                              ; preds = %126
  %134 = load i32*, i32** %15, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = call i32 @cache_container_unlock_index(i32* %134, i32* %135)
  %137 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %138 = call i32 @SetLastError(i32 %137)
  %139 = load i32, i32* @FALSE, align 4
  store i32 %139, i32* %6, align 4
  br label %187

140:                                              ; preds = %126, %101
  %141 = load i32*, i32** %9, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %182

143:                                              ; preds = %140
  %144 = load i8*, i8** %8, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %143
  %147 = load i32*, i32** %9, align 8
  store i32 0, i32* %147, align 4
  br label %148

148:                                              ; preds = %146, %143
  %149 = load i32*, i32** %15, align 8
  %150 = load i32*, i32** %12, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @urlcache_copy_entry(i32* %149, i32* %150, i8* %151, i32* %152, %struct.TYPE_5__* %153, i32 %154)
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* @ERROR_SUCCESS, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %148
  %160 = load i32*, i32** %15, align 8
  %161 = load i32*, i32** %12, align 8
  %162 = call i32 @cache_container_unlock_index(i32* %160, i32* %161)
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @SetLastError(i32 %163)
  %165 = load i32, i32* @FALSE, align 4
  store i32 %165, i32* %6, align 4
  br label %187

166:                                              ; preds = %148
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 4
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %181

171:                                              ; preds = %166
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %173 = ptrtoint %struct.TYPE_5__* %172 to i32
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 4
  %176 = load i8*, i8** %175, align 8
  %177 = sext i32 %173 to i64
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  %179 = call i32 @debugstr_a(i8* %178)
  %180 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %171, %166
  br label %182

182:                                              ; preds = %181, %140
  %183 = load i32*, i32** %15, align 8
  %184 = load i32*, i32** %12, align 8
  %185 = call i32 @cache_container_unlock_index(i32* %183, i32* %184)
  %186 = load i32, i32* @TRUE, align 4
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %182, %159, %133, %88, %64, %57, %49, %38
  %188 = load i32, i32* %6, align 4
  ret i32 %188
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debugstr_a(i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @cache_containers_find(i8*, i32**) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @cache_container_open_index(i32*, i32) #1

declare dso_local i32* @cache_container_lock_index(i32*) #1

declare dso_local i32 @urlcache_find_hash_entry(i32*, i8*, %struct.hash_entry**) #1

declare dso_local i32 @cache_container_unlock_index(i32*, i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_an(i32, i32) #1

declare dso_local i32 @urlcache_copy_entry(i32*, i32*, i8*, i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
