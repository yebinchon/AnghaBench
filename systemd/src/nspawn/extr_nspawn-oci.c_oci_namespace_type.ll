; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_namespace_type.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_namespace_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@CLONE_NEWPID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@CLONE_NEWNET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"mount\00", align 1
@CLONE_NEWNS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"ipc\00", align 1
@CLONE_NEWIPC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"uts\00", align 1
@CLONE_NEWUTS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@CLONE_NEWUSER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"cgroup\00", align 1
@CLONE_NEWCGROUP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Unknown cgroup type, refusing: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i8*)* @oci_namespace_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_namespace_type(i8* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %10, align 8
  %14 = load i64*, i64** %10, align 8
  %15 = call i32 @assert(i64* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = call i8* @json_variant_string(i32* %16)
  store i8* %17, i8** %11, align 8
  %18 = call i32 @assert_se(i8* %17)
  %19 = load i8*, i8** %11, align 8
  %20 = call i64 @streq(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* @CLONE_NEWPID, align 8
  %24 = load i64*, i64** %10, align 8
  store i64 %23, i64* %24, align 8
  br label %80

25:                                               ; preds = %4
  %26 = load i8*, i8** %11, align 8
  %27 = call i64 @streq(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* @CLONE_NEWNET, align 8
  %31 = load i64*, i64** %10, align 8
  store i64 %30, i64* %31, align 8
  br label %79

32:                                               ; preds = %25
  %33 = load i8*, i8** %11, align 8
  %34 = call i64 @streq(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* @CLONE_NEWNS, align 8
  %38 = load i64*, i64** %10, align 8
  store i64 %37, i64* %38, align 8
  br label %78

39:                                               ; preds = %32
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @streq(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, i64* @CLONE_NEWIPC, align 8
  %45 = load i64*, i64** %10, align 8
  store i64 %44, i64* %45, align 8
  br label %77

46:                                               ; preds = %39
  %47 = load i8*, i8** %11, align 8
  %48 = call i64 @streq(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, i64* @CLONE_NEWUTS, align 8
  %52 = load i64*, i64** %10, align 8
  store i64 %51, i64* %52, align 8
  br label %76

53:                                               ; preds = %46
  %54 = load i8*, i8** %11, align 8
  %55 = call i64 @streq(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i64, i64* @CLONE_NEWUSER, align 8
  %59 = load i64*, i64** %10, align 8
  store i64 %58, i64* %59, align 8
  br label %75

60:                                               ; preds = %53
  %61 = load i8*, i8** %11, align 8
  %62 = call i64 @streq(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i64, i64* @CLONE_NEWCGROUP, align 8
  %66 = load i64*, i64** %10, align 8
  store i64 %65, i64* %66, align 8
  br label %74

67:                                               ; preds = %60
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @EINVAL, align 4
  %71 = call i32 @SYNTHETIC_ERRNO(i32 %70)
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @json_log(i32* %68, i32 %69, i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %72)
  store i32 %73, i32* %5, align 4
  br label %81

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %57
  br label %76

76:                                               ; preds = %75, %50
  br label %77

77:                                               ; preds = %76, %43
  br label %78

78:                                               ; preds = %77, %36
  br label %79

79:                                               ; preds = %78, %29
  br label %80

80:                                               ; preds = %79, %22
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %67
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i32 @assert_se(i8*) #1

declare dso_local i8* @json_variant_string(i32*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @json_log(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
