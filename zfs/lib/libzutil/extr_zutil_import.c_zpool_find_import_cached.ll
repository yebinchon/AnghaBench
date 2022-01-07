; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_zpool_find_import_cached.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzutil/extr_zutil_import.c_zpool_find_import_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@EZFS_BADCACHE = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to open cache file\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to get size of cache file\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to read cache file contents\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"invalid or corrupt cache file contents\00", align 1
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CACHEFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i64)* @zpool_find_import_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @zpool_find_import_cached(i32* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br label %26

26:                                               ; preds = %23, %4
  %27 = phi i1 [ true, %4 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @verify(i32 %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = call i32 @open(i8* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 @zutil_error_aux(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @EZFS_BADCACHE, align 4
  %41 = load i32, i32* @TEXT_DOMAIN, align 4
  %42 = call i32 @dgettext(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @zutil_error(i32* %39, i32 %40, i32 %42)
  store i32* null, i32** %5, align 8
  br label %206

44:                                               ; preds = %26
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @fstat64(i32 %45, %struct.stat64* %12)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 @zutil_error_aux(i32* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @close(i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @EZFS_BADCACHE, align 4
  %57 = load i32, i32* @TEXT_DOMAIN, align 4
  %58 = call i32 @dgettext(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i32 @zutil_error(i32* %55, i32 %56, i32 %58)
  store i32* null, i32** %5, align 8
  br label %206

60:                                               ; preds = %44
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds %struct.stat64, %struct.stat64* %12, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @zutil_alloc(i32* %61, i64 %63)
  store i8* %64, i8** %10, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @close(i32 %67)
  store i32* null, i32** %5, align 8
  br label %206

69:                                               ; preds = %60
  %70 = load i32, i32* %11, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds %struct.stat64, %struct.stat64* %12, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @read(i32 %70, i8* %71, i64 %73)
  %75 = getelementptr inbounds %struct.stat64, %struct.stat64* %12, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %74, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %69
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @close(i32 %79)
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @EZFS_BADCACHE, align 4
  %85 = load i32, i32* @TEXT_DOMAIN, align 4
  %86 = call i32 @dgettext(i32 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %87 = call i32 @zutil_error(i32* %83, i32 %84, i32 %86)
  store i32* null, i32** %5, align 8
  br label %206

88:                                               ; preds = %69
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @close(i32 %89)
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds %struct.stat64, %struct.stat64* %12, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @nvlist_unpack(i8* %91, i64 %93, i32** %13, i32 0)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %88
  %97 = load i8*, i8** %10, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @EZFS_BADCACHE, align 4
  %101 = load i32, i32* @TEXT_DOMAIN, align 4
  %102 = call i32 @dgettext(i32 %101, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %103 = call i32 @zutil_error(i32* %99, i32 %100, i32 %102)
  store i32* null, i32** %5, align 8
  br label %206

104:                                              ; preds = %88
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @free(i8* %105)
  %107 = call i64 @nvlist_alloc(i32** %16, i32 0, i32 0)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @zutil_no_memory(i32* %110)
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @nvlist_free(i32* %112)
  store i32* null, i32** %5, align 8
  br label %206

114:                                              ; preds = %104
  store i32* null, i32** %17, align 8
  br label %115

115:                                              ; preds = %199, %159, %144, %133, %114
  %116 = load i32*, i32** %13, align 8
  %117 = load i32*, i32** %17, align 8
  %118 = call i32* @nvlist_next_nvpair(i32* %116, i32* %117)
  store i32* %118, i32** %17, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %202

120:                                              ; preds = %115
  %121 = load i32*, i32** %17, align 8
  %122 = call i32* @fnvpair_value_nvlist(i32* %121)
  store i32* %122, i32** %14, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %125 = call i8* @fnvlist_lookup_string(i32* %123, i32 %124)
  store i8* %125, i8** %18, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load i8*, i8** %8, align 8
  %130 = load i8*, i8** %18, align 8
  %131 = call i64 @strcmp(i8* %129, i8* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %115

134:                                              ; preds = %128, %120
  %135 = load i32*, i32** %14, align 8
  %136 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %137 = call i64 @fnvlist_lookup_uint64(i32* %135, i32 %136)
  store i64 %137, i64* %19, align 8
  %138 = load i64, i64* %9, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load i64, i64* %9, align 8
  %142 = load i64, i64* %19, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %115

145:                                              ; preds = %140, %134
  %146 = load i32*, i32** %6, align 8
  %147 = load i8*, i8** %18, align 8
  %148 = load i64, i64* %19, align 8
  %149 = call i64 @zutil_pool_active(i32* %146, i8* %147, i64 %148, i64* %20)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load i32*, i32** %13, align 8
  %153 = call i32 @nvlist_free(i32* %152)
  %154 = load i32*, i32** %16, align 8
  %155 = call i32 @nvlist_free(i32* %154)
  store i32* null, i32** %5, align 8
  br label %206

156:                                              ; preds = %145
  %157 = load i64, i64* %20, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %115

160:                                              ; preds = %156
  %161 = load i32*, i32** %14, align 8
  %162 = load i32, i32* @ZPOOL_CONFIG_CACHEFILE, align 4
  %163 = load i8*, i8** %7, align 8
  %164 = call i64 @nvlist_add_string(i32* %161, i32 %162, i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %160
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 @zutil_no_memory(i32* %167)
  %169 = load i32*, i32** %13, align 8
  %170 = call i32 @nvlist_free(i32* %169)
  %171 = load i32*, i32** %16, align 8
  %172 = call i32 @nvlist_free(i32* %171)
  store i32* null, i32** %5, align 8
  br label %206

173:                                              ; preds = %160
  %174 = load i32*, i32** %6, align 8
  %175 = load i32*, i32** %14, align 8
  %176 = call i32* @zutil_refresh_config(i32* %174, i32* %175)
  store i32* %176, i32** %15, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i32*, i32** %13, align 8
  %180 = call i32 @nvlist_free(i32* %179)
  %181 = load i32*, i32** %16, align 8
  %182 = call i32 @nvlist_free(i32* %181)
  store i32* null, i32** %5, align 8
  br label %206

183:                                              ; preds = %173
  %184 = load i32*, i32** %16, align 8
  %185 = load i32*, i32** %17, align 8
  %186 = call i32 @nvpair_name(i32* %185)
  %187 = load i32*, i32** %15, align 8
  %188 = call i64 @nvlist_add_nvlist(i32* %184, i32 %186, i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %183
  %191 = load i32*, i32** %6, align 8
  %192 = call i32 @zutil_no_memory(i32* %191)
  %193 = load i32*, i32** %15, align 8
  %194 = call i32 @nvlist_free(i32* %193)
  %195 = load i32*, i32** %13, align 8
  %196 = call i32 @nvlist_free(i32* %195)
  %197 = load i32*, i32** %16, align 8
  %198 = call i32 @nvlist_free(i32* %197)
  store i32* null, i32** %5, align 8
  br label %206

199:                                              ; preds = %183
  %200 = load i32*, i32** %15, align 8
  %201 = call i32 @nvlist_free(i32* %200)
  br label %115

202:                                              ; preds = %115
  %203 = load i32*, i32** %13, align 8
  %204 = call i32 @nvlist_free(i32* %203)
  %205 = load i32*, i32** %16, align 8
  store i32* %205, i32** %5, align 8
  br label %206

206:                                              ; preds = %202, %190, %178, %166, %151, %109, %96, %78, %66, %48, %34
  %207 = load i32*, i32** %5, align 8
  ret i32* %207
}

declare dso_local i32 @verify(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @zutil_error_aux(i32*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @zutil_error(i32*, i32, i32) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i64 @fstat64(i32, %struct.stat64*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @zutil_alloc(i32*, i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @nvlist_unpack(i8*, i64, i32**, i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @zutil_no_memory(i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32* @fnvpair_value_nvlist(i32*) #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @fnvlist_lookup_uint64(i32*, i32) #1

declare dso_local i64 @zutil_pool_active(i32*, i8*, i64, i64*) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32* @zutil_refresh_config(i32*, i32*) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @nvpair_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
