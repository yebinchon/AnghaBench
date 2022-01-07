; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_options.c_optionParse.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/log2lines/extr_options.c_optionParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optchars = common dso_local global i32 0, align 4
@opt_buffered = common dso_local global i32 0, align 4
@opt_console = common dso_local global i64 0, align 8
@opt_force = common dso_local global i32 0, align 4
@opt_help = common dso_local global i32 0, align 4
@opt_exit = common dso_local global i32 0, align 4
@opt_mark = common dso_local global i32 0, align 4
@opt_Mark = common dso_local global i32 0, align 4
@opt_raw = common dso_local global i32 0, align 4
@opt_Revision = common dso_local global i64* null, align 8
@LINESIZE = common dso_local global i32 0, align 4
@optarg = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@opt_Revision_check = common dso_local global i32 0, align 4
@opt_stats = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"%d+%d,%s\00", align 1
@opt_Source = common dso_local global i32 0, align 4
@opt_SrcPlus = common dso_local global i32 0, align 4
@opt_SourcesPath = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"%*d,%s\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Sources option parse result: %d+%d,\22%s\22\0A\00", align 1
@opt_undo = common dso_local global i32 0, align 4
@opt_redo = common dso_local global i32 0, align 4
@opt_twice = common dso_local global i32 0, align 4
@opt_Twice = common dso_local global i32 0, align 4
@opt_verbose = common dso_local global i32 0, align 4
@opt_7z = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [67 x i8] c"Note: use 's' command in console mode. Statistics option disabled\0A\00", align 1
@PATH_STR = common dso_local global i32 0, align 4
@opt_dir = common dso_local global i64* null, align 8
@DEF_OPT_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optionParse(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %129, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = load i32, i32* @optchars, align 4
  %13 = call i32 @getopt(i32 %10, i8** %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 -1, %13
  br i1 %14, label %15, label %132

15:                                               ; preds = %9
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %127 [
    i32 98, label %17
    i32 99, label %20
    i32 100, label %23
    i32 102, label %26
    i32 104, label %29
    i32 70, label %33
    i32 108, label %38
    i32 109, label %41
    i32 77, label %44
    i32 114, label %47
    i32 80, label %50
    i32 82, label %53
    i32 115, label %72
    i32 83, label %75
    i32 116, label %102
    i32 84, label %105
    i32 117, label %110
    i32 85, label %113
    i32 118, label %118
    i32 122, label %121
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @opt_buffered, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @opt_buffered, align 4
  br label %129

20:                                               ; preds = %15
  %21 = load i64, i64* @opt_console, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* @opt_console, align 8
  br label %129

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %129

26:                                               ; preds = %15
  %27 = load i32, i32* @opt_force, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @opt_force, align 4
  br label %129

29:                                               ; preds = %15
  %30 = load i32, i32* @opt_help, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @opt_help, align 4
  %32 = call i32 @usage(i32 1)
  store i32 -1, i32* %3, align 4
  br label %160

33:                                               ; preds = %15
  %34 = load i32, i32* @opt_exit, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @opt_exit, align 4
  %36 = load i32, i32* @opt_force, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @opt_force, align 4
  br label %129

38:                                               ; preds = %15
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %129

41:                                               ; preds = %15
  %42 = load i32, i32* @opt_mark, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @opt_mark, align 4
  br label %129

44:                                               ; preds = %15
  %45 = load i32, i32* @opt_Mark, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @opt_Mark, align 4
  br label %129

47:                                               ; preds = %15
  %48 = load i32, i32* @opt_raw, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @opt_raw, align 4
  br label %129

50:                                               ; preds = %15
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %129

53:                                               ; preds = %15
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = load i64*, i64** @opt_Revision, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @LINESIZE, align 4
  %60 = call i64* @malloc(i32 %59)
  store i64* %60, i64** @opt_Revision, align 8
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i64*, i64** @optarg, align 8
  %63 = load i64*, i64** @opt_Revision, align 8
  %64 = call i32 (i64*, i8*, i64*, ...) @sscanf(i64* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %63)
  %65 = load i64*, i64** @opt_Revision, align 8
  %66 = call i32 @strcmp(i64* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @opt_Revision_check, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @opt_Revision_check, align 4
  br label %71

71:                                               ; preds = %68, %61
  br label %129

72:                                               ; preds = %15
  %73 = load i64, i64* @opt_stats, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* @opt_stats, align 8
  br label %129

75:                                               ; preds = %15
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = load i64*, i64** @optarg, align 8
  %79 = load i64*, i64** @opt_SourcesPath, align 8
  %80 = call i32 (i64*, i8*, i64*, ...) @sscanf(i64* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64* bitcast (i32* @opt_Source to i64*), i32* @opt_SrcPlus, i64* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i64*, i64** @optarg, align 8
  %85 = load i64*, i64** @opt_SourcesPath, align 8
  %86 = call i32 (i64*, i8*, i64*, ...) @sscanf(i64* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64* %85)
  br label %87

87:                                               ; preds = %83, %75
  %88 = load i32, i32* @opt_Source, align 4
  %89 = load i32, i32* @opt_SrcPlus, align 4
  %90 = load i64*, i64** @opt_SourcesPath, align 8
  %91 = call i32 (i32, i8*, ...) @l2l_dbg(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %88, i32 %89, i64* %90)
  %92 = load i32, i32* @opt_Source, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load i32, i32* @opt_undo, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @opt_undo, align 4
  %97 = load i32, i32* @opt_redo, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @opt_redo, align 4
  %99 = load i32, i32* @opt_Revision_check, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @opt_Revision_check, align 4
  br label %101

101:                                              ; preds = %94, %87
  br label %129

102:                                              ; preds = %15
  %103 = load i32, i32* @opt_twice, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @opt_twice, align 4
  br label %129

105:                                              ; preds = %15
  %106 = load i32, i32* @opt_twice, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @opt_twice, align 4
  %108 = load i32, i32* @opt_Twice, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @opt_Twice, align 4
  br label %129

110:                                              ; preds = %15
  %111 = load i32, i32* @opt_undo, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* @opt_undo, align 4
  br label %129

113:                                              ; preds = %15
  %114 = load i32, i32* @opt_undo, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @opt_undo, align 4
  %116 = load i32, i32* @opt_redo, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @opt_redo, align 4
  br label %129

118:                                              ; preds = %15
  %119 = load i32, i32* @opt_verbose, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @opt_verbose, align 4
  br label %129

121:                                              ; preds = %15
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  %124 = load i64*, i64** @opt_7z, align 8
  %125 = load i64*, i64** @optarg, align 8
  %126 = call i32 @strcpy(i64* %124, i64* %125)
  br label %129

127:                                              ; preds = %15
  %128 = call i32 @usage(i32 0)
  store i32 -2, i32* %3, align 4
  br label %160

129:                                              ; preds = %121, %118, %113, %110, %105, %102, %101, %72, %71, %50, %47, %44, %41, %38, %33, %26, %23, %20, %17
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %9

132:                                              ; preds = %9
  %133 = load i64, i64* @opt_console, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = call i32 (i32, i8*, ...) @l2l_dbg(i32 2, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* @opt_stats, align 8
  br label %137

137:                                              ; preds = %135, %132
  %138 = load i64*, i64** @opt_SourcesPath, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i64*, i64** @opt_SourcesPath, align 8
  %144 = load i32, i32* @PATH_STR, align 4
  %145 = call i32 @strcat(i64* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %137
  %147 = load i64*, i64** @opt_dir, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %146
  %152 = load i64*, i64** @opt_dir, align 8
  %153 = load i64*, i64** @opt_SourcesPath, align 8
  %154 = call i32 @strcpy(i64* %152, i64* %153)
  %155 = load i64*, i64** @opt_dir, align 8
  %156 = load i32, i32* @DEF_OPT_DIR, align 4
  %157 = call i32 @strcat(i64* %155, i32 %156)
  br label %158

158:                                              ; preds = %151, %146
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %127, %29
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @getopt(i32, i8**, i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @sscanf(i64*, i8*, i64*, ...) #1

declare dso_local i32 @strcmp(i64*, i8*) #1

declare dso_local i32 @l2l_dbg(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i64*, i64*) #1

declare dso_local i32 @strcat(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
