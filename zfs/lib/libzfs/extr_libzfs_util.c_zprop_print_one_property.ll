; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_zprop_print_one_property.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_zprop_print_one_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i8**, i64, i32, i64 }

@ZFS_GET_NCOLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"temporary\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"inherited from %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"received\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"unhandled zprop_source_t\00", align 1
@GET_COL_NONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%-*s  \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zprop_print_one_property(i8* %0, %struct.TYPE_4__* %1, i8* %2, i8* %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [128 x i8], align 16
  store i8* %0, i8** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i8* null, i8** %16, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %18, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  br label %129

25:                                               ; preds = %7
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @zprop_print_headers(%struct.TYPE_4__* %31, i32 %34)
  br label %36

36:                                               ; preds = %30, %25
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %124, %36
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @ZFS_GET_NCOLS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %127

41:                                               ; preds = %37
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %78 [
    i32 138, label %49
    i32 137, label %51
    i32 134, label %53
    i32 135, label %55
    i32 136, label %70
  ]

49:                                               ; preds = %41
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %16, align 8
  br label %79

51:                                               ; preds = %41
  %52 = load i8*, i8** %10, align 8
  store i8* %52, i8** %16, align 8
  br label %79

53:                                               ; preds = %41
  %54 = load i8*, i8** %11, align 8
  store i8* %54, i8** %16, align 8
  br label %79

55:                                               ; preds = %41
  %56 = load i32, i32* %12, align 4
  switch i32 %56, label %67 [
    i32 130, label %57
    i32 133, label %58
    i32 131, label %59
    i32 128, label %60
    i32 132, label %61
    i32 129, label %66
  ]

57:                                               ; preds = %55
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %69

58:                                               ; preds = %55
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %69

59:                                               ; preds = %55
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %69

60:                                               ; preds = %55
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  br label %69

61:                                               ; preds = %55
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @snprintf(i8* %62, i32 128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  store i8* %65, i8** %16, align 8
  br label %69

66:                                               ; preds = %55
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %69

67:                                               ; preds = %55
  store i8* null, i8** %16, align 8
  %68 = call i32 @assert(i32 0)
  br label %69

69:                                               ; preds = %67, %66, %61, %60, %59, %58, %57
  br label %79

70:                                               ; preds = %41
  %71 = load i8*, i8** %14, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %76

74:                                               ; preds = %70
  %75 = load i8*, i8** %14, align 8
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %73 ], [ %75, %74 ]
  store i8* %77, i8** %16, align 8
  br label %79

78:                                               ; preds = %41
  br label %124

79:                                               ; preds = %76, %69, %53, %51, %49
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @ZFS_GET_NCOLS, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %95, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @GET_COL_NONE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %84, %79
  %96 = load i8*, i8** %16, align 8
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %96)
  br label %123

98:                                               ; preds = %84
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** %16, align 8
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %104)
  br label %122

106:                                              ; preds = %98
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i8**, i8*** %108, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %109, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %119, i8* %120)
  br label %122

122:                                              ; preds = %106, %103
  br label %123

123:                                              ; preds = %122, %95
  br label %124

124:                                              ; preds = %123, %78
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  br label %37

127:                                              ; preds = %37
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %24
  ret void
}

declare dso_local i32 @zprop_print_headers(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
