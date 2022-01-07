; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c__zed_conf_parse_path.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c__zed_conf_parse_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to get current working dir: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to copy path: %s\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*)* @_zed_conf_parse_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_zed_conf_parse_path(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @PATH_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i8**, i8*** %3, align 8
  %12 = icmp ne i8** %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i8**, i8*** %3, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i8**, i8*** %3, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @free(i8* %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 47
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @strdup(i8* %33)
  %35 = load i8**, i8*** %3, align 8
  store i8* %34, i8** %35, align 8
  br label %69

36:                                               ; preds = %26
  %37 = trunc i64 %8 to i32
  %38 = call i32 @getcwd(i8* %10, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 @zed_log_die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %68

44:                                               ; preds = %36
  %45 = trunc i64 %8 to i32
  %46 = call i32 @strlcat(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %47, %8
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @ENAMETOOLONG, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 @zed_log_die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %67

53:                                               ; preds = %44
  %54 = load i8*, i8** %4, align 8
  %55 = trunc i64 %8 to i32
  %56 = call i32 @strlcat(i8* %10, i8* %54, i32 %55)
  %57 = sext i32 %56 to i64
  %58 = icmp uge i64 %57, %8
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @ENAMETOOLONG, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = call i32 @zed_log_die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %66

63:                                               ; preds = %53
  %64 = call i8* @strdup(i8* %10)
  %65 = load i8**, i8*** %3, align 8
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %66, %49
  br label %68

68:                                               ; preds = %67, %40
  br label %69

69:                                               ; preds = %68, %32
  %70 = load i8**, i8*** %3, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = call i32 @strerror(i32 %74)
  %76 = call i32 @zed_log_die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %78)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @getcwd(i8*, i32) #2

declare dso_local i32 @zed_log_die(i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
