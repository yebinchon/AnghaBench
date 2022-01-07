; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_dump_ioctl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_dump_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32* }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@ZFS_PROP_OBJSETID = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fromsnap\00", align 1
@ZFS_IOC_SEND = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"warning: cannot send '%s'\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"not an earlier snapshot from the same fs\00", align 1
@EZFS_CROSSTARGET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"source key must be loaded\00", align 1
@EZFS_CRYPTOFAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"incremental source (@%s) does not exist\00", align 1
@EZFS_NOENT = common dso_local global i32 0, align 4
@EZFS_BADBACKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64, i64, i32, i32, i32*)* @dump_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_ioctl(%struct.TYPE_6__* %0, i8* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [1024 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %20 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 48, i1 false)
  %21 = bitcast i8* %20 to %struct.TYPE_7__*
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %17, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* %11, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %7
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %7
  %40 = phi i1 [ true, %7 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @strlcpy(i32 %44, i32 %47, i32 4)
  %49 = load i32, i32* %13, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 7
  store i64 %51, i64* %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = load i32, i32* @ZFS_PROP_OBJSETID, align 4
  %55 = call i32 @zfs_prop_get_int(%struct.TYPE_6__* %53, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 6
  store i32 %55, i32* %56, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  store i64 %57, i64* %58, align 8
  %59 = load i32, i32* %14, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %62 = call i64 @nvlist_alloc(i32** %18, i32 %61, i32 0)
  %63 = icmp eq i64 0, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @VERIFY(i32 %64)
  %66 = load i8*, i8** %10, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %39
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i32*, i32** %18, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = call i64 @nvlist_add_string(i32* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  %78 = icmp eq i64 0, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @VERIFY(i32 %79)
  br label %81

81:                                               ; preds = %74, %68, %39
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* @ZFS_IOC_SEND, align 4
  %86 = call i64 @zfs_ioctl(i32* %84, i32 %85, %struct.TYPE_7__* %16)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %169

88:                                               ; preds = %81
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %90 = load i32, i32* @TEXT_DOMAIN, align 4
  %91 = call i8* @dgettext(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @snprintf(i8* %89, i32 1024, i8* %91, i32 %94)
  %96 = load i32*, i32** %18, align 8
  %97 = load i32, i32* @errno, align 4
  %98 = call i64 @nvlist_add_uint64(i32* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = icmp eq i64 0, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @VERIFY(i32 %100)
  %102 = load i32*, i32** %15, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %88
  %105 = load i32*, i32** %15, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** %18, align 8
  %110 = call i64 @nvlist_add_nvlist(i32* %105, i32 %108, i32* %109)
  %111 = icmp eq i64 0, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @VERIFY(i32 %112)
  br label %114

114:                                              ; preds = %104, %88
  %115 = load i32*, i32** %18, align 8
  %116 = call i32 @nvlist_free(i32* %115)
  %117 = load i32, i32* @errno, align 4
  switch i32 %117, label %164 [
    i32 128, label %118
    i32 141, label %127
    i32 136, label %136
    i32 140, label %155
    i32 138, label %155
    i32 137, label %155
    i32 135, label %155
    i32 134, label %155
    i32 133, label %155
    i32 132, label %155
    i32 131, label %155
    i32 130, label %155
    i32 139, label %155
    i32 129, label %155
  ]

118:                                              ; preds = %114
  %119 = load i32*, i32** %17, align 8
  %120 = load i32, i32* @TEXT_DOMAIN, align 4
  %121 = call i8* @dgettext(i32 %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %122 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %119, i8* %121)
  %123 = load i32*, i32** %17, align 8
  %124 = load i32, i32* @EZFS_CROSSTARGET, align 4
  %125 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %126 = call i32 @zfs_error(i32* %123, i32 %124, i8* %125)
  store i32 %126, i32* %8, align 4
  br label %185

127:                                              ; preds = %114
  %128 = load i32*, i32** %17, align 8
  %129 = load i32, i32* @TEXT_DOMAIN, align 4
  %130 = call i8* @dgettext(i32 %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %131 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %128, i8* %130)
  %132 = load i32*, i32** %17, align 8
  %133 = load i32, i32* @EZFS_CRYPTOFAILED, align 4
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %135 = call i32 @zfs_error(i32* %132, i32 %133, i8* %134)
  store i32 %135, i32* %8, align 4
  br label %185

136:                                              ; preds = %114
  %137 = load i32*, i32** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %141 = call i32 @zfs_dataset_exists(i32* %137, i32 %139, i64 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %136
  %144 = load i32*, i32** %17, align 8
  %145 = load i32, i32* @TEXT_DOMAIN, align 4
  %146 = call i8* @dgettext(i32 %145, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %144, i8* %146, i32 %148)
  br label %150

150:                                              ; preds = %143, %136
  %151 = load i32*, i32** %17, align 8
  %152 = load i32, i32* @EZFS_NOENT, align 4
  %153 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %154 = call i32 @zfs_error(i32* %151, i32 %152, i8* %153)
  store i32 %154, i32* %8, align 4
  br label %185

155:                                              ; preds = %114, %114, %114, %114, %114, %114, %114, %114, %114, %114, %114
  %156 = load i32*, i32** %17, align 8
  %157 = load i32, i32* @errno, align 4
  %158 = call i8* @strerror(i32 %157)
  %159 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %156, i8* %158)
  %160 = load i32*, i32** %17, align 8
  %161 = load i32, i32* @EZFS_BADBACKUP, align 4
  %162 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %163 = call i32 @zfs_error(i32* %160, i32 %161, i8* %162)
  store i32 %163, i32* %8, align 4
  br label %185

164:                                              ; preds = %114
  %165 = load i32*, i32** %17, align 8
  %166 = load i32, i32* @errno, align 4
  %167 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %168 = call i32 @zfs_standard_error(i32* %165, i32 %166, i8* %167)
  store i32 %168, i32* %8, align 4
  br label %185

169:                                              ; preds = %81
  %170 = load i32*, i32** %15, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %182

172:                                              ; preds = %169
  %173 = load i32*, i32** %15, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32*, i32** %18, align 8
  %178 = call i64 @nvlist_add_nvlist(i32* %173, i32 %176, i32* %177)
  %179 = icmp eq i64 0, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @VERIFY(i32 %180)
  br label %182

182:                                              ; preds = %172, %169
  %183 = load i32*, i32** %18, align 8
  %184 = call i32 @nvlist_free(i32* %183)
  store i32 0, i32* %8, align 4
  br label %185

185:                                              ; preds = %182, %164, %155, %150, %127, %118
  %186 = load i32, i32* %8, align 4
  ret i32 %186
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32 @zfs_prop_get_int(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i64 @nvlist_add_string(i32*, i8*, i8*) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_7__*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i64 @nvlist_add_uint64(i32*, i8*, i32) #2

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @zfs_dataset_exists(i32*, i32, i64) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
