; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_prop_inherit.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_prop_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i32, i32 }
%struct.TYPE_10__ = type { i8*, i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zfs_prop_inherit.zc = private unnamed_addr constant %struct.TYPE_11__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0 }, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot inherit %s for '%s'\00", align 1
@ZPROP_INVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid property\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@ZFS_IOC_INHERIT_PROP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EZFS_PROPREADONLY = common dso_local global i32 0, align 4
@EZFS_PROPNONINHERIT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@EZFS_PROPTYPE = common dso_local global i32 0, align 4
@ZFS_PROP_MOUNTPOINT = common dso_local global i64 0, align 8
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"dataset is used in a non-global zone\00", align 1
@EZFS_ZONED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [69 x i8] c"child dataset with inherited mountpoint is used in a non-global zone\00", align 1
@MNTOPT_REMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_prop_inherit(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_11__* @__const.zfs_prop_inherit.zc to i8*), i64 24, i1 false)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %19 = load i32, i32* @TEXT_DOMAIN, align 4
  %20 = call i8* @dgettext(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @snprintf(i8* %18, i32 1024, i8* %20, i8* %21, i8* %24)
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @zfs_name_to_prop(i8* %28)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* @ZPROP_INVAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @zfs_prop_user(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @TEXT_DOMAIN, align 4
  %39 = call i8* @dgettext(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @zfs_error_aux(i32* %37, i8* %39)
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* @EZFS_BADPROP, align 4
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %44 = call i32 @zfs_error(i32* %41, i32 %42, i8* %43)
  store i32 %44, i32* %4, align 4
  br label %201

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strlcpy(i32 %47, i8* %50, i32 4)
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @strlcpy(i32 %53, i8* %54, i32 4)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @ZFS_IOC_INHERIT_PROP, align 4
  %60 = call i32 @zfs_ioctl(i32* %58, i32 %59, %struct.TYPE_11__* %8)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %45
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @errno, align 4
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %66 = call i32 @zfs_standard_error(i32* %63, i32 %64, i8* %65)
  store i32 %66, i32* %4, align 4
  br label %201

67:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %201

68:                                               ; preds = %3
  %69 = load i64, i64* %13, align 8
  %70 = call i64 @zfs_prop_readonly(i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* @EZFS_PROPREADONLY, align 4
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %76 = call i32 @zfs_error(i32* %73, i32 %74, i8* %75)
  store i32 %76, i32* %4, align 4
  br label %201

77:                                               ; preds = %68
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @zfs_prop_inheritable(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* @EZFS_PROPNONINHERIT, align 4
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %88 = call i32 @zfs_error(i32* %85, i32 %86, i8* %87)
  store i32 %88, i32* %4, align 4
  br label %201

89:                                               ; preds = %81, %77
  %90 = load i64, i64* %13, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @B_FALSE, align 4
  %95 = call i32 @zfs_prop_valid_for_type(i64 %90, i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %89
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* @EZFS_PROPTYPE, align 4
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %101 = call i32 @zfs_error(i32* %98, i32 %99, i8* %100)
  store i32 %101, i32* %4, align 4
  br label %201

102:                                              ; preds = %89
  %103 = load i64, i64* %13, align 8
  %104 = call i8* @zfs_prop_to_name(i64 %103)
  store i8* %104, i8** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strlcpy(i32 %106, i8* %109, i32 4)
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @strlcpy(i32 %112, i8* %113, i32 4)
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* @ZFS_PROP_MOUNTPOINT, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %136

118:                                              ; preds = %102
  %119 = call i64 (...) @getzoneid()
  %120 = load i64, i64* @GLOBAL_ZONEID, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %125 = call i64 @zfs_prop_get_int(%struct.TYPE_10__* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* @TEXT_DOMAIN, align 4
  %130 = call i8* @dgettext(i32 %129, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %131 = call i32 @zfs_error_aux(i32* %128, i8* %130)
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* @EZFS_ZONED, align 4
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %135 = call i32 @zfs_error(i32* %132, i32 %133, i8* %134)
  store i32 %135, i32* %4, align 4
  br label %201

136:                                              ; preds = %122, %118, %102
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = load i64, i64* %13, align 8
  %139 = call i32* @changelist_gather(%struct.TYPE_10__* %137, i64 %138, i32 0, i32 0)
  store i32* %139, i32** %10, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 -1, i32* %4, align 4
  br label %201

142:                                              ; preds = %136
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* @ZFS_PROP_MOUNTPOINT, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %142
  %147 = load i32*, i32** %10, align 8
  %148 = call i64 @changelist_haszonedchild(i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* @TEXT_DOMAIN, align 4
  %153 = call i8* @dgettext(i32 %152, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  %154 = call i32 @zfs_error_aux(i32* %151, i8* %153)
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* @EZFS_ZONED, align 4
  %157 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %158 = call i32 @zfs_error(i32* %155, i32 %156, i8* %157)
  store i32 %158, i32* %9, align 4
  br label %197

159:                                              ; preds = %146, %142
  %160 = load i32*, i32** %10, align 8
  %161 = call i32 @changelist_prefix(i32* %160)
  store i32 %161, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %197

164:                                              ; preds = %159
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* @ZFS_IOC_INHERIT_PROP, align 4
  %169 = call i32 @zfs_ioctl(i32* %167, i32 %168, %struct.TYPE_11__* %8)
  store i32 %169, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %164
  %172 = load i32*, i32** %11, align 8
  %173 = load i32, i32* @errno, align 4
  %174 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %175 = call i32 @zfs_standard_error(i32* %172, i32 %173, i8* %174)
  store i32 %175, i32* %4, align 4
  br label %201

176:                                              ; preds = %164
  %177 = load i32*, i32** %10, align 8
  %178 = call i32 @changelist_postfix(i32* %177)
  store i32 %178, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %197

181:                                              ; preds = %176
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %183 = call i32 @get_stats(%struct.TYPE_10__* %182)
  %184 = load i64, i64* %13, align 8
  %185 = call i64 @zfs_is_namespace_prop(i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %181
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %189 = call i64 @zfs_is_mounted(%struct.TYPE_10__* %188, i32* null)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %193 = load i32, i32* @MNTOPT_REMOUNT, align 4
  %194 = call i32 @zfs_mount(%struct.TYPE_10__* %192, i32 %193, i32 0)
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %191, %187, %181
  br label %196

196:                                              ; preds = %195
  br label %197

197:                                              ; preds = %196, %180, %163, %150
  %198 = load i32*, i32** %10, align 8
  %199 = call i32 @changelist_free(i32* %198)
  %200 = load i32, i32* %9, align 4
  store i32 %200, i32* %4, align 4
  br label %201

201:                                              ; preds = %197, %171, %141, %127, %97, %84, %72, %67, %62, %36
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i64 @zfs_name_to_prop(i8*) #2

declare dso_local i32 @zfs_prop_user(i8*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #2

declare dso_local i64 @zfs_prop_readonly(i64) #2

declare dso_local i32 @zfs_prop_inheritable(i64) #2

declare dso_local i32 @zfs_prop_valid_for_type(i64, i32, i32) #2

declare dso_local i8* @zfs_prop_to_name(i64) #2

declare dso_local i64 @getzoneid(...) #2

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_10__*, i32) #2

declare dso_local i32* @changelist_gather(%struct.TYPE_10__*, i64, i32, i32) #2

declare dso_local i64 @changelist_haszonedchild(i32*) #2

declare dso_local i32 @changelist_prefix(i32*) #2

declare dso_local i32 @changelist_postfix(i32*) #2

declare dso_local i32 @get_stats(%struct.TYPE_10__*) #2

declare dso_local i64 @zfs_is_namespace_prop(i64) #2

declare dso_local i64 @zfs_is_mounted(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @zfs_mount(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @changelist_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
