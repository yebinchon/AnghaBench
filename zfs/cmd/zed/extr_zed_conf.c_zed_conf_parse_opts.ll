; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_parse_opts.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/extr_zed_conf.c_zed_conf_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zed_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c":hLVc:d:p:P:s:vfFMZ\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to parse options: Internal error\00", align 1
@opterr = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@optopt = common dso_local global i8 0, align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: %s '-%c'\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Invalid option\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zed_conf_parse_opts(%struct.zed_conf* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.zed_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.zed_conf* %0, %struct.zed_conf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %9 = load %struct.zed_conf*, %struct.zed_conf** %4, align 8
  %10 = icmp ne %struct.zed_conf* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i8**, i8*** %6, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i8**, i8*** %6, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %11, %3
  %20 = call i32 @zed_log_die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  store i64 0, i64* @opterr, align 8
  br label %22

22:                                               ; preds = %102, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i8**, i8*** %6, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %103

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %80 [
    i32 104, label %29
    i32 76, label %35
    i32 86, label %37
    i32 99, label %39
    i32 100, label %44
    i32 112, label %49
    i32 80, label %54
    i32 115, label %59
    i32 118, label %64
    i32 102, label %67
    i32 70, label %70
    i32 77, label %73
    i32 90, label %76
    i32 63, label %79
  ]

29:                                               ; preds = %27
  %30 = load i8**, i8*** %6, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @EXIT_SUCCESS, align 4
  %34 = call i32 @_zed_conf_display_help(i8* %32, i32 %33)
  br label %102

35:                                               ; preds = %27
  %36 = call i32 (...) @_zed_conf_display_license()
  br label %102

37:                                               ; preds = %27
  %38 = call i32 (...) @_zed_conf_display_version()
  br label %102

39:                                               ; preds = %27
  %40 = load %struct.zed_conf*, %struct.zed_conf** %4, align 8
  %41 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %40, i32 0, i32 9
  %42 = load i32, i32* @optarg, align 4
  %43 = call i32 @_zed_conf_parse_path(i32* %41, i32 %42)
  br label %102

44:                                               ; preds = %27
  %45 = load %struct.zed_conf*, %struct.zed_conf** %4, align 8
  %46 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %45, i32 0, i32 8
  %47 = load i32, i32* @optarg, align 4
  %48 = call i32 @_zed_conf_parse_path(i32* %46, i32 %47)
  br label %102

49:                                               ; preds = %27
  %50 = load %struct.zed_conf*, %struct.zed_conf** %4, align 8
  %51 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %50, i32 0, i32 7
  %52 = load i32, i32* @optarg, align 4
  %53 = call i32 @_zed_conf_parse_path(i32* %51, i32 %52)
  br label %102

54:                                               ; preds = %27
  %55 = load %struct.zed_conf*, %struct.zed_conf** %4, align 8
  %56 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %55, i32 0, i32 6
  %57 = load i32, i32* @optarg, align 4
  %58 = call i32 @_zed_conf_parse_path(i32* %56, i32 %57)
  br label %102

59:                                               ; preds = %27
  %60 = load %struct.zed_conf*, %struct.zed_conf** %4, align 8
  %61 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %60, i32 0, i32 5
  %62 = load i32, i32* @optarg, align 4
  %63 = call i32 @_zed_conf_parse_path(i32* %61, i32 %62)
  br label %102

64:                                               ; preds = %27
  %65 = load %struct.zed_conf*, %struct.zed_conf** %4, align 8
  %66 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  br label %102

67:                                               ; preds = %27
  %68 = load %struct.zed_conf*, %struct.zed_conf** %4, align 8
  %69 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %102

70:                                               ; preds = %27
  %71 = load %struct.zed_conf*, %struct.zed_conf** %4, align 8
  %72 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  br label %102

73:                                               ; preds = %27
  %74 = load %struct.zed_conf*, %struct.zed_conf** %4, align 8
  %75 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %74, i32 0, i32 3
  store i32 1, i32* %75, align 4
  br label %102

76:                                               ; preds = %27
  %77 = load %struct.zed_conf*, %struct.zed_conf** %4, align 8
  %78 = getelementptr inbounds %struct.zed_conf, %struct.zed_conf* %77, i32 0, i32 4
  store i32 1, i32* %78, align 4
  br label %102

79:                                               ; preds = %27
  br label %80

80:                                               ; preds = %27, %79
  %81 = load i8, i8* @optopt, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 63
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i8**, i8*** %6, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* @EXIT_SUCCESS, align 4
  %89 = call i32 @_zed_conf_display_help(i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %84, %80
  %91 = load i32, i32* @stderr, align 4
  %92 = load i8**, i8*** %6, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8, i8* @optopt, align 1
  %96 = call i32 @fprintf(i32 %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8 signext %95)
  %97 = load i8**, i8*** %6, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* @EXIT_FAILURE, align 4
  %101 = call i32 @_zed_conf_display_help(i8* %99, i32 %100)
  br label %102

102:                                              ; preds = %90, %76, %73, %70, %67, %64, %59, %54, %49, %44, %39, %37, %35, %29
  br label %22

103:                                              ; preds = %22
  ret void
}

declare dso_local i32 @zed_log_die(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @_zed_conf_display_help(i8*, i32) #1

declare dso_local i32 @_zed_conf_display_license(...) #1

declare dso_local i32 @_zed_conf_display_version(...) #1

declare dso_local i32 @_zed_conf_parse_path(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
