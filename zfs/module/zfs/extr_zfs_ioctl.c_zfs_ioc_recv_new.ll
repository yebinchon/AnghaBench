; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_recv_new.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_recv_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"snapname\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"begin_record\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"input_fd\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"resumable\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"cleanup_fd\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"action_handle\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"localprops\00", align 1
@ZPOOL_HIDDEN_ARGS = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"read_bytes\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"error_flags\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_recv_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_recv_new(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i8* null, i8** %15, align 8
  %28 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %17, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %18, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i8* @fnvlist_lookup_string(i32* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = call i64 @dataset_namecheck(i8* %34, i32* null, i32* null)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %3
  %38 = load i8*, i8** %14, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 64)
  %40 = icmp eq i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %14, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 37)
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %37, %3
  %46 = load i32, i32* @EINVAL, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %169

48:                                               ; preds = %41
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @strcpy(i8* %31, i8* %49)
  %51 = call i8* @strchr(i8* %31, i8 signext 64)
  store i8* %51, i8** %16, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %16, align 8
  store i8 0, i8* %52, align 1
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @nvlist_lookup_string(i32* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %15)
  store i32 %55, i32* %26, align 4
  %56 = load i32, i32* %26, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load i32, i32* %26, align 4
  %60 = load i32, i32* @ENOENT, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %26, align 4
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %169

64:                                               ; preds = %58, %48
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @nvlist_lookup_byte_array(i32* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32** %8, i32* %9)
  store i32 %66, i32* %26, align 4
  %67 = load i32, i32* %26, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %71, 4
  br i1 %72, label %73, label %76

73:                                               ; preds = %69, %64
  %74 = load i32, i32* @EINVAL, align 4
  %75 = call i32 @SET_ERROR(i32 %74)
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %169

76:                                               ; preds = %69
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @fnvlist_lookup_int32(i32* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %78, i32* %24, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @nvlist_exists(i32* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %80, i32* %19, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @nvlist_exists(i32* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %82, i32* %20, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @nvlist_lookup_int32(i32* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %25)
  store i32 %84, i32* %26, align 4
  %85 = load i32, i32* %26, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load i32, i32* %26, align 4
  %89 = load i32, i32* @ENOENT, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %26, align 4
  store i32 %92, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %169

93:                                               ; preds = %87, %76
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @nvlist_lookup_uint64(i32* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* %21)
  store i32 %95, i32* %26, align 4
  %96 = load i32, i32* %26, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* %26, align 4
  %100 = load i32, i32* @ENOENT, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %26, align 4
  store i32 %103, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %169

104:                                              ; preds = %98, %93
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 @nvlist_lookup_nvlist(i32* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32** %11)
  store i32 %106, i32* %26, align 4
  %107 = load i32, i32* %26, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32, i32* %26, align 4
  %111 = load i32, i32* @ENOENT, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* %26, align 4
  store i32 %114, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %169

115:                                              ; preds = %109, %104
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @nvlist_lookup_nvlist(i32* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32** %12)
  store i32 %117, i32* %26, align 4
  %118 = load i32, i32* %26, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* @ENOENT, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* %26, align 4
  store i32 %125, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %169

126:                                              ; preds = %120, %115
  %127 = load i32*, i32** %6, align 8
  %128 = load i8*, i8** @ZPOOL_HIDDEN_ARGS, align 8
  %129 = call i32 @nvlist_lookup_nvlist(i32* %127, i8* %128, i32** %13)
  store i32 %129, i32* %26, align 4
  %130 = load i32, i32* %26, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %126
  %133 = load i32, i32* %26, align 4
  %134 = load i32, i32* @ENOENT, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* %26, align 4
  store i32 %137, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %169

138:                                              ; preds = %132, %126
  %139 = load i8*, i8** %16, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = load i32*, i32** %12, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* %24, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %25, align 4
  %149 = call i32 @zfs_ioc_recv_impl(i8* %31, i8* %139, i8* %140, i32* %141, i32* %142, i32* %143, i32 %144, i32 %145, i32 %146, i32* %147, i32 %148, i32* %22, i32* %23, i32* %21, i32** %10)
  store i32 %149, i32* %26, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %22, align 4
  %152 = call i32 @fnvlist_add_uint64(i32* %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %151)
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %23, align 4
  %155 = call i32 @fnvlist_add_uint64(i32* %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %154)
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* %21, align 4
  %158 = call i32 @fnvlist_add_uint64(i32* %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %157)
  %159 = load i32*, i32** %7, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = call i32 @fnvlist_add_nvlist(i32* %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32* %160)
  %162 = load i32*, i32** %10, align 8
  %163 = call i32 @nvlist_free(i32* %162)
  %164 = load i32*, i32** %11, align 8
  %165 = call i32 @nvlist_free(i32* %164)
  %166 = load i32*, i32** %12, align 8
  %167 = call i32 @nvlist_free(i32* %166)
  %168 = load i32, i32* %26, align 4
  store i32 %168, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %169

169:                                              ; preds = %138, %136, %124, %113, %102, %91, %73, %62, %45
  %170 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i8*) #2

declare dso_local i64 @dataset_namecheck(i8*, i32*, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @nvlist_lookup_string(i32*, i8*, i8**) #2

declare dso_local i32 @nvlist_lookup_byte_array(i32*, i8*, i32**, i32*) #2

declare dso_local i32 @fnvlist_lookup_int32(i32*, i8*) #2

declare dso_local i32 @nvlist_exists(i32*, i8*) #2

declare dso_local i32 @nvlist_lookup_int32(i32*, i8*, i32*) #2

declare dso_local i32 @nvlist_lookup_uint64(i32*, i8*, i32*) #2

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i8*, i32**) #2

declare dso_local i32 @zfs_ioc_recv_impl(i8*, i8*, i8*, i32*, i32*, i32*, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32**) #2

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i32) #2

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
