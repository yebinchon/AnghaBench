; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_rm-rf.c_rm_rf.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_rm-rf.c_rm_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32 }

@REMOVE_ONLY_DIRECTORIES = common dso_local global i32 0, align 4
@REMOVE_SUBVOLUME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"Attempted to remove entire root file system (\22%s\22), and we can't allow that.\00", align 1
@REMOVE_ROOT = common dso_local global i32 0, align 4
@REMOVE_PHYSICAL = common dso_local global i32 0, align 4
@BTRFS_REMOVE_RECURSIVE = common dso_local global i32 0, align 4
@BTRFS_REMOVE_QUOTA = common dso_local global i32 0, align 4
@REMOVE_MISSING_OK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@O_NOATIME = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"Attempted to remove files from a disk file system under \22%s\22, refusing.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rm_rf(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.statfs, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @assert(i8* %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @REMOVE_ONLY_DIRECTORIES, align 4
  %13 = load i32, i32* @REMOVE_SUBVOLUME, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @FLAGS_SET(i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %188

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %23 = call i64 @path_equal_or_files_same(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @EPERM, align 4
  %27 = call i32 @SYNTHETIC_ERRNO(i32 %26)
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @log_error_errno(i32 %27, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 %29, i32* %3, align 4
  br label %188

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @REMOVE_SUBVOLUME, align 4
  %33 = load i32, i32* @REMOVE_ROOT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @REMOVE_PHYSICAL, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @FLAGS_SET(i32 %31, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %30
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @BTRFS_REMOVE_RECURSIVE, align 4
  %42 = load i32, i32* @BTRFS_REMOVE_QUOTA, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @btrfs_subvol_remove(i8* %40, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %188

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @REMOVE_MISSING_OK, align 4
  %52 = call i64 @FLAGS_SET(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %188

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ENOTTY, align 4
  %63 = sub nsw i32 0, %62
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  %66 = load i32, i32* @ENOTDIR, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i32 (i32, i32, i32, ...) @IN_SET(i32 %61, i32 %63, i32 %65, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %188

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %30
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* @O_RDONLY, align 4
  %76 = load i32, i32* @O_NONBLOCK, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @O_DIRECTORY, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @O_CLOEXEC, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @O_NOFOLLOW, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @O_NOATIME, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @open(i8* %74, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %159

89:                                               ; preds = %73
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @REMOVE_MISSING_OK, align 4
  %92 = call i64 @FLAGS_SET(i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32, i32* @errno, align 4
  %96 = load i32, i32* @ENOENT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 0, i32* %3, align 4
  br label %188

99:                                               ; preds = %94, %89
  %100 = load i32, i32* @errno, align 4
  %101 = load i32, i32* @ENOTDIR, align 4
  %102 = load i32, i32* @ELOOP, align 4
  %103 = call i32 (i32, i32, i32, ...) @IN_SET(i32 %100, i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @errno, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %188

108:                                              ; preds = %99
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @REMOVE_ONLY_DIRECTORIES, align 4
  %111 = call i64 @FLAGS_SET(i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %188

114:                                              ; preds = %108
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @REMOVE_ROOT, align 4
  %117 = call i64 @FLAGS_SET(i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %158

119:                                              ; preds = %114
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @REMOVE_PHYSICAL, align 4
  %122 = call i64 @FLAGS_SET(i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %4, align 8
  %126 = call i64 @statfs(i8* %125, %struct.statfs* %8)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @errno, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %188

131:                                              ; preds = %124
  %132 = call i64 @is_physical_fs(%struct.statfs* %8)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i32, i32* @EPERM, align 4
  %136 = call i32 @SYNTHETIC_ERRNO(i32 %135)
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @log_error_errno(i32 %136, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i8* %137)
  store i32 %138, i32* %3, align 4
  br label %188

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %119
  %141 = load i8*, i8** %4, align 8
  %142 = call i64 @unlink(i8* %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %140
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @REMOVE_MISSING_OK, align 4
  %147 = call i64 @FLAGS_SET(i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i32, i32* @errno, align 4
  %151 = load i32, i32* @ENOENT, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %188

154:                                              ; preds = %149, %144
  %155 = load i32, i32* @errno, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %188

157:                                              ; preds = %140
  br label %158

158:                                              ; preds = %157, %114
  store i32 0, i32* %3, align 4
  br label %188

159:                                              ; preds = %73
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @rm_rf_children(i32 %160, i32 %161, i32* null)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @REMOVE_ROOT, align 4
  %165 = call i64 @FLAGS_SET(i32 %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %159
  %168 = load i8*, i8** %4, align 8
  %169 = call i64 @rmdir(i8* %168)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %186

171:                                              ; preds = %167
  %172 = load i32, i32* %7, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %171
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @REMOVE_MISSING_OK, align 4
  %177 = call i64 @FLAGS_SET(i32 %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load i32, i32* @errno, align 4
  %181 = load i32, i32* @ENOENT, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179, %174
  %184 = load i32, i32* @errno, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %183, %179, %171, %167, %159
  %187 = load i32, i32* %7, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %186, %158, %154, %153, %134, %128, %113, %105, %98, %70, %59, %47, %25, %17
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @FLAGS_SET(i32, i32) #1

declare dso_local i64 @path_equal_or_files_same(i8*, i8*, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @btrfs_subvol_remove(i8*, i32) #1

declare dso_local i32 @IN_SET(i32, i32, i32, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @statfs(i8*, %struct.statfs*) #1

declare dso_local i64 @is_physical_fs(%struct.statfs*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @rm_rf_children(i32, i32, i32*) #1

declare dso_local i64 @rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
