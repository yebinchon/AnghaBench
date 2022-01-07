; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_branch_tracking_info.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_branch_tracking_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.io = type { i32 }
%struct.buffer = type { i64, i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s...%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"rev-list\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"--left-right\00", align 1
@IO_RD = common dso_local global i32 0, align 4
@repo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Your branch is up-to-date with '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [92 x i8] c"Your branch and '%s' have diverged, and have %d and %d different commits each, respectively\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Your branch is ahead of '%s' by %d commit%s.\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Your branch is behind '%s' by %d commit%s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i8*)* @status_branch_tracking_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_branch_tracking_info(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [5 x i8*], align 16
  %11 = alloca %struct.io, align 4
  %12 = alloca %struct.buffer, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 (i8*, i64, i32*, i8*, i8*, ...) @string_nformat(i8* %16, i64 %17, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %132

23:                                               ; preds = %4
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* null, i8** %29, align 8
  %30 = load i32, i32* @IO_RD, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 4
  %32 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i64 0, i64 0
  %33 = call i32 @io_run(%struct.io* %11, i32 %30, i32 %31, i32* null, i8** %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %132

36:                                               ; preds = %23
  %37 = bitcast %struct.buffer* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 24, i1 false)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %71, %36
  %39 = call i64 @io_get(%struct.io* %11, %struct.buffer* %12, i8 signext 10, i32 1)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %72

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 60
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %70

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 62
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %66, %59
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70, %45, %41
  br label %38

72:                                               ; preds = %38
  %73 = call i32 @io_error(%struct.io* %11)
  store i32 %73, i32* %15, align 4
  %74 = call i32 @io_done(%struct.io* %11)
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %132

78:                                               ; preds = %72
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i32, i32* %14, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i8*, i8** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 (i8*, i64, i32*, i8*, i8*, ...) @string_nformat(i8* %85, i64 %86, i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  store i32 %88, i32* %5, align 4
  br label %132

89:                                               ; preds = %81, %78
  %90 = load i32, i32* %13, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32, i32* %14, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 (i8*, i64, i32*, i8*, i8*, ...) @string_nformat(i8* %96, i64 %97, i32* null, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.5, i64 0, i64 0), i8* %98, i32 %99, i32 %100)
  store i32 %101, i32* %5, align 4
  br label %132

102:                                              ; preds = %92, %89
  %103 = load i32, i32* %13, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load i8*, i8** %6, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp sgt i32 %110, 1
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %114 = call i32 (i8*, i64, i32*, i8*, i8*, ...) @string_nformat(i8* %106, i64 %107, i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %108, i32 %109, i8* %113)
  store i32 %114, i32* %5, align 4
  br label %132

115:                                              ; preds = %102
  %116 = load i32, i32* %14, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load i8*, i8** %6, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp sgt i32 %123, 1
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %127 = call i32 (i8*, i64, i32*, i8*, i8*, ...) @string_nformat(i8* %119, i64 %120, i32* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %121, i32 %122, i8* %126)
  store i32 %127, i32* %5, align 4
  br label %132

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %118, %105, %95, %84, %77, %35, %22
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @string_nformat(i8*, i64, i32*, i8*, i8*, ...) #1

declare dso_local i32 @io_run(%struct.io*, i32, i32, i32*, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @io_get(%struct.io*, %struct.buffer*, i8 signext, i32) #1

declare dso_local i32 @io_error(%struct.io*) #1

declare dso_local i32 @io_done(%struct.io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
