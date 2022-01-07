; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_ExpandTilde.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_ExpandTilde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@LOCAL_PATH_DELIM_STR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @ExpandTilde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExpandTilde(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 126
  br i1 %15, label %16, label %86

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = call i64 @isalnum(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @IsLocalPathDelim(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %86

35:                                               ; preds = %29, %23, %16
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @STRNCPY(i8* %36, i8* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @StrFindLocalPathDelim(i8* %39)
  store i8* %40, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %7, align 8
  br label %47

46:                                               ; preds = %35
  store i8* null, i8** %7, align 8
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @GetHomeDir(i8* %54, i32 8)
  %56 = load i8*, i8** %10, align 8
  store i8* %56, i8** %8, align 8
  br label %69

57:                                               ; preds = %47
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call %struct.passwd* @getpwnam(i8* %59)
  store %struct.passwd* %60, %struct.passwd** %9, align 8
  %61 = load %struct.passwd*, %struct.passwd** %9, align 8
  %62 = icmp ne %struct.passwd* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.passwd*, %struct.passwd** %9, align 8
  %65 = getelementptr inbounds %struct.passwd, %struct.passwd* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %8, align 8
  br label %68

67:                                               ; preds = %57
  br label %86

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %53
  %70 = load i8*, i8** %3, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @Strncpy(i8* %70, i8* %71, i64 %72)
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  %77 = load i8*, i8** %3, align 8
  %78 = load i8*, i8** @LOCAL_PATH_DELIM_STR, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @Strncat(i8* %77, i8* %78, i64 %79)
  %81 = load i8*, i8** %3, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @Strncat(i8* %81, i8* %82, i64 %83)
  br label %85

85:                                               ; preds = %76, %69
  br label %86

86:                                               ; preds = %67, %85, %29, %2
  ret void
}

declare dso_local i64 @isalnum(i32) #1

declare dso_local i64 @IsLocalPathDelim(i8 signext) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i8* @StrFindLocalPathDelim(i8*) #1

declare dso_local i32 @GetHomeDir(i8*, i32) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @Strncpy(i8*, i8*, i64) #1

declare dso_local i32 @Strncat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
