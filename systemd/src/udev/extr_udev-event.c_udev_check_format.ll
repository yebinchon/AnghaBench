; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-event.c_udev_check_format.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-event.c_udev_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTIL_PATH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid substitution type\00", align 1
@FORMAT_SUBST_ATTR = common dso_local global i32 0, align 4
@FORMAT_SUBST_ENV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"attribute value missing\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FORMAT_SUBST_RESULT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"attribute value not a valid number\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udev_check_format(i8* %0, i64* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i32, i32* @UTIL_PATH_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  br label %20

20:                                               ; preds = %108, %48, %3
  %21 = load i8*, i8** %9, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %109

24:                                               ; preds = %20
  %25 = call i32 @get_subst_type(i8** %9, i32 1, i64* %8, i8* %19)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i64*, i64** %6, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = load i64*, i64** %6, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i8**, i8*** %7, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %110

45:                                               ; preds = %24
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  br label %20

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* @FORMAT_SUBST_ATTR, align 4
  %55 = load i32, i32* @FORMAT_SUBST_ENV, align 4
  %56 = call i64 @IN_SET(i64 %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = call i64 @isempty(i8* %19)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load i64*, i64** %6, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = load i64*, i64** %6, align 8
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %61
  %72 = load i8**, i8*** %7, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %75, align 8
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %110

79:                                               ; preds = %58, %52
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @FORMAT_SUBST_RESULT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %79
  %84 = call i64 @isempty(i8* %19)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %83
  %87 = call i32 @safe_atou_optional_plus(i8* %19, i32* %14)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %107

90:                                               ; preds = %86
  %91 = load i64*, i64** %6, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = load i64*, i64** %6, align 8
  store i64 %98, i64* %99, align 8
  br label %100

100:                                              ; preds = %93, %90
  %101 = load i8**, i8*** %7, align 8
  %102 = icmp ne i8** %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i8**, i8*** %7, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %104, align 8
  br label %105

105:                                              ; preds = %103, %100
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %110

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107, %83, %79
  br label %20

109:                                              ; preds = %20
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %110

110:                                              ; preds = %109, %105, %76, %43
  %111 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_subst_type(i8**, i32, i64*, i8*) #2

declare dso_local i64 @IN_SET(i64, i32, i32) #2

declare dso_local i64 @isempty(i8*) #2

declare dso_local i32 @safe_atou_optional_plus(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
