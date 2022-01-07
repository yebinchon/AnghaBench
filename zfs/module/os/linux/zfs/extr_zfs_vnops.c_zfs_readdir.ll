; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_readdir.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_vnops.c_zfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64, i64, i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_18__ = type { i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ZFS_CTLDIR_NAME = common dso_local global i8* null, align 8
@ZFSCTL_INO_ROOT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CE_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [86 x i8] c"zap_readdir: bad directory entry, obj = %lld, offset = %lld, length = %d, num = %lld\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_READ = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_readdir(%struct.inode* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call %struct.TYPE_16__* @ITOZ(%struct.inode* %19)
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call %struct.TYPE_17__* @ITOZSB(%struct.inode* %21)
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %8, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %24 = call i32 @ZFS_ENTER(%struct.TYPE_17__* %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_16__* %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = call i32 @SA_ZPL_PARENT(%struct.TYPE_17__* %30)
  %32 = call i32 @sa_lookup(i32 %29, i32 %31, i32* %16, i32 4)
  store i32 %32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %203

35:                                               ; preds = %3
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %203

41:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %9, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %17, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  %51 = load i32, i32* %17, align 4
  %52 = icmp sle i32 %51, 3
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @zap_cursor_init(i32* %10, i32* %54, i32 %57)
  br label %66

59:                                               ; preds = %41
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @zap_cursor_init_serialized(i32* %10, i32* %60, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %53
  br label %67

67:                                               ; preds = %188, %66
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br i1 %70, label %71, label %192

71:                                               ; preds = %67
  %72 = load i32, i32* %17, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strcpy(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %18, align 4
  %82 = load i64, i64* @DT_DIR, align 8
  store i64 %82, i64* %14, align 8
  br label %148

83:                                               ; preds = %71
  %84 = load i32, i32* %17, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @strcpy(i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 4
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %18, align 4
  %92 = load i64, i64* @DT_DIR, align 8
  store i64 %92, i64* %14, align 8
  br label %147

93:                                               ; preds = %83
  %94 = load i32, i32* %17, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %98 = call i64 @zfs_show_ctldir(%struct.TYPE_16__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i8*, i8** @ZFS_CTLDIR_NAME, align 8
  %104 = call i32 @strcpy(i32 %102, i8* %103)
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 4
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* @ZFSCTL_INO_ROOT, align 4
  store i32 %106, i32* %18, align 4
  %107 = load i64, i64* @DT_DIR, align 8
  store i64 %107, i64* %14, align 8
  br label %146

108:                                              ; preds = %96, %93
  %109 = call i32 @zap_cursor_retrieve(i32* %10, %struct.TYPE_18__* %11)
  store i32 %109, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @ENOENT, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %192

116:                                              ; preds = %111
  br label %196

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 8
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %121, %117
  %126 = load i32, i32* @CE_WARN, align 4
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @cmn_err(i32 %126, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %129, i32 %130, i32 %132, i32 %135)
  %137 = load i32, i32* @ENXIO, align 4
  %138 = call i32 @SET_ERROR(i32 %137)
  store i32 %138, i32* %12, align 4
  br label %196

139:                                              ; preds = %121
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ZFS_DIRENT_OBJ(i32 %141)
  store i32 %142, i32* %18, align 4
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @ZFS_DIRENT_TYPE(i32 %144)
  store i64 %145, i64* %14, align 8
  br label %146

146:                                              ; preds = %139, %100
  br label %147

147:                                              ; preds = %146, %86
  br label %148

148:                                              ; preds = %147, %74
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @strlen(i32 %153)
  %155 = load i32, i32* %18, align 4
  %156 = load i64, i64* %14, align 8
  %157 = call i32 @zpl_dir_emit(%struct.TYPE_15__* %149, i32 %151, i32 %154, i32 %155, i64 %156)
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %148
  br label %192

164:                                              ; preds = %148
  %165 = load i64, i64* %13, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i32*, i32** %9, align 8
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* @ZIO_PRIORITY_SYNC_READ, align 4
  %171 = call i32 @dmu_prefetch(i32* %168, i32 %169, i32 0, i32 0, i32 0, i32 %170)
  br label %172

172:                                              ; preds = %167, %164
  %173 = load i32, i32* %17, align 4
  %174 = icmp sgt i32 %173, 2
  br i1 %174, label %182, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %17, align 4
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %180 = call i64 @zfs_show_ctldir(%struct.TYPE_16__* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %178, %172
  %183 = call i32 @zap_cursor_advance(i32* %10)
  %184 = call i32 @zap_cursor_serialize(i32* %10)
  store i32 %184, i32* %17, align 4
  br label %188

185:                                              ; preds = %178, %175
  %186 = load i32, i32* %17, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %17, align 4
  br label %188

188:                                              ; preds = %185, %182
  %189 = load i32, i32* %17, align 4
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 4
  br label %67

192:                                              ; preds = %163, %115, %67
  %193 = load i64, i64* @B_FALSE, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  store i64 %193, i64* %195, align 8
  br label %196

196:                                              ; preds = %192, %125, %116
  %197 = call i32 @zap_cursor_fini(i32* %10)
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @ENOENT, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  store i32 0, i32* %12, align 4
  br label %202

202:                                              ; preds = %201, %196
  br label %203

203:                                              ; preds = %202, %40, %34
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %205 = call i32 @ZFS_EXIT(%struct.TYPE_17__* %204)
  %206 = load i32, i32* %12, align 4
  ret i32 %206
}

declare dso_local %struct.TYPE_16__* @ITOZ(%struct.inode*) #1

declare dso_local %struct.TYPE_17__* @ITOZSB(%struct.inode*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_17__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_16__*) #1

declare dso_local i32 @sa_lookup(i32, i32, i32*, i32) #1

declare dso_local i32 @SA_ZPL_PARENT(%struct.TYPE_17__*) #1

declare dso_local i32 @zap_cursor_init(i32*, i32*, i32) #1

declare dso_local i32 @zap_cursor_init_serialized(i32*, i32*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @zfs_show_ctldir(%struct.TYPE_16__*) #1

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @cmn_err(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ZFS_DIRENT_OBJ(i32) #1

declare dso_local i64 @ZFS_DIRENT_TYPE(i32) #1

declare dso_local i32 @zpl_dir_emit(%struct.TYPE_15__*, i32, i32, i32, i64) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @dmu_prefetch(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_serialize(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
