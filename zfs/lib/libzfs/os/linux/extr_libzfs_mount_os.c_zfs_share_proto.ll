; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_mount_os.c_zfs_share_proto.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/os/linux/extr_libzfs_mount_os.c_zfs_share_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@PROTO_END = common dso_local global i64 0, align 8
@proto_table = common dso_local global %struct.TYPE_11__* null, align 8
@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@SA_INIT_SHARE_API = common dso_local global i32 0, align 4
@SA_OK = common dso_local global i32 0, align 4
@EZFS_SHARENFSFAILED = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot share '%s': %s\00", align 1
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"cannot share '%s'\00", align 1
@ZFSSHARE_MISS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_share_proto(%struct.TYPE_12__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64* %1, i64** %5, align 8
  %17 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %10, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = trunc i64 %18 to i32
  %32 = call i32 @zfs_is_mountable(%struct.TYPE_12__* %30, i8* %20, i32 %31, i32* null, i32 0)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %176

35:                                               ; preds = %2
  %36 = load i64*, i64** %5, align 8
  store i64* %36, i64** %12, align 8
  br label %37

37:                                               ; preds = %172, %35
  %38 = load i64*, i64** %12, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PROTO_END, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %175

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @proto_table, align 8
  %45 = load i64*, i64** %12, align 8
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = trunc i64 %22 to i32
  %51 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %52 = load i32, i32* @B_FALSE, align 4
  %53 = call i64 @zfs_prop_get(%struct.TYPE_12__* %43, i32 %49, i8* %23, i32 %50, i32* %13, i8* %26, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %42
  %56 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %42
  br label %172

59:                                               ; preds = %55
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %61 = load i32, i32* @SA_INIT_SHARE_API, align 4
  %62 = call i32 @zfs_init_libshare(%struct.TYPE_13__* %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @SA_OK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %68 = load i32, i32* @EZFS_SHARENFSFAILED, align 4
  %69 = load i32, i32* @TEXT_DOMAIN, align 4
  %70 = call i32 @dgettext(i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = call i32 @zfs_get_name(%struct.TYPE_12__* %71)
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @sa_errorstr(i32 %73)
  %75 = call i32 (%struct.TYPE_13__*, i32, i32, i32, ...) @zfs_error_fmt(%struct.TYPE_13__* %67, i32 %68, i32 %70, i32 %72, i32 %74)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %176

76:                                               ; preds = %59
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %79 = call i64 @zfs_prop_get_int(%struct.TYPE_12__* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %172

82:                                               ; preds = %76
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32* @sa_find_share(i32 %85, i8* %20)
  store i32* %86, i32** %11, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %129

89:                                               ; preds = %82
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** @proto_table, align 8
  %94 = load i64*, i64** %12, align 8
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @sa_zfs_process_share(i32 %92, i32* null, i32* null, i8* %20, i32 %98, i32 %99, i8* %23, i8* %26, i32 %102)
  %104 = load i32, i32* @SA_OK, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %89
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** @proto_table, align 8
  %109 = load i64*, i64** %12, align 8
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @TEXT_DOMAIN, align 4
  %115 = call i32 @dgettext(i32 %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = call i32 @zfs_get_name(%struct.TYPE_12__* %116)
  %118 = call i32 (%struct.TYPE_13__*, i32, i32, i32, ...) @zfs_error_fmt(%struct.TYPE_13__* %107, i32 %113, i32 %115, i32 %117)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %176

119:                                              ; preds = %89
  %120 = load i32, i32* @ZFSSHARE_MISS, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32* @sa_find_share(i32 %127, i8* %20)
  store i32* %128, i32** %11, align 8
  br label %129

129:                                              ; preds = %119, %82
  %130 = load i32*, i32** %11, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %158

132:                                              ; preds = %129
  %133 = load i32*, i32** %11, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** @proto_table, align 8
  %135 = load i64*, i64** %12, align 8
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @sa_enable_share(i32* %133, i32 %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* @SA_OK, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %132
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** @proto_table, align 8
  %147 = load i64*, i64** %12, align 8
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @TEXT_DOMAIN, align 4
  %153 = call i32 @dgettext(i32 %152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = call i32 @zfs_get_name(%struct.TYPE_12__* %154)
  %156 = call i32 (%struct.TYPE_13__*, i32, i32, i32, ...) @zfs_error_fmt(%struct.TYPE_13__* %145, i32 %151, i32 %153, i32 %155)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %176

157:                                              ; preds = %132
  br label %171

158:                                              ; preds = %129
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** @proto_table, align 8
  %161 = load i64*, i64** %12, align 8
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @TEXT_DOMAIN, align 4
  %167 = call i32 @dgettext(i32 %166, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %169 = call i32 @zfs_get_name(%struct.TYPE_12__* %168)
  %170 = call i32 (%struct.TYPE_13__*, i32, i32, i32, ...) @zfs_error_fmt(%struct.TYPE_13__* %159, i32 %165, i32 %167, i32 %169)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %176

171:                                              ; preds = %157
  br label %172

172:                                              ; preds = %171, %81, %58
  %173 = load i64*, i64** %12, align 8
  %174 = getelementptr inbounds i64, i64* %173, i32 1
  store i64* %174, i64** %12, align 8
  br label %37

175:                                              ; preds = %37
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %176

176:                                              ; preds = %175, %158, %144, %106, %66, %34
  %177 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zfs_is_mountable(%struct.TYPE_12__*, i8*, i32, i32*, i32) #2

declare dso_local i64 @zfs_prop_get(%struct.TYPE_12__*, i32, i8*, i32, i32*, i8*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @zfs_init_libshare(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @zfs_error_fmt(%struct.TYPE_13__*, i32, i32, i32, ...) #2

declare dso_local i32 @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_get_name(%struct.TYPE_12__*) #2

declare dso_local i32 @sa_errorstr(i32) #2

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_12__*, i32) #2

declare dso_local i32* @sa_find_share(i32, i8*) #2

declare dso_local i32 @sa_zfs_process_share(i32, i32*, i32*, i8*, i32, i32, i8*, i8*, i32) #2

declare dso_local i32 @sa_enable_share(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
