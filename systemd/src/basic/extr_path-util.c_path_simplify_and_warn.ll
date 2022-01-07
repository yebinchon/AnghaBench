; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_path-util.c_path_simplify_and_warn.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_path-util.c_path_simplify_and_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_CHECK_FATAL = common dso_local global i32 0, align 4
@PATH_CHECK_ABSOLUTE = common dso_local global i32 0, align 4
@PATH_CHECK_RELATIVE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s= path is not absolute%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c", ignoring\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s= path is absolute%s: %s\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s= path has invalid length (%zu bytes)%s.\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%s= path is not normalized%s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @path_simplify_and_warn(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @PATH_CHECK_FATAL, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PATH_CHECK_ABSOLUTE, align 4
  %21 = load i32, i32* @PATH_CHECK_RELATIVE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @FLAGS_SET(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @utf8_is_valid(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %6
  %32 = load i8*, i8** %10, align 8
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @log_syntax_invalid_utf8(i8* %32, i32 %33, i8* %34, i32 %35, i8* %36)
  store i32 %37, i32* %7, align 4
  br label %132

38:                                               ; preds = %6
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @PATH_CHECK_ABSOLUTE, align 4
  %41 = load i32, i32* @PATH_CHECK_RELATIVE, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %38
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @path_is_absolute(i8* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @PATH_CHECK_ABSOLUTE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* @LOG_ERR, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = call i32 @SYNTHETIC_ERRNO(i32 %60)
  %62 = load i8*, i8** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @log_syntax(i8* %56, i32 %57, i8* %58, i32 %59, i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %62, i8* %66, i8* %67)
  store i32 %68, i32* %7, align 4
  br label %132

69:                                               ; preds = %50, %45
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @PATH_CHECK_RELATIVE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* @LOG_ERR, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @EINVAL, align 4
  %83 = call i32 @SYNTHETIC_ERRNO(i32 %82)
  %84 = load i8*, i8** %13, align 8
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @log_syntax(i8* %78, i32 %79, i8* %80, i32 %81, i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %84, i8* %88, i8* %89)
  store i32 %90, i32* %7, align 4
  br label %132

91:                                               ; preds = %72, %69
  br label %92

92:                                               ; preds = %91, %38
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @path_simplify(i8* %93, i32 1)
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @path_is_valid(i8* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %92
  %99 = load i8*, i8** %10, align 8
  %100 = load i32, i32* @LOG_ERR, align 4
  %101 = load i8*, i8** %11, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @EINVAL, align 4
  %104 = call i32 @SYNTHETIC_ERRNO(i32 %103)
  %105 = load i8*, i8** %13, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = call i8* @strlen(i8* %106)
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %112 = call i32 @log_syntax(i8* %99, i32 %100, i8* %101, i32 %102, i32 %104, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %105, i8* %107, i8* %111)
  store i32 %112, i32* %7, align 4
  br label %132

113:                                              ; preds = %92
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 @path_is_normalized(i8* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %113
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* @LOG_ERR, align 4
  %120 = load i8*, i8** %11, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @EINVAL, align 4
  %123 = call i32 @SYNTHETIC_ERRNO(i32 %122)
  %124 = load i8*, i8** %13, align 8
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 @log_syntax(i8* %118, i32 %119, i8* %120, i32 %121, i32 %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %124, i8* %128, i8* %129)
  store i32 %130, i32* %7, align 4
  br label %132

131:                                              ; preds = %113
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %131, %117, %98, %77, %55, %31
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FLAGS_SET(i32, i32) #1

declare dso_local i32 @utf8_is_valid(i8*) #1

declare dso_local i32 @log_syntax_invalid_utf8(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @path_is_absolute(i8*) #1

declare dso_local i32 @log_syntax(i8*, i32, i8*, i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @path_simplify(i8*, i32) #1

declare dso_local i32 @path_is_valid(i8*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @path_is_normalized(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
