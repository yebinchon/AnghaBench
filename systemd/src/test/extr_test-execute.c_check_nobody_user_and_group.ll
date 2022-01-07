; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-execute.c_check_nobody_user_and_group.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-execute.c_check_nobody_user_and_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64, i64, i32 }
%struct.group = type { i64, i32 }

@check_nobody_user_and_group.cache = internal global i32 -1, align 4
@NOBODY_USER_NAME = common dso_local global i32 0, align 4
@UID_NOBODY = common dso_local global i64 0, align 8
@GID_NOBODY = common dso_local global i64 0, align 8
@NOBODY_GROUP_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_nobody_user_and_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_nobody_user_and_group() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.passwd*, align 8
  %3 = alloca %struct.group*, align 8
  %4 = load i32, i32* @check_nobody_user_and_group.cache, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @check_nobody_user_and_group.cache, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %1, align 4
  br label %106

12:                                               ; preds = %0
  %13 = call i32 (...) @synthesize_nobody()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %105

16:                                               ; preds = %12
  %17 = load i32, i32* @NOBODY_USER_NAME, align 4
  %18 = call %struct.passwd* @getpwnam(i32 %17)
  store %struct.passwd* %18, %struct.passwd** %2, align 8
  %19 = load %struct.passwd*, %struct.passwd** %2, align 8
  %20 = icmp ne %struct.passwd* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  %22 = load %struct.passwd*, %struct.passwd** %2, align 8
  %23 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NOBODY_USER_NAME, align 4
  %26 = call i32 @streq(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load %struct.passwd*, %struct.passwd** %2, align 8
  %30 = getelementptr inbounds %struct.passwd, %struct.passwd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UID_NOBODY, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.passwd*, %struct.passwd** %2, align 8
  %36 = getelementptr inbounds %struct.passwd, %struct.passwd* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GID_NOBODY, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %28, %21, %16
  br label %105

41:                                               ; preds = %34
  %42 = load i64, i64* @UID_NOBODY, align 8
  %43 = call %struct.passwd* @getpwuid(i64 %42)
  store %struct.passwd* %43, %struct.passwd** %2, align 8
  %44 = load %struct.passwd*, %struct.passwd** %2, align 8
  %45 = icmp ne %struct.passwd* %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load %struct.passwd*, %struct.passwd** %2, align 8
  %48 = getelementptr inbounds %struct.passwd, %struct.passwd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @NOBODY_USER_NAME, align 4
  %51 = call i32 @streq(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load %struct.passwd*, %struct.passwd** %2, align 8
  %55 = getelementptr inbounds %struct.passwd, %struct.passwd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @UID_NOBODY, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.passwd*, %struct.passwd** %2, align 8
  %61 = getelementptr inbounds %struct.passwd, %struct.passwd* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GID_NOBODY, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %53, %46, %41
  br label %105

66:                                               ; preds = %59
  %67 = load i32, i32* @NOBODY_GROUP_NAME, align 4
  %68 = call %struct.group* @getgrnam(i32 %67)
  store %struct.group* %68, %struct.group** %3, align 8
  %69 = load %struct.group*, %struct.group** %3, align 8
  %70 = icmp ne %struct.group* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = load %struct.group*, %struct.group** %3, align 8
  %73 = getelementptr inbounds %struct.group, %struct.group* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @NOBODY_GROUP_NAME, align 4
  %76 = call i32 @streq(i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.group*, %struct.group** %3, align 8
  %80 = getelementptr inbounds %struct.group, %struct.group* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @GID_NOBODY, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %71, %66
  br label %105

85:                                               ; preds = %78
  %86 = load i64, i64* @GID_NOBODY, align 8
  %87 = call %struct.group* @getgrgid(i64 %86)
  store %struct.group* %87, %struct.group** %3, align 8
  %88 = load %struct.group*, %struct.group** %3, align 8
  %89 = icmp ne %struct.group* %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.group*, %struct.group** %3, align 8
  %92 = getelementptr inbounds %struct.group, %struct.group* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @NOBODY_GROUP_NAME, align 4
  %95 = call i32 @streq(i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load %struct.group*, %struct.group** %3, align 8
  %99 = getelementptr inbounds %struct.group, %struct.group* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @GID_NOBODY, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97, %90, %85
  br label %105

104:                                              ; preds = %97
  store i32 1, i32* @check_nobody_user_and_group.cache, align 4
  store i32 1, i32* %1, align 4
  br label %106

105:                                              ; preds = %103, %84, %65, %40, %15
  store i32 0, i32* @check_nobody_user_and_group.cache, align 4
  store i32 0, i32* %1, align 4
  br label %106

106:                                              ; preds = %105, %104, %6
  %107 = load i32, i32* %1, align 4
  ret i32 %107
}

declare dso_local i32 @synthesize_nobody(...) #1

declare dso_local %struct.passwd* @getpwnam(i32) #1

declare dso_local i32 @streq(i32, i32) #1

declare dso_local %struct.passwd* @getpwuid(i64) #1

declare dso_local %struct.group* @getgrnam(i32) #1

declare dso_local %struct.group* @getgrgid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
