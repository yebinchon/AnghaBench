; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_deleg.c_zfs_validate_who.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_deleg.c_zfs_validate_who.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_DELEG_FIELD_SEP_CHR = common dso_local global i8 0, align 1
@ZFS_DELEG_LOCAL = common dso_local global i8 0, align 1
@ZFS_DELEG_DESCENDENT = common dso_local global i8 0, align 1
@ZFS_DELEG_NA = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @zfs_validate_who to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_validate_who(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 2
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @ZFS_DELEG_FIELD_SEP_CHR, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %110

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %108 [
    i32 129, label %18
    i32 133, label %18
    i32 128, label %18
    i32 132, label %18
    i32 131, label %53
    i32 130, label %53
    i32 137, label %66
    i32 136, label %66
    i32 135, label %83
    i32 134, label %83
  ]

18:                                               ; preds = %13, %13, %13, %13
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @ZFS_DELEG_LOCAL, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @ZFS_DELEG_DESCENDENT, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %110

35:                                               ; preds = %26, %18
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %49, %35
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @isdigit(i8 signext %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 -1, i32* %2, align 4
  br label %110

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %4, align 8
  br label %38

52:                                               ; preds = %38
  br label %109

53:                                               ; preds = %13, %13
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* @ZFS_DELEG_NA, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 -1, i32* %2, align 4
  br label %110

62:                                               ; preds = %53
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = call i32 @permset_namecheck(i8* %64, i32* null, i32* null)
  store i32 %65, i32* %2, align 4
  br label %110

66:                                               ; preds = %13, %13
  %67 = load i8*, i8** %3, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @ZFS_DELEG_NA, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 -1, i32* %2, align 4
  br label %110

75:                                               ; preds = %66
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 -1, i32* %2, align 4
  br label %110

82:                                               ; preds = %75
  br label %109

83:                                               ; preds = %13, %13
  %84 = load i8*, i8** %3, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = load i8, i8* @ZFS_DELEG_LOCAL, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %83
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = load i8, i8* @ZFS_DELEG_DESCENDENT, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 -1, i32* %2, align 4
  br label %110

100:                                              ; preds = %91, %83
  %101 = load i8*, i8** %3, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 -1, i32* %2, align 4
  br label %110

107:                                              ; preds = %100
  br label %109

108:                                              ; preds = %13
  store i32 -1, i32* %2, align 4
  br label %110

109:                                              ; preds = %107, %82, %52
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %108, %106, %99, %81, %74, %62, %61, %47, %34, %12
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @permset_namecheck(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
