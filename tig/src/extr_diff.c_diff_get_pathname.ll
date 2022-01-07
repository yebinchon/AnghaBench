; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_get_pathname.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_get_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.line = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"diff --cc \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"diff --combined \00", align 1
@__const.diff_get_pathname.prefixes = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)], align 16
@LINE_DIFF_HEADER = common dso_local global i32 0, align 4
@LINE_DIFF_ADD_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"+++ \00", align 1
@opt_diff_noprefix = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"b/\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"w/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @diff_get_pathname(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i8*], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.line* %1, %struct.line** %5, align 8
  %11 = bitcast [2 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([2 x i8*]* @__const.diff_get_pathname.prefixes to i8*), i64 16, i1 false)
  %12 = load %struct.view*, %struct.view** %4, align 8
  %13 = load %struct.line*, %struct.line** %5, align 8
  %14 = load i32, i32* @LINE_DIFF_HEADER, align 4
  %15 = call %struct.line* @find_prev_line_by_type(%struct.view* %12, %struct.line* %13, i32 %14)
  store %struct.line* %15, %struct.line** %6, align 8
  %16 = load %struct.line*, %struct.line** %6, align 8
  %17 = icmp ne %struct.line* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %87

19:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %45, %19
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i8** %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load %struct.line*, %struct.line** %6, align 8
  %27 = call i8* @box_text(%struct.line* %26)
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @strstr(i8* %27, i8* %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %25
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %36, i64 %42
  store i8* %43, i8** %3, align 8
  br label %87

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %20

48:                                               ; preds = %20
  %49 = load %struct.view*, %struct.view** %4, align 8
  %50 = load %struct.line*, %struct.line** %6, align 8
  %51 = load i32, i32* @LINE_DIFF_ADD_FILE, align 4
  %52 = call %struct.line* @find_next_line_by_type(%struct.view* %49, %struct.line* %50, i32 %51)
  store %struct.line* %52, %struct.line** %6, align 8
  %53 = load %struct.line*, %struct.line** %6, align 8
  %54 = icmp ne %struct.line* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i8* null, i8** %3, align 8
  br label %87

56:                                               ; preds = %48
  %57 = load %struct.line*, %struct.line** %6, align 8
  %58 = call i8* @box_text(%struct.line* %57)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @prefixcmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i8*, i8** %9, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i64, i64* @opt_diff_noprefix, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i8*, i8** %9, align 8
  store i8* %71, i8** %3, align 8
  br label %87

72:                                               ; preds = %67
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @prefixcmp(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @prefixcmp(i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76, %72
  %81 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i8*, i8** %9, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %9, align 8
  br label %85

85:                                               ; preds = %80, %76
  %86 = load i8*, i8** %9, align 8
  store i8* %86, i8** %3, align 8
  br label %87

87:                                               ; preds = %85, %70, %55, %35, %18
  %88 = load i8*, i8** %3, align 8
  ret i8* %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.line* @find_prev_line_by_type(%struct.view*, %struct.line*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i8* @box_text(%struct.line*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.line* @find_next_line_by_type(%struct.view*, %struct.line*, i32) #2

declare dso_local i32 @prefixcmp(i8*, i8*) #2

declare dso_local i32 @STRING_SIZE(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
