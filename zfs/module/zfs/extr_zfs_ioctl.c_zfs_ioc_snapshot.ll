; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_snapshot.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"props\00", align 1
@SPA_VERSION_SNAP_PROPS = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"snaps\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_USERPROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_snapshot(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @nvlist_lookup_nvlist(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32** %9)
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @nvlist_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @SPA_VERSION_SNAP_PROPS, align 4
  %24 = call i64 @zfs_earlier_version(i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOTSUP, align 4
  %28 = call i32 @SET_ERROR(i32 %27)
  store i32 %28, i32* %4, align 4
  br label %140

29:                                               ; preds = %21, %3
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @zfs_check_userprops(i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %140

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @fnvlist_lookup_nvlist(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %37, i32** %8, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32* @nvlist_next_nvpair(i32* %40, i32* null)
  store i32* %41, i32** %12, align 8
  br label %42

42:                                               ; preds = %130, %35
  %43 = load i32*, i32** %12, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %134

45:                                               ; preds = %42
  %46 = load i32*, i32** %12, align 8
  %47 = call i8* @nvpair_name(i32* %46)
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 64)
  store i8* %49, i8** %14, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = load i8*, i8** %14, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i64 @zfs_component_namecheck(i8* %54, i32* null, i32* null)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %45
  %58 = load i32, i32* @EINVAL, align 4
  %59 = call i32 @SET_ERROR(i32 %58)
  store i32 %59, i32* %4, align 4
  br label %140

60:                                               ; preds = %52
  %61 = load i8*, i8** %13, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @strncmp(i8* %61, i8* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 47
  br i1 %73, label %74, label %85

74:                                               ; preds = %66
  %75 = load i8*, i8** %13, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 64
  br i1 %81, label %82, label %85

82:                                               ; preds = %74, %60
  %83 = load i32, i32* @EXDEV, align 4
  %84 = call i32 @SET_ERROR(i32 %83)
  store i32 %84, i32* %4, align 4
  br label %140

85:                                               ; preds = %74, %66
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @nvlist_empty(i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %14, align 8
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %13, align 8
  %92 = load i32, i32* @ZFS_DELEG_PERM_USERPROP, align 4
  %93 = call i32 (...) @CRED()
  %94 = call i32 @zfs_secpolicy_write_perms(i8* %91, i32 %92, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i8*, i8** %14, align 8
  store i8 64, i8* %95, align 1
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %140

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %85
  %102 = load i32*, i32** %8, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = call i32* @nvlist_next_nvpair(i32* %102, i32* %103)
  store i32* %104, i32** %15, align 8
  br label %105

105:                                              ; preds = %125, %101
  %106 = load i32*, i32** %15, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %129

108:                                              ; preds = %105
  %109 = load i8*, i8** %13, align 8
  %110 = load i32*, i32** %15, align 8
  %111 = call i8* @nvpair_name(i32* %110)
  %112 = load i8*, i8** %14, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = add nsw i64 %116, 1
  %118 = trunc i64 %117 to i32
  %119 = call i64 @strncmp(i8* %109, i8* %111, i32 %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %108
  %122 = load i32, i32* @EXDEV, align 4
  %123 = call i32 @SET_ERROR(i32 %122)
  store i32 %123, i32* %4, align 4
  br label %140

124:                                              ; preds = %108
  br label %125

125:                                              ; preds = %124
  %126 = load i32*, i32** %8, align 8
  %127 = load i32*, i32** %15, align 8
  %128 = call i32* @nvlist_next_nvpair(i32* %126, i32* %127)
  store i32* %128, i32** %15, align 8
  br label %105

129:                                              ; preds = %105
  br label %130

130:                                              ; preds = %129
  %131 = load i32*, i32** %8, align 8
  %132 = load i32*, i32** %12, align 8
  %133 = call i32* @nvlist_next_nvpair(i32* %131, i32* %132)
  store i32* %133, i32** %12, align 8
  br label %42

134:                                              ; preds = %42
  %135 = load i32*, i32** %8, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @dsl_dataset_snapshot(i32* %135, i32* %136, i32* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %134, %121, %98, %82, %57, %33, %26
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i32 @nvlist_empty(i32*) #1

declare dso_local i64 @zfs_earlier_version(i8*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_check_userprops(i32*) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @zfs_component_namecheck(i8*, i32*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @zfs_secpolicy_write_perms(i8*, i32, i32) #1

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @dsl_dataset_snapshot(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
