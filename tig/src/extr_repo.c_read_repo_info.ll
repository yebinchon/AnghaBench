; ModuleID = '/home/carl/AnghaBench/tig/src/extr_repo.c_read_repo_info.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_repo.c_read_repo_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32, i32*, i32*, i32*, i32*, i32* }
%struct.repo_info_state = type { i64* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REPO_INFO_GIT_DIR = common dso_local global i8* null, align 8
@repo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REPO_INFO_WORK_TREE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@REPO_INFO_SHOW_CDUP = common dso_local global i8* null, align 8
@REPO_INFO_SHOW_PREFIX = common dso_local global i8* null, align 8
@REPO_INFO_RESOLVED_HEAD = common dso_local global i8* null, align 8
@REPO_INFO_SYMBOLIC_HEAD = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i8*)* @read_repo_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_repo_info(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.repo_info_state*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = bitcast i8* %15 to %struct.repo_info_state*
  store %struct.repo_info_state* %16, %struct.repo_info_state** %12, align 8
  %17 = load %struct.repo_info_state*, %struct.repo_info_state** %12, align 8
  %18 = getelementptr inbounds %struct.repo_info_state, %struct.repo_info_state* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load %struct.repo_info_state*, %struct.repo_info_state** %12, align 8
  %24 = getelementptr inbounds %struct.repo_info_state, %struct.repo_info_state* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %24, align 8
  %27 = load i64, i64* %25, align 8
  %28 = inttoptr i64 %27 to i8*
  br label %30

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %29, %22
  %31 = phi i8* [ %28, %22 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %29 ]
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = load i8*, i8** @REPO_INFO_GIT_DIR, align 8
  %34 = call i64 @strcmp(i8* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 7), align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @string_ncopy(i32* %37, i8* %38, i32 %40)
  br label %148

42:                                               ; preds = %30
  %43 = load i8*, i8** %13, align 8
  %44 = load i8*, i8** @REPO_INFO_WORK_TREE, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 8
  br label %147

53:                                               ; preds = %42
  %54 = load i8*, i8** %13, align 8
  %55 = load i8*, i8** @REPO_INFO_SHOW_CDUP, align 8
  %56 = call i64 @strcmp(i8* %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %53
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 5), align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @string_ncopy(i32* %59, i8* %60, i32 %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 6), align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @string_ncopy(i32* %67, i8* %68, i32 %70)
  br label %72

72:                                               ; preds = %66, %58
  br label %146

73:                                               ; preds = %53
  %74 = load i8*, i8** %13, align 8
  %75 = load i8*, i8** @REPO_INFO_SHOW_PREFIX, align 8
  %76 = call i64 @strcmp(i8* %74, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %102, label %78

78:                                               ; preds = %73
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 5), align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %8, align 8
  %84 = icmp eq i64 %83, 40
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8
  %87 = call i64 @iscommit(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i8*, i8** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @read_repo_info(i8* %90, i64 %91, i8* %92, i64 %93, i8* %94)
  store i32 %95, i32* %6, align 4
  br label %150

96:                                               ; preds = %85, %82, %78
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 4), align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @string_ncopy(i32* %97, i8* %98, i32 %100)
  br label %145

102:                                              ; preds = %73
  %103 = load i8*, i8** %13, align 8
  %104 = load i8*, i8** @REPO_INFO_RESOLVED_HEAD, align 8
  %105 = call i64 @strcmp(i8* %103, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 3), align 8
  %109 = load i8*, i8** %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @string_ncopy(i32* %108, i8* %109, i32 %111)
  br label %144

113:                                              ; preds = %102
  %114 = load i8*, i8** %13, align 8
  %115 = load i8*, i8** @REPO_INFO_SYMBOLIC_HEAD, align 8
  %116 = call i64 @strcmp(i8* %114, i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %143, label %118

118:                                              ; preds = %113
  %119 = load i8*, i8** %7, align 8
  %120 = call i32 @prefixcmp(i8* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %138, label %122

122:                                              ; preds = %118
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8* %126, i8** %14, align 8
  %127 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 1), align 8
  %128 = load i8*, i8** %14, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = call i32 @strlen(i8* %129)
  %131 = add nsw i32 %130, 1
  %132 = call i32 @string_ncopy(i32* %127, i8* %128, i32 %131)
  %133 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 3), align 8
  %134 = load i8*, i8** %7, align 8
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 2), align 8
  %136 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 1), align 8
  %137 = call i32 @add_ref(i32* %133, i8* %134, i32 %135, i32* %136)
  br label %138

138:                                              ; preds = %122, %118
  %139 = load %struct.repo_info_state*, %struct.repo_info_state** %12, align 8
  %140 = getelementptr inbounds %struct.repo_info_state, %struct.repo_info_state* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i32 1
  store i64* %142, i64** %140, align 8
  br label %143

143:                                              ; preds = %138, %113
  br label %144

144:                                              ; preds = %143, %107
  br label %145

145:                                              ; preds = %144, %96
  br label %146

146:                                              ; preds = %145, %72
  br label %147

147:                                              ; preds = %146, %47
  br label %148

148:                                              ; preds = %147, %36
  %149 = load i32, i32* @SUCCESS, align 4
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %148, %89
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @string_ncopy(i32*, i8*, i32) #1

declare dso_local i64 @iscommit(i8*) #1

declare dso_local i32 @prefixcmp(i8*, i8*) #1

declare dso_local i32 @STRING_SIZE(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @add_ref(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
