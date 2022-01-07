; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_user-util.c_get_group_creds.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_user-util.c_get_group_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@NOBODY_GROUP_NAME = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"65534\00", align 1
@GID_NOBODY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@USER_CREDS_ALLOW_MISSING = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_group_creds(i8** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.group*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @assert(i8** %10)
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @STR_IN_SET(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %16
  store i32 0, i32* %4, align 4
  br label %98

23:                                               ; preds = %3
  %24 = call i64 (...) @synthesize_nobody()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** @NOBODY_GROUP_NAME, align 8
  %30 = call i64 @STR_IN_SET(i8* %28, i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i8*, i8** @NOBODY_GROUP_NAME, align 8
  %34 = load i8**, i8*** %5, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @GID_NOBODY, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %32
  store i32 0, i32* %4, align 4
  br label %98

41:                                               ; preds = %26, %23
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @parse_gid(i8* %43, i32* %9)
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  store i64 0, i64* @errno, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call %struct.group* @getgrgid(i32 %47)
  store %struct.group* %48, %struct.group** %8, align 8
  %49 = load %struct.group*, %struct.group** %8, align 8
  %50 = icmp ne %struct.group* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.group*, %struct.group** %8, align 8
  %53 = getelementptr inbounds %struct.group, %struct.group* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8**, i8*** %5, align 8
  store i8* %54, i8** %55, align 8
  br label %69

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @USER_CREDS_ALLOW_MISSING, align 4
  %59 = call i64 @FLAGS_SET(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32*, i32** %6, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %61
  store i32 0, i32* %4, align 4
  br label %98

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %51
  br label %74

70:                                               ; preds = %41
  store i64 0, i64* @errno, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call %struct.group* @getgrnam(i8* %72)
  store %struct.group* %73, %struct.group** %8, align 8
  br label %74

74:                                               ; preds = %70, %69
  %75 = load %struct.group*, %struct.group** %8, align 8
  %76 = icmp ne %struct.group* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @ESRCH, align 4
  %79 = call i32 @errno_or_else(i32 %78)
  store i32 %79, i32* %4, align 4
  br label %98

80:                                               ; preds = %74
  %81 = load i32*, i32** %6, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load %struct.group*, %struct.group** %8, align 8
  %85 = getelementptr inbounds %struct.group, %struct.group* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @gid_is_valid(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @EBADMSG, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %98

92:                                               ; preds = %83
  %93 = load %struct.group*, %struct.group** %8, align 8
  %94 = getelementptr inbounds %struct.group, %struct.group* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %6, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %80
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %89, %77, %67, %40, %22
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @assert(i8**) #1

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*) #1

declare dso_local i64 @synthesize_nobody(...) #1

declare dso_local i64 @parse_gid(i8*, i32*) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local i64 @FLAGS_SET(i32, i32) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i32 @errno_or_else(i32) #1

declare dso_local i32 @gid_is_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
