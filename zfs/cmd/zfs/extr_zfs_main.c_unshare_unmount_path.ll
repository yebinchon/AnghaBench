; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_unshare_unmount_path.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_unshare_unmount_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i64 }
%struct.extmnttab = type { i8*, i32, i32 }

@OP_SHARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unshare\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unmount\00", align 1
@MNTTAB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@mnttab_file = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot %s '%s': not currently mounted\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"warning: %s not in/proc/self/mounts\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@MNTTYPE_ZFS = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"cannot %s '%s': not a ZFS filesystem\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"cannot %s '%s': %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"cannot %s '%s': not a mountpoint\0A\00", align 1
@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@ZFS_PROP_SHARENFS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_PROP_SHARESMB = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"cannot unshare '%s': legacy share\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"use exportfs(8) or smbcontrol(1) to unshare this filesystem\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"cannot unshare '%s': not currently shared\0A\00", align 1
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"cannot unmount '%s': legacy mountpoint\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"use umount(8) to unmount this filesystem\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i64)* @unshare_unmount_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unshare_unmount_path(i32 %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat64, align 8
  %13 = alloca %struct.extmnttab, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @OP_SHARE, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %25, i8** %14, align 8
  %26 = load i32, i32* @MNTTAB, align 4
  %27 = load i32, i32* @mnttab_file, align 4
  %28 = call i32* @freopen(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %5, align 4
  br label %215

32:                                               ; preds = %4
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @getextmntent(i8* %33, %struct.extmnttab* %13, %struct.stat64* %12)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @OP_SHARE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* @stderr, align 4
  %42 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i8*, i8** %14, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* %42, i8* %43, i8* %44)
  store i32 1, i32* %5, align 4
  br label %215

46:                                               ; preds = %36
  %47 = load i32, i32* @stderr, align 4
  %48 = call i8* @gettext(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* %48, i8* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @umount2(i8* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load i32, i32* @stderr, align 4
  %57 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* @errno, align 4
  %60 = call i8* @strerror(i32 %59)
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* %57, i8* %58, i8* %60)
  br label %62

62:                                               ; preds = %55, %46
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %215

66:                                               ; preds = %32
  %67 = getelementptr inbounds %struct.stat64, %struct.stat64* %12, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %15, align 8
  %69 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %13, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** @MNTTYPE_ZFS, align 8
  %72 = call i64 @strcmp(i8* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load i32, i32* @stderr, align 4
  %76 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %77 = load i8*, i8** %14, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* %76, i8* %77, i8* %78)
  store i32 1, i32* %5, align 4
  br label %215

80:                                               ; preds = %66
  %81 = load i32, i32* @g_zfs, align 4
  %82 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %13, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %85 = call i32* @zfs_open(i32 %81, i32 %83, i32 %84)
  store i32* %85, i32** %10, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 1, i32* %5, align 4
  br label %215

88:                                               ; preds = %80
  store i32 1, i32* %11, align 4
  %89 = getelementptr inbounds %struct.extmnttab, %struct.extmnttab* %13, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @stat64(i32 %90, %struct.stat64* %12)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load i32, i32* @stderr, align 4
  %95 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i8*, i8** %14, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* @errno, align 4
  %99 = call i8* @strerror(i32 %98)
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* %95, i8* %96, i8* %97, i8* %99)
  br label %209

101:                                              ; preds = %88
  %102 = getelementptr inbounds %struct.stat64, %struct.stat64* %12, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %15, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* @stderr, align 4
  %108 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %109 = load i8*, i8** %14, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* %108, i8* %109, i8* %110)
  br label %209

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @OP_SHARE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %170

