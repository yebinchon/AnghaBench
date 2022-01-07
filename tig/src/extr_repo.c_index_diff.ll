; ModuleID = '/home/carl/AnghaBench/tig/src/extr_repo.c_index_diff.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_repo.c_index_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.index_diff = type { i64, i64, i64 }
%struct.io = type { i32 }
%struct.buffer = type { i32, i8* }

@.str = private unnamed_addr constant [21 x i8] c"--untracked-files=no\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"--untracked-files=all\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"--untracked-files=normal\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"--porcelain\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@IO_RD = common dso_local global i32 0, align 4
@repo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @index_diff(%struct.index_diff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_diff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [6 x i8*], align 16
  %10 = alloca %struct.io, align 4
  %11 = alloca %struct.buffer, align 8
  %12 = alloca i32, align 4
  store %struct.index_diff* %0, %struct.index_diff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0)
  br label %21

21:                                               ; preds = %16, %15
  %22 = phi i8* [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %15 ], [ %20, %16 ]
  store i8* %22, i8** %8, align 8
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %26, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* null, i8** %29, align 8
  store i32 1, i32* %12, align 4
  %30 = load %struct.index_diff*, %struct.index_diff** %5, align 8
  %31 = call i32 @memset(%struct.index_diff* %30, i32 0, i32 24)
  %32 = load i32, i32* @IO_RD, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 4
  %34 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 0
  %35 = call i32 @io_run(%struct.io* %10, i32 %32, i32 %33, i32* null, i8** %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %139

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %131, %38
  %40 = call i64 @io_get(%struct.io* %10, %struct.buffer* %11, i32 0, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 3
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %45, %42 ]
  br i1 %48, label %49, label %132

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 63
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.index_diff*, %struct.index_diff** %5, align 8
  %58 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %81

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 32
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 85
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.index_diff*, %struct.index_diff** %5, align 8
  %77 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %75, %68, %61
  br label %81

81:                                               ; preds = %80, %56
  %82 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 32
  br i1 %87, label %88, label %100

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 63
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.index_diff*, %struct.index_diff** %5, align 8
  %97 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %95, %88, %81
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %122, label %103

103:                                              ; preds = %100
  %104 = load %struct.index_diff*, %struct.index_diff** %5, align 8
  %105 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load %struct.index_diff*, %struct.index_diff** %5, align 8
  %110 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.index_diff*, %struct.index_diff** %5, align 8
  %118 = getelementptr inbounds %struct.index_diff, %struct.index_diff* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116, %113
  br label %132

122:                                              ; preds = %116, %108, %103, %100
  %123 = getelementptr inbounds %struct.buffer, %struct.buffer* %11, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 82
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = call i64 @io_get(%struct.io* %10, %struct.buffer* %11, i32 0, i32 1)
  br label %131

131:                                              ; preds = %129, %122
  br label %39

132:                                              ; preds = %121, %47
  %133 = call i64 @io_error(%struct.io* %10)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 0, i32* %12, align 4
  br label %136

136:                                              ; preds = %135, %132
  %137 = call i32 @io_done(%struct.io* %10)
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %136, %37
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @memset(%struct.index_diff*, i32, i32) #1

declare dso_local i32 @io_run(%struct.io*, i32, i32, i32*, i8**) #1

declare dso_local i64 @io_get(%struct.io*, %struct.buffer*, i32, i32) #1

declare dso_local i64 @io_error(%struct.io*) #1

declare dso_local i32 @io_done(%struct.io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
