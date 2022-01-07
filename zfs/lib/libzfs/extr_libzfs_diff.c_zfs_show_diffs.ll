; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_diff.c_zfs_show_diffs.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_diff.c_zfs_show_diffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i64, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zfs_show_diffs.zc = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0 }, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"zfs diff failed\00", align 1
@errno = common dso_local global i64 0, align 8
@EZFS_PIPEFAILED = common dso_local global i32 0, align 4
@ZFS_DIFF_PARSEABLE = common dso_local global i32 0, align 4
@ZFS_DIFF_CLASSIFY = common dso_local global i32 0, align 4
@ZFS_DIFF_TIMESTAMP = common dso_local global i32 0, align 4
@differ = common dso_local global i32 0, align 4
@EZFS_THREADCREATEFAILED = common dso_local global i32 0, align 4
@ZFS_IOC_DIFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Unable to obtain diffs\00", align 1
@EPERM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [96 x i8] c"\0A   The sys_mount privilege or diff delegated permission is needed\0A   to execute the diff ioctl\00", align 1
@EXDEV = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"\0A   Not an earlier snapshot from the same fs\00", align 1
@EPIPE = common dso_local global i64 0, align 8
@EZFS_DIFF = common dso_local global i32 0, align 4
@EZFS_DIFFDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_show_diffs(%struct.TYPE_10__* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = bitcast %struct.TYPE_11__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_11__* @__const.zfs_show_diffs.zc to i8*), i64 24, i1 false)
  %19 = bitcast %struct.TYPE_12__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 56, i1 false)
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %21 = load i32, i32* @TEXT_DOMAIN, align 4
  %22 = call i8* @dgettext(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @snprintf(i8* %20, i32 1024, i8* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @setup_differ_info(%struct.TYPE_10__* %24, i8* %25, i8* %26, %struct.TYPE_12__* %14)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = call i32 @teardown_differ_info(%struct.TYPE_12__* %14)
  store i32 -1, i32* %6, align 4
  br label %227

31:                                               ; preds = %5
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %33 = call i64 @pipe(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @errno, align 8
  %40 = call i8* @strerror(i64 %39)
  %41 = call i32 @zfs_error_aux(i32 %38, i8* %40)
  %42 = call i32 @teardown_differ_info(%struct.TYPE_12__* %14)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EZFS_PIPEFAILED, align 4
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %48 = call i32 @zfs_error(i32 %45, i32 %46, i8* %47)
  store i32 %48, i32* %6, align 4
  br label %227

49:                                               ; preds = %31
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @ZFS_DIFF_PARSEABLE, align 4
  %52 = and i32 %50, %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @ZFS_DIFF_CLASSIFY, align 4
  %56 = and i32 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ZFS_DIFF_TIMESTAMP, align 4
  %60 = and i32 %58, %59
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 4
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* @differ, align 4
  %68 = call i64 @pthread_create(i32* %15, i32* null, i32 %67, %struct.TYPE_12__* %14)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %49
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* @errno, align 8
  %75 = call i8* @strerror(i64 %74)
  %76 = call i32 @zfs_error_aux(i32 %73, i8* %75)
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @close(i32 %78)
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @close(i32 %81)
  %83 = call i32 @teardown_differ_info(%struct.TYPE_12__* %14)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @EZFS_THREADCREATEFAILED, align 4
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %89 = call i32 @zfs_error(i32 %86, i32 %87, i8* %88)
  store i32 %89, i32* %6, align 4
  br label %227

90:                                               ; preds = %49
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @strlen(i32 %96)
  %98 = add nsw i64 %97, 1
  %99 = call i32 @strlcpy(i32 %92, i32 %94, i64 %98)
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @strlen(i32 %105)
  %107 = add nsw i64 %106, 1
  %108 = call i32 @strlcpy(i32 %101, i32 %103, i64 %107)
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i32 %110, i32* %111, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ZFS_IOC_DIFF, align 4
  %116 = call i32 @zfs_ioctl(i32 %114, i32 %115, %struct.TYPE_11__* %12)
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %201

119:                                              ; preds = %90
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %121 = load i32, i32* @TEXT_DOMAIN, align 4
  %122 = call i8* @dgettext(i32 %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %123 = call i32 @snprintf(i8* %120, i32 1024, i8* %122)
  %124 = load i64, i64* @errno, align 8
  %125 = load i64, i64* @EPERM, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @TEXT_DOMAIN, align 4
  %132 = call i8* @dgettext(i32 %131, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0))
  %133 = call i32 @zfs_error_aux(i32 %130, i8* %132)
  br label %162

134:                                              ; preds = %119
  %135 = load i64, i64* @errno, align 8
  %136 = load i64, i64* @EXDEV, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @TEXT_DOMAIN, align 4
  %143 = call i8* @dgettext(i32 %142, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %144 = call i32 @zfs_error_aux(i32 %141, i8* %143)
  br label %161

145:                                              ; preds = %134
  %146 = load i64, i64* @errno, align 8
  %147 = load i64, i64* @EPIPE, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149, %145
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i64, i64* @errno, align 8
  %158 = call i8* @strerror(i64 %157)
  %159 = call i32 @zfs_error_aux(i32 %156, i8* %158)
  br label %160

160:                                              ; preds = %153, %149
  br label %161

161:                                              ; preds = %160, %138
  br label %162

162:                                              ; preds = %161, %127
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @close(i32 %164)
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @pthread_cancel(i32 %166)
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @pthread_join(i32 %168, i32* null)
  %170 = call i32 @teardown_differ_info(%struct.TYPE_12__* %14)
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %194

174:                                              ; preds = %162
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @EPIPE, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %174
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = call i8* @strerror(i64 %184)
  %186 = call i32 @zfs_error_aux(i32 %182, i8* %185)
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @EZFS_DIFF, align 4
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 6
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @zfs_error(i32 %189, i32 %190, i8* %192)
  store i32 %193, i32* %6, align 4
  br label %227

194:                                              ; preds = %174, %162
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @EZFS_DIFFDATA, align 4
  %199 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %200 = call i32 @zfs_error(i32 %197, i32 %198, i8* %199)
  store i32 %200, i32* %6, align 4
  br label %227

201:                                              ; preds = %90
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @close(i32 %203)
  %205 = load i32, i32* %15, align 4
  %206 = call i32 @pthread_join(i32 %205, i32* null)
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %201
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = call i8* @strerror(i64 %215)
  %217 = call i32 @zfs_error_aux(i32 %213, i8* %216)
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @EZFS_DIFF, align 4
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 6
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @zfs_error(i32 %220, i32 %221, i8* %223)
  store i32 %224, i32* %6, align 4
  br label %227

225:                                              ; preds = %201
  %226 = call i32 @teardown_differ_info(%struct.TYPE_12__* %14)
  store i32 0, i32* %6, align 4
  br label %227

227:                                              ; preds = %225, %210, %194, %179, %70, %35, %29
  %228 = load i32, i32* %6, align 4
  ret i32 %228
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i64 @setup_differ_info(%struct.TYPE_10__*, i8*, i8*, %struct.TYPE_12__*) #2

declare dso_local i32 @teardown_differ_info(%struct.TYPE_12__*) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i32 @zfs_error_aux(i32, i8*) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @zfs_error(i32, i32, i8*) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.TYPE_12__*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @strlcpy(i32, i32, i64) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @zfs_ioctl(i32, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @pthread_cancel(i32) #2

declare dso_local i32 @pthread_join(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
