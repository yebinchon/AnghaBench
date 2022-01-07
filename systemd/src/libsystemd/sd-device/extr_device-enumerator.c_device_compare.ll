; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_device-enumerator.c_device_compare.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-device/extr_device-enumerator.c_device_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"/sound/card\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/controlC\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"/contolC\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"/block/md\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"/block/dm-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**)* @device_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_compare(i32** %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  %16 = load i32**, i32*** %4, align 8
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load i32**, i32*** %5, align 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @sd_device_get_devpath(i32* %20, i8** %8)
  %22 = icmp sge i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert_se(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @sd_device_get_devpath(i32* %25, i8** %9)
  %27 = icmp sge i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert_se(i32 %28)
  %30 = load i8*, i8** %8, align 8
  %31 = call i8* @strstr(i8* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %80

34:                                               ; preds = %2
  %35 = call i32 @STRLEN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %10, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 47)
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %79

43:                                               ; preds = %34
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i64 @strncmp(i8* %50, i8* %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %43
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %14, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8* %59, i8** %15, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i64 @startswith(i8* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i8*, i8** %15, align 8
  %65 = call i64 @startswith(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %112

68:                                               ; preds = %63, %55
  %69 = load i8*, i8** %10, align 8
  %70 = call i64 @startswith(i8* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %15, align 8
  %74 = call i64 @startswith(i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 -1, i32* %3, align 4
  br label %112

77:                                               ; preds = %72, %68
  br label %78

78:                                               ; preds = %77, %43
  br label %79

79:                                               ; preds = %78, %34
  br label %80

80:                                               ; preds = %79, %2
  %81 = load i8*, i8** %8, align 8
  %82 = call i8* @strstr(i8* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i8* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %8, align 8
  %86 = call i8* @strstr(i8* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %87 = icmp ne i8* %86, null
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i1 [ true, %80 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = call i8* @strstr(i8* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %93 = icmp ne i8* %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = load i8*, i8** %9, align 8
  %96 = call i8* @strstr(i8* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %97 = icmp ne i8* %96, null
  br label %98

98:                                               ; preds = %94, %88
  %99 = phi i1 [ true, %88 ], [ %97, %94 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @CMP(i32 %101, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %3, align 4
  br label %112

108:                                              ; preds = %98
  %109 = load i8*, i8** %8, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @strcmp(i8* %109, i8* %110)
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %106, %76, %67
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_device_get_devpath(i32*, i8**) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @startswith(i8*, i8*) #1

declare dso_local i32 @CMP(i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
