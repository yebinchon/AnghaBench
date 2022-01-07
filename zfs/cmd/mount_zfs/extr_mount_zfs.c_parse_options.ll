; ModuleID = '/home/carl/AnghaBench/zfs/cmd/mount_zfs/extr_mount_zfs.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/mount_zfs/extr_mount_zfs.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@MS_REMOUNT = common dso_local global i64 0, align 8
@ZS_ZFSUTIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MNT_LINE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*, i32, i8*, i8*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, i64* %1, i64* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i8* @strdup(i8* %21)
  store i8* %22, i8** %20, align 8
  %23 = load i8*, i8** %20, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %7, align 4
  br label %123

27:                                               ; preds = %6
  %28 = load i64*, i64** %9, align 8
  store i64 0, i64* %28, align 8
  store i8* null, i8** %19, align 8
  %29 = load i8*, i8** %20, align 8
  store i8* %29, i8** %18, align 8
  br label %30

30:                                               ; preds = %115, %27
  %31 = load i8*, i8** %18, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br i1 %38, label %39, label %118

39:                                               ; preds = %37
  %40 = load i8*, i8** %19, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i8*, i8** %18, align 8
  store i8* %43, i8** %19, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i8*, i8** %18, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 34
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %115

58:                                               ; preds = %54
  %59 = load i8*, i8** %18, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %16, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load i8*, i8** %18, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 44
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i8*, i8** %18, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %114

74:                                               ; preds = %69, %64
  %75 = load i8*, i8** %18, align 8
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %19, align 8
  %77 = load i64*, i64** %9, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @parse_option(i8* %76, i64* %77, i64* %78, i32 %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load i8*, i8** %12, align 8
  %85 = load i8*, i8** %19, align 8
  %86 = call i32 @strcpy(i8* %84, i8* %85)
  br label %119

87:                                               ; preds = %74
  %88 = load i64*, i64** %9, align 8
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MS_REMOUNT, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %113, label %93

93:                                               ; preds = %87
  %94 = load i64*, i64** %10, align 8
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ZS_ZFSUTIL, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %17, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* @MNT_LINE_MAX, align 4
  %105 = call i32 @strlcat(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i8*, i8** %13, align 8
  %108 = load i8*, i8** %19, align 8
  %109 = load i32, i32* @MNT_LINE_MAX, align 4
  %110 = call i32 @strlcat(i8* %107, i8* %108, i32 %109)
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %17, align 4
  br label %113

113:                                              ; preds = %106, %93, %87
  store i8* null, i8** %19, align 8
  br label %114

114:                                              ; preds = %113, %69
  br label %115

115:                                              ; preds = %114, %57
  %116 = load i8*, i8** %18, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %18, align 8
  br label %30

118:                                              ; preds = %37
  br label %119

119:                                              ; preds = %118, %83
  %120 = load i8*, i8** %20, align 8
  %121 = call i32 @free(i8* %120)
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %119, %25
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @parse_option(i8*, i64*, i64*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
