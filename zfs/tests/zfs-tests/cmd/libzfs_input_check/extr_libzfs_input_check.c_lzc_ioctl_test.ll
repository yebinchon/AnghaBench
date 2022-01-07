; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_lzc_ioctl_test.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_lzc_ioctl_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bogus_input\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"bogus\00", align 1
@ZFS_ERR_IOC_ARG_UNAVAIL = common dso_local global i32 0, align 4
@ZFS_ERR_IOC_ARG_REQUIRED = common dso_local global i32 0, align 4
@MAXNAMELEN = common dso_local global i32 0, align 4
@ZFS_ERR_IOC_ARG_BADTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, i32*, i32, i32)* @lzc_ioctl_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzc_ioctl_test(i32 %0, i8* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = call i32* (...) @fnvlist_alloc()
  store i32* %23, i32** %13, align 8
  %24 = call i32* (...) @fnvlist_alloc()
  store i32* %24, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %6
  %28 = load i32*, i32** %9, align 8
  %29 = call i32* @nvlist_next_nvpair(i32* %28, i32* null)
  store i32* %29, i32** %16, align 8
  br label %30

30:                                               ; preds = %37, %27
  %31 = load i32*, i32** %16, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32*, i32** %13, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = call i32 @fnvlist_add_nvpair(i32* %34, i32* %35)
  br label %37

37:                                               ; preds = %33
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = call i32* @nvlist_next_nvpair(i32* %38, i32* %39)
  store i32* %40, i32** %16, align 8
  br label %30

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %6
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32*, i32** %10, align 8
  %47 = call i32* @nvlist_next_nvpair(i32* %46, i32* null)
  store i32* %47, i32** %17, align 8
  br label %48

48:                                               ; preds = %55, %45
  %49 = load i32*, i32** %17, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32*, i32** %13, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = call i32 @fnvlist_add_nvpair(i32* %52, i32* %53)
  br label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %10, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = call i32* @nvlist_next_nvpair(i32* %56, i32* %57)
  store i32* %58, i32** %17, align 8
  br label %48

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i32*, i32** %13, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = call i32 @fnvlist_add_nvlist(i32* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %65)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %7, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @lzc_ioctl_run(i32 %68, i8* %69, i32* %70, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @fnvlist_remove(i32* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %67
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @fnvlist_add_string(i32* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* %7, align 4
  %85 = load i8*, i8** %8, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* @ZFS_ERR_IOC_ARG_UNAVAIL, align 4
  %88 = call i32 @lzc_ioctl_run(i32 %84, i8* %85, i32* %86, i32 %87)
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @fnvlist_remove(i32* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %81, %78
  %92 = load i32*, i32** %9, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = call i32* (...) @fnvlist_alloc()
  store i32* %95, i32** %18, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = load i32, i32* @ZFS_ERR_IOC_ARG_REQUIRED, align 4
  %100 = call i32 @lzc_ioctl_run(i32 %96, i8* %97, i32* %98, i32 %99)
  %101 = load i32*, i32** %18, align 8
  %102 = call i32 @nvlist_free(i32* %101)
  br label %103

103:                                              ; preds = %94, %91
  %104 = load i32*, i32** %9, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32*, i32** %10, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %150

109:                                              ; preds = %106, %103
  %110 = load i32*, i32** %13, align 8
  %111 = call i32* @nvlist_next_nvpair(i32* %110, i32* null)
  store i32* %111, i32** %19, align 8
  br label %112

112:                                              ; preds = %140, %109
  %113 = load i32*, i32** %19, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %144

115:                                              ; preds = %112
  %116 = load i32, i32* @MAXNAMELEN, align 4
  %117 = zext i32 %116 to i64
  %118 = call i8* @llvm.stacksave()
  store i8* %118, i8** %20, align 8
  %119 = alloca i8, i64 %117, align 16
  store i64 %117, i64* %21, align 8
  %120 = load i32*, i32** %19, align 8
  %121 = call i32 @nvpair_name(i32* %120)
  %122 = trunc i64 %117 to i32
  %123 = call i32 @strlcpy(i8* %119, i32 %121, i32 %122)
  %124 = sub i64 %117, 1
  %125 = getelementptr inbounds i8, i8* %119, i64 %124
  store i8 0, i8* %125, align 1
  %126 = load i32*, i32** %19, align 8
  %127 = call i32 @nvpair_type(i32* %126)
  store i32 %127, i32* %22, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = load i32*, i32** %19, align 8
  %130 = call i32 @fnvlist_remove_nvpair(i32* %128, i32* %129)
  %131 = load i32, i32* %22, align 4
  switch i32 %131, label %135 [
    i32 128, label %132
  ]

132:                                              ; preds = %115
  %133 = load i32*, i32** %13, align 8
  %134 = call i32 @fnvlist_add_uint64(i32* %133, i8* %119, i32 42)
  br label %138

135:                                              ; preds = %115
  %136 = load i32*, i32** %13, align 8
  %137 = call i32 @fnvlist_add_string(i32* %136, i8* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %139)
  br label %140

140:                                              ; preds = %138
  %141 = load i32*, i32** %13, align 8
  %142 = load i32*, i32** %19, align 8
  %143 = call i32* @nvlist_next_nvpair(i32* %141, i32* %142)
  store i32* %143, i32** %19, align 8
  br label %112

144:                                              ; preds = %112
  %145 = load i32, i32* %7, align 4
  %146 = load i8*, i8** %8, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* @ZFS_ERR_IOC_ARG_BADTYPE, align 4
  %149 = call i32 @lzc_ioctl_run(i32 %145, i8* %146, i32* %147, i32 %148)
  br label %150

150:                                              ; preds = %144, %106
  %151 = load i32*, i32** %14, align 8
  %152 = call i32 @nvlist_free(i32* %151)
  %153 = load i32*, i32** %13, align 8
  %154 = call i32 @nvlist_free(i32* %153)
  %155 = load i32, i32* %15, align 4
  ret i32 %155
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @fnvlist_add_nvpair(i32*, i32*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @lzc_ioctl_run(i32, i8*, i32*, i32) #1

declare dso_local i32 @fnvlist_remove(i32*, i8*) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_free(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @fnvlist_remove_nvpair(i32*, i32*) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
