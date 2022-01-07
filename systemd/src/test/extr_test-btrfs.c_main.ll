; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-btrfs.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-btrfs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to open root directory: %m\00", align 1
@FORMAT_TIMESTAMP_MAX = common dso_local global i32 0, align 4
@FORMAT_BYTES_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to get subvolume info: %m\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"otime: %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"read-only (search): %s\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to get quota info: %m\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"referenced: %s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"exclusive: %s\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"referenced_max: %s\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"exclusive_max: %s\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to get read only flag: %m\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"read-only (ioctl): %s\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"/xxxtest\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Failed to make subvolume: %m\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"/xxxtest/afile\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"ljsadhfljasdkfhlkjdsfha\00", align 1
@WRITE_STRING_FILE_CREATE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"Failed to write file: %m\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"/xxxtest2\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Failed to make snapshot: %m\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"/xxxtest3\00", align 1
@BTRFS_SNAPSHOT_READ_ONLY = common dso_local global i32 0, align 4
@BTRFS_REMOVE_QUOTA = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [31 x i8] c"Failed to remove subvolume: %m\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"/etc\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"/etc2\00", align 1
@BTRFS_SNAPSHOT_FALLBACK_COPY = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"/xxxrectest\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"/xxxrectest/xxxrectest2\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"/xxxrectest/xxxrectest3\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"/xxxrectest/xxxrectest3/sub\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"/xxxrectest/dir\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Failed to make directory: %m\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"/xxxrectest/dir/xxxrectest4\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"/xxxrectest/dir/xxxrectest4/dir\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"/xxxrectest/dir/xxxrectest4/dir/xxxrectest5\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"/xxxrectest/mnt\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"/xxxrectest2\00", align 1
@BTRFS_SNAPSHOT_RECURSIVE = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [33 x i8] c"Failed to snapshot subvolume: %m\00", align 1
@BTRFS_REMOVE_RECURSIVE = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [43 x i8] c"Failed to recursively remove subvolume: %m\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"/xxxquotatest\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"Failed to set up auto qgroup: %m\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"/xxxquotatest/beneath\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"Failed to set up quota limit: %m\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"/xxxquotatest2\00", align 1
@BTRFS_SNAPSHOT_QUOTA = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [29 x i8] c"Failed to setup snapshot: %m\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"/xxxquotatest2/beneath\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"Failed to query quota: %m\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"Failed remove subvolume: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = load i32, i32* @O_CLOEXEC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @O_DIRECTORY, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @log_error_errno(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %98

24:                                               ; preds = %2
  %25 = load i32, i32* @FORMAT_TIMESTAMP_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %29 = load i32, i32* @FORMAT_BYTES_MAX, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @btrfs_subvol_get_info_fd(i32 %32, i32 0, %struct.TYPE_7__* %12)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @log_error_errno(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %49

39:                                               ; preds = %24
  %40 = trunc i64 %26 to i32
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @format_timestamp(i8* %28, i32 %40, i32 %42)
  %44 = call i32 @log_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @yes_no(i32 %46)
  %48 = call i32 @log_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %39, %36
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @btrfs_qgroup_get_quota_fd(i32 %50, i32 0, %struct.TYPE_8__* %6)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @log_error_errno(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %82

57:                                               ; preds = %49
  %58 = trunc i64 %30 to i32
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @format_bytes(i8* %31, i32 %58, i64 %60)
  %62 = call i32 @strna(i32 %61)
  %63 = call i32 @log_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  %64 = trunc i64 %30 to i32
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @format_bytes(i8* %31, i32 %64, i64 %66)
  %68 = call i32 @strna(i32 %67)
  %69 = call i32 @log_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %68)
  %70 = trunc i64 %30 to i32
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @format_bytes(i8* %31, i32 %70, i64 %72)
  %74 = call i32 @strna(i32 %73)
  %75 = call i32 @log_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %74)
  %76 = trunc i64 %30 to i32
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @format_bytes(i8* %31, i32 %76, i64 %78)
  %80 = call i32 @strna(i32 %79)
  %81 = call i32 @log_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %57, %54
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @btrfs_subvol_get_read_only_fd(i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @log_error_errno(i32 %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %94

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @yes_no(i32 %91)
  %93 = call i32 @log_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @safe_close(i32 %95)
  %97 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %97)
  br label %98

98:                                               ; preds = %94, %21
  %99 = call i32 @btrfs_subvol_make(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @log_error_errno(i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i32, i32* @WRITE_STRING_FILE_CREATE, align 4
  %107 = call i32 @write_string_file(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @log_error_errno(i32 %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %105
  %114 = call i32 @btrfs_subvol_snapshot(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 0)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @log_error_errno(i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %113
  %121 = load i32, i32* @BTRFS_SNAPSHOT_READ_ONLY, align 4
  %122 = call i32 @btrfs_subvol_snapshot(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @log_error_errno(i32 %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %120
  %129 = load i32, i32* @BTRFS_REMOVE_QUOTA, align 4
  %130 = call i32 @btrfs_subvol_remove(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @log_error_errno(i32 %134, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i32, i32* @BTRFS_REMOVE_QUOTA, align 4
  %138 = call i32 @btrfs_subvol_remove(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @log_error_errno(i32 %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i32, i32* @BTRFS_REMOVE_QUOTA, align 4
  %146 = call i32 @btrfs_subvol_remove(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @log_error_errno(i32 %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %144
  %153 = load i32, i32* @BTRFS_SNAPSHOT_READ_ONLY, align 4
  %154 = load i32, i32* @BTRFS_SNAPSHOT_FALLBACK_COPY, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @btrfs_subvol_snapshot(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %152
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @log_error_errno(i32 %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %152
  %163 = load i32, i32* @BTRFS_REMOVE_QUOTA, align 4
  %164 = call i32 @btrfs_subvol_remove(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @log_error_errno(i32 %168, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %162
  %171 = call i32 @btrfs_subvol_make(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @log_error_errno(i32 %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %170
  %178 = call i32 @btrfs_subvol_make(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @log_error_errno(i32 %182, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %177
  %185 = call i32 @btrfs_subvol_make(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0))
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @log_error_errno(i32 %189, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %184
  %192 = call i32 @btrfs_subvol_make(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0))
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @log_error_errno(i32 %196, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %198

198:                                              ; preds = %195, %191
  %199 = call i64 @mkdir(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i32 493)
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* @errno, align 4
  %203 = call i32 @log_error_errno(i32 %202, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201, %198
  %205 = call i32 @btrfs_subvol_make(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0))
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @log_error_errno(i32 %209, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %211

211:                                              ; preds = %208, %204
  %212 = call i64 @mkdir(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0), i32 493)
  %213 = icmp slt i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32, i32* @errno, align 4
  %216 = call i32 @log_error_errno(i32 %215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %211
  %218 = call i32 @btrfs_subvol_make(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0))
  store i32 %218, i32* %7, align 4
  %219 = load i32, i32* %7, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @log_error_errno(i32 %222, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %217
  %225 = call i64 @mkdir(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i32 493)
  %226 = icmp slt i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32, i32* @errno, align 4
  %229 = call i32 @log_error_errno(i32 %228, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0))
  br label %230

230:                                              ; preds = %227, %224
  %231 = load i32, i32* @BTRFS_SNAPSHOT_RECURSIVE, align 4
  %232 = call i32 @btrfs_subvol_snapshot(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i32 %231)
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %7, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @log_error_errno(i32 %236, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %230
  %239 = load i32, i32* @BTRFS_REMOVE_QUOTA, align 4
  %240 = load i32, i32* @BTRFS_REMOVE_RECURSIVE, align 4
  %241 = or i32 %239, %240
  %242 = call i32 @btrfs_subvol_remove(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 %241)
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %7, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %238
  %246 = load i32, i32* %7, align 4
  %247 = call i32 @log_error_errno(i32 %246, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i64 0, i64 0))
  br label %248

248:                                              ; preds = %245, %238
  %249 = load i32, i32* @BTRFS_REMOVE_QUOTA, align 4
  %250 = load i32, i32* @BTRFS_REMOVE_RECURSIVE, align 4
  %251 = or i32 %249, %250
  %252 = call i32 @btrfs_subvol_remove(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i32 %251)
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* %7, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %248
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @log_error_errno(i32 %256, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i64 0, i64 0))
  br label %258

258:                                              ; preds = %255, %248
  %259 = call i32 @btrfs_subvol_make(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0))
  store i32 %259, i32* %7, align 4
  %260 = load i32, i32* %7, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %258
  %263 = load i32, i32* %7, align 4
  %264 = call i32 @log_error_errno(i32 %263, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %265

265:                                              ; preds = %262, %258
  %266 = call i32 @btrfs_subvol_auto_qgroup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i32 0, i32 1)
  store i32 %266, i32* %7, align 4
  %267 = load i32, i32* %7, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %265
  %270 = load i32, i32* %7, align 4
  %271 = call i32 @log_error_errno(i32 %270, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i64 0, i64 0))
  br label %272

272:                                              ; preds = %269, %265
  %273 = call i32 @btrfs_subvol_make(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0))
  store i32 %273, i32* %7, align 4
  %274 = load i32, i32* %7, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = load i32, i32* %7, align 4
  %278 = call i32 @log_error_errno(i32 %277, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %279

279:                                              ; preds = %276, %272
  %280 = call i32 @btrfs_subvol_auto_qgroup(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 0, i32 0)
  store i32 %280, i32* %7, align 4
  %281 = load i32, i32* %7, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load i32, i32* %7, align 4
  %285 = call i32 @log_error_errno(i32 %284, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.37, i64 0, i64 0))
  br label %286

286:                                              ; preds = %283, %279
  %287 = call i32 @btrfs_qgroup_set_limit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 0, i64 4294967296)
  store i32 %287, i32* %7, align 4
  %288 = load i32, i32* %7, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = load i32, i32* %7, align 4
  %292 = call i32 @log_error_errno(i32 %291, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i64 0, i64 0))
  br label %293

293:                                              ; preds = %290, %286
  %294 = call i32 @btrfs_subvol_set_subtree_quota_limit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i32 0, i64 5368709120)
  store i32 %294, i32* %7, align 4
  %295 = load i32, i32* %7, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  %298 = load i32, i32* %7, align 4
  %299 = call i32 @log_error_errno(i32 %298, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i64 0, i64 0))
  br label %300

300:                                              ; preds = %297, %293
  %301 = load i32, i32* @BTRFS_SNAPSHOT_RECURSIVE, align 4
  %302 = load i32, i32* @BTRFS_SNAPSHOT_QUOTA, align 4
  %303 = or i32 %301, %302
  %304 = call i32 @btrfs_subvol_snapshot(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %303)
  store i32 %304, i32* %7, align 4
  %305 = load i32, i32* %7, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %300
  %308 = load i32, i32* %7, align 4
  %309 = call i32 @log_error_errno(i32 %308, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i64 0, i64 0))
  br label %310

310:                                              ; preds = %307, %300
  %311 = call i32 @btrfs_qgroup_get_quota(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i32 0, %struct.TYPE_8__* %6)
  store i32 %311, i32* %7, align 4
  %312 = load i32, i32* %7, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %310
  %315 = load i32, i32* %7, align 4
  %316 = call i32 @log_error_errno(i32 %315, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i64 0, i64 0))
  br label %317

317:                                              ; preds = %314, %310
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = icmp eq i64 %319, 4294967296
  %321 = zext i1 %320 to i32
  %322 = call i32 @assert_se(i32 %321)
  %323 = call i32 @btrfs_subvol_get_subtree_quota(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 0, %struct.TYPE_8__* %6)
  store i32 %323, i32* %7, align 4
  %324 = load i32, i32* %7, align 4
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %317
  %327 = load i32, i32* %7, align 4
  %328 = call i32 @log_error_errno(i32 %327, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i64 0, i64 0))
  br label %329

329:                                              ; preds = %326, %317
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %331 = load i64, i64* %330, align 8
  %332 = icmp eq i64 %331, 5368709120
  %333 = zext i1 %332 to i32
  %334 = call i32 @assert_se(i32 %333)
  %335 = load i32, i32* @BTRFS_REMOVE_QUOTA, align 4
  %336 = load i32, i32* @BTRFS_REMOVE_RECURSIVE, align 4
  %337 = or i32 %335, %336
  %338 = call i32 @btrfs_subvol_remove(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i64 0, i64 0), i32 %337)
  store i32 %338, i32* %7, align 4
  %339 = load i32, i32* %7, align 4
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %329
  %342 = load i32, i32* %7, align 4
  %343 = call i32 @log_error_errno(i32 %342, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i64 0, i64 0))
  br label %344

344:                                              ; preds = %341, %329
  %345 = load i32, i32* @BTRFS_REMOVE_QUOTA, align 4
  %346 = load i32, i32* @BTRFS_REMOVE_RECURSIVE, align 4
  %347 = or i32 %345, %346
  %348 = call i32 @btrfs_subvol_remove(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %347)
  store i32 %348, i32* %7, align 4
  %349 = load i32, i32* %7, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %344
  %352 = load i32, i32* %7, align 4
  %353 = call i32 @log_error_errno(i32 %352, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i64 0, i64 0))
  br label %354

354:                                              ; preds = %351, %344
  ret i32 0
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @btrfs_subvol_get_info_fd(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @format_timestamp(i8*, i32, i32) #1

declare dso_local i32 @yes_no(i32) #1

declare dso_local i32 @btrfs_qgroup_get_quota_fd(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @strna(i32) #1

declare dso_local i32 @format_bytes(i8*, i32, i64) #1

declare dso_local i32 @btrfs_subvol_get_read_only_fd(i32) #1

declare dso_local i32 @safe_close(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @btrfs_subvol_make(i8*) #1

declare dso_local i32 @write_string_file(i8*, i8*, i32) #1

declare dso_local i32 @btrfs_subvol_snapshot(i8*, i8*, i32) #1

declare dso_local i32 @btrfs_subvol_remove(i8*, i32) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @btrfs_subvol_auto_qgroup(i8*, i32, i32) #1

declare dso_local i32 @btrfs_qgroup_set_limit(i8*, i32, i64) #1

declare dso_local i32 @btrfs_subvol_set_subtree_quota_limit(i8*, i32, i64) #1

declare dso_local i32 @btrfs_qgroup_get_quota(i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @btrfs_subvol_get_subtree_quota(i8*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