117:                                              ; preds = %113
  %118 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %119 = zext i32 %118 to i64
  %120 = call i8* @llvm.stacksave()
  store i8* %120, i8** %16, align 8
  %121 = alloca i8, i64 %119, align 16
  store i64 %119, i64* %17, align 8
  %122 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %123 = zext i32 %122 to i64
  %124 = alloca i8, i64 %123, align 16
  store i64 %123, i64* %18, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* @ZFS_PROP_SHARENFS, align 4
  %127 = trunc i64 %119 to i32
  %128 = load i32, i32* @B_FALSE, align 4
  %129 = call i64 @zfs_prop_get(i32* %125, i32 %126, i8* %121, i32 %127, i32* null, i32* null, i32 0, i32 %128)
  %130 = icmp eq i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @verify(i32 %131)
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* @ZFS_PROP_SHARESMB, align 4
  %135 = trunc i64 %123 to i32
  %136 = load i32, i32* @B_FALSE, align 4
  %137 = call i64 @zfs_prop_get(i32* %133, i32 %134, i8* %124, i32 %135, i32* null, i32* null, i32 0, i32 %136)
  %138 = icmp eq i64 %137, 0
  %139 = zext i1 %138 to i32
  %140 = call i32 @verify(i32 %139)
  %141 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %117
  %144 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load i32, i32* @stderr, align 4
  %148 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %149 = load i8*, i8** %7, align 8
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %147, i8* %148, i8* %149)
  %151 = load i32, i32* @stderr, align 4
  %152 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0))
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %151, i8* %152)
  br label %168

154:                                              ; preds = %143, %117
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 @zfs_is_shared(i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* @stderr, align 4
  %160 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %161 = load i8*, i8** %7, align 8
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* %160, i8* %161)
  br label %167

163:                                              ; preds = %154
  %164 = load i32*, i32** %10, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = call i32 @zfs_unshareall_bypath(i32* %164, i8* %165)
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %163, %158
  br label %168

168:                                              ; preds = %167, %146
  %169 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %169)
  br label %208

170:                                              ; preds = %113
  %171 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %172 = zext i32 %171 to i64
  %173 = call i8* @llvm.stacksave()
  store i8* %173, i8** %19, align 8
  %174 = alloca i8, i64 %172, align 16
  store i64 %172, i64* %20, align 8
  %175 = load i32*, i32** %10, align 8
  %176 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %177 = trunc i64 %172 to i32
  %178 = load i32, i32* @B_FALSE, align 4
  %179 = call i64 @zfs_prop_get(i32* %175, i32 %176, i8* %174, i32 %177, i32* null, i32* null, i32 0, i32 %178)
  %180 = icmp eq i64 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @verify(i32 %181)
  %183 = load i64, i64* %9, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %170
  %186 = load i32*, i32** %10, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @zfs_unmount(i32* %186, i32* null, i32 %187)
  store i32 %188, i32* %11, align 4
  br label %206

189:                                              ; preds = %170
  %190 = call i64 @strcmp(i8* %174, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %189
  %193 = load i32, i32* @stderr, align 4
  %194 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %195 = load i32*, i32** %10, align 8
  %196 = call i8* @zfs_get_name(i32* %195)
  %197 = call i32 (i32, i8*, ...) @fprintf(i32 %193, i8* %194, i8* %196)
  %198 = load i32, i32* @stderr, align 4
  %199 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %200 = call i32 (i32, i8*, ...) @fprintf(i32 %198, i8* %199)
  br label %205

201:                                              ; preds = %189
  %202 = load i32*, i32** %10, align 8
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @zfs_unmountall(i32* %202, i32 %203)
  store i32 %204, i32* %11, align 4
  br label %205

205:                                              ; preds = %201, %192
  br label %206

206:                                              ; preds = %205, %185
  %207 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %207)
  br label %208

208:                                              ; preds = %206, %168
  br label %209

209:                                              ; preds = %208, %106, %93
  %210 = load i32*, i32** %10, align 8
  %211 = call i32 @zfs_close(i32* %210)
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %209, %87, %74, %62, %40, %30
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32* @freopen(i32, i8*, i32) #1

declare dso_local i64 @getextmntent(i8*, %struct.extmnttab*, %struct.stat64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @umount2(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @zfs_open(i32, i32, i32) #1

declare dso_local i64 @stat64(i32, %struct.stat64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @zfs_prop_get(i32*, i32, i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @zfs_is_shared(i32*) #1

declare dso_local i32 @zfs_unshareall_bypath(i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @zfs_unmount(i32*, i32*, i32) #1

declare dso_local i8* @zfs_get_name(i32*) #1

declare dso_local i32 @zfs_unmountall(i32*, i32) #1

declare dso_local i32 @zfs_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
