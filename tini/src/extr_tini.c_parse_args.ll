; ModuleID = '/home/carl/AnghaBench/tini/src/extr_tini.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/tini/src/extr_tini.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@TINI_VERSION_STRING = common dso_local global i8* null, align 8
@OPT_STRING = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Not a valid option for -p: %s\00", align 1
@verbosity = common dso_local global i32 0, align 4
@warn_on_reap = common dso_local global i32 0, align 4
@kill_process_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Not a valid option for -e: %s\00", align 1
@stderr = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Failed to allocate memory for child args: '%s'\00", align 1
@errno = common dso_local global i32 0, align 4
@subreaper = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_args(i32 %0, i8** %1, [0 x i8*]** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca [0 x i8*]**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store [0 x i8*]** %2, [0 x i8*]*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = load i8**, i8*** %7, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i32*, i32** %9, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @stdout, align 4
  %27 = load i8*, i8** @TINI_VERSION_STRING, align 8
  %28 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 1, i32* %5, align 4
  br label %131

29:                                               ; preds = %18, %4
  br label %30

30:                                               ; preds = %79, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i8**, i8*** %7, align 8
  %33 = load i32, i32* @OPT_STRING, align 4
  %34 = call i32 @getopt(i32 %31, i8** %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %80

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %78 [
    i32 104, label %38
    i32 112, label %43
    i32 118, label %52
    i32 119, label %55
    i32 103, label %58
    i32 101, label %61
    i32 108, label %70
    i32 63, label %74
  ]

38:                                               ; preds = %36
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* @stdout, align 4
  %41 = call i32 @print_usage(i8* %39, i32 %40)
  %42 = load i32*, i32** %9, align 8
  store i32 0, i32* %42, align 4
  store i32 1, i32* %5, align 4
  br label %131

43:                                               ; preds = %36
  %44 = load i32, i32* @optarg, align 4
  %45 = call i32 @set_pdeathsig(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @optarg, align 4
  %49 = call i32 @PRINT_FATAL(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %9, align 8
  store i32 1, i32* %50, align 4
  store i32 1, i32* %5, align 4
  br label %131

51:                                               ; preds = %43
  br label %79

52:                                               ; preds = %36
  %53 = load i32, i32* @verbosity, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @verbosity, align 4
  br label %79

55:                                               ; preds = %36
  %56 = load i32, i32* @warn_on_reap, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @warn_on_reap, align 4
  br label %79

58:                                               ; preds = %36
  %59 = load i32, i32* @kill_process_group, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @kill_process_group, align 4
  br label %79

61:                                               ; preds = %36
  %62 = load i32, i32* @optarg, align 4
  %63 = call i32 @add_expect_status(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @optarg, align 4
  %67 = call i32 @PRINT_FATAL(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %9, align 8
  store i32 1, i32* %68, align 4
  store i32 1, i32* %5, align 4
  br label %131

69:                                               ; preds = %61
  br label %79

70:                                               ; preds = %36
  %71 = load i32, i32* @stdout, align 4
  %72 = call i32 @print_license(i32 %71)
  %73 = load i32*, i32** %9, align 8
  store i32 0, i32* %73, align 4
  store i32 1, i32* %5, align 4
  br label %131

74:                                               ; preds = %36
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 @print_usage(i8* %75, i32 %76)
  store i32 1, i32* %5, align 4
  br label %131

78:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %131

79:                                               ; preds = %69, %58, %55, %52, %51
  br label %30

80:                                               ; preds = %30
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @optind, align 4
  %83 = sub nsw i32 %81, %82
  %84 = add nsw i32 %83, 1
  %85 = call i8*** @calloc(i32 %84, i32 8)
  %86 = bitcast i8*** %85 to [0 x i8*]*
  %87 = load [0 x i8*]**, [0 x i8*]*** %8, align 8
  store [0 x i8*]* %86, [0 x i8*]** %87, align 8
  %88 = load [0 x i8*]**, [0 x i8*]*** %8, align 8
  %89 = load [0 x i8*]*, [0 x i8*]** %88, align 8
  %90 = icmp eq [0 x i8*]* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %80
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 @strerror(i32 %92)
  %94 = call i32 @PRINT_FATAL(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  store i32 1, i32* %5, align 4
  br label %131

95:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %115, %95
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @optind, align 4
  %100 = sub nsw i32 %98, %99
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %96
  %103 = load i8**, i8*** %7, align 8
  %104 = load i32, i32* @optind, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %103, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load [0 x i8*]**, [0 x i8*]*** %8, align 8
  %111 = load [0 x i8*]*, [0 x i8*]** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [0 x i8*], [0 x i8*]* %111, i64 0, i64 %113
  store i8* %109, i8** %114, align 1
  br label %115

115:                                              ; preds = %102
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %96

118:                                              ; preds = %96
  %119 = load [0 x i8*]**, [0 x i8*]*** %8, align 8
  %120 = load [0 x i8*]*, [0 x i8*]** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [0 x i8*], [0 x i8*]* %120, i64 0, i64 %122
  store i8* null, i8** %123, align 1
  %124 = load i32, i32* %12, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* @stderr, align 4
  %129 = call i32 @print_usage(i8* %127, i32 %128)
  store i32 1, i32* %5, align 4
  br label %131

130:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %126, %91, %78, %74, %70, %65, %47, %38, %24
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i32) #1

declare dso_local i32 @print_usage(i8*, i32) #1

declare dso_local i32 @set_pdeathsig(i32) #1

declare dso_local i32 @PRINT_FATAL(i8*, i32) #1

declare dso_local i32 @add_expect_status(i32) #1

declare dso_local i32 @print_license(i32) #1

declare dso_local i8*** @calloc(i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
