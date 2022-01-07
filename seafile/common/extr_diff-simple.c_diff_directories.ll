; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_directories.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_diff-simple.c_diff_directories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i32, i32 }
%struct.TYPE_14__ = type { i32 (i32, i8*, %struct.TYPE_13__**, i32, i32*)*, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_15__* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to find dir %s:%s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_13__**, i8*, %struct.TYPE_14__*)* @diff_directories to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_directories(i32 %0, %struct.TYPE_13__** %1, i8* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca [3 x %struct.TYPE_13__*], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [3 x %struct.TYPE_13__*], align 16
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_13__** %1, %struct.TYPE_13__*** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  store i32 0, i32* %12, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %19 = getelementptr inbounds [3 x %struct.TYPE_13__*], [3 x %struct.TYPE_13__*]* %10, i64 0, i64 0
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(%struct.TYPE_13__** %19, i32 0, i32 %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %58, %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %30, i64 %32
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %37, i64 %39
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @S_ISDIR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %36
  %47 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %47, i64 %49
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x %struct.TYPE_13__*], [3 x %struct.TYPE_13__*]* %10, i64 0, i64 %53
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %46, %36, %29
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %25

61:                                               ; preds = %25
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %188

65:                                               ; preds = %61
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %17, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32 (i32, i8*, %struct.TYPE_13__**, i32, i32*)*, i32 (i32, i8*, %struct.TYPE_13__**, i32, i32*)** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds [3 x %struct.TYPE_13__*], [3 x %struct.TYPE_13__*]* %10, i64 0, i64 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %69(i32 %70, i8* %71, %struct.TYPE_13__** %72, i32 %75, i32* %17)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %5, align 4
  br label %188

81:                                               ; preds = %65
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %188

85:                                               ; preds = %81
  %86 = getelementptr inbounds [3 x %struct.TYPE_13__*], [3 x %struct.TYPE_13__*]* %15, i64 0, i64 0
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 8, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memset(%struct.TYPE_13__** %86, i32 0, i32 %90)
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %158, %85
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %161

96:                                               ; preds = %92
  %97 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %97, i64 %99
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = icmp ne %struct.TYPE_13__* %101, null
  br i1 %102, label %103, label %157

103:                                              ; preds = %96
  %104 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %104, i64 %106
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @S_ISDIR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %157

113:                                              ; preds = %103
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** @seaf, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %123, i64 %125
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.TYPE_13__* @seaf_fs_manager_get_seafdir(i32 %116, i32 %119, i32 %122, i32 %129)
  store %struct.TYPE_13__* %130, %struct.TYPE_13__** %16, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %132 = icmp ne %struct.TYPE_13__* %131, null
  br i1 %132, label %145, label %133

133:                                              ; preds = %113
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %137, i64 %139
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @seaf_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %136, i32 %143)
  store i32 -1, i32* %14, align 4
  br label %172

145:                                              ; preds = %113
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x %struct.TYPE_13__*], [3 x %struct.TYPE_13__*]* %15, i64 0, i64 %148
  store %struct.TYPE_13__* %146, %struct.TYPE_13__** %149, align 8
  %150 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %150, i64 %152
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  store i8* %156, i8** %13, align 8
  br label %157

157:                                              ; preds = %145, %103, %96
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %92

161:                                              ; preds = %92
  %162 = load i8*, i8** %8, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = call i8* @g_strconcat(i8* %162, i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %164, i8** %18, align 8
  %165 = load i32, i32* %6, align 4
  %166 = getelementptr inbounds [3 x %struct.TYPE_13__*], [3 x %struct.TYPE_13__*]* %15, i64 0, i64 0
  %167 = load i8*, i8** %18, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %169 = call i32 @diff_trees_recursive(i32 %165, %struct.TYPE_13__** %166, i8* %167, %struct.TYPE_14__* %168)
  store i32 %169, i32* %14, align 4
  %170 = load i8*, i8** %18, align 8
  %171 = call i32 @g_free(i8* %170)
  br label %172

172:                                              ; preds = %161, %133
  store i32 0, i32* %11, align 4
  br label %173

173:                                              ; preds = %183, %172
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %173
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [3 x %struct.TYPE_13__*], [3 x %struct.TYPE_13__*]* %15, i64 0, i64 %179
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = call i32 @seaf_dir_free(%struct.TYPE_13__* %181)
  br label %183

183:                                              ; preds = %177
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %11, align 4
  br label %173

186:                                              ; preds = %173
  %187 = load i32, i32* %14, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %186, %84, %79, %64
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @memset(%struct.TYPE_13__**, i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_13__* @seaf_fs_manager_get_seafdir(i32, i32, i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32, i32) #1

declare dso_local i8* @g_strconcat(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @diff_trees_recursive(i32, %struct.TYPE_13__**, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @seaf_dir_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
