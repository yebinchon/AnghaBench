; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_get_options.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc.c_nc_get_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.instance = type { i32, i32, i64, i8*, i8*, i32, i8*, i8* }

@opterr = common dso_local global i64 0, align 8
@short_options = common dso_local global i32 0, align 4
@long_options = common dso_local global i32 0, align 4
@show_version = common dso_local global i32 0, align 4
@show_help = common dso_local global i32 0, align 4
@test_conf = common dso_local global i32 0, align 4
@daemonize = common dso_local global i32 0, align 4
@describe_stats = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"nutcracker: option -v requires a number\00", align 1
@NC_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"nutcracker: option -s requires a number\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"nutcracker: option -s value %d is not a valid port\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"nutcracker: option -i requires a number\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"nutcracker: option -m requires a non-zero number\00", align 1
@NC_MBUF_MIN_SIZE = common dso_local global i32 0, align 4
@NC_MBUF_MAX_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"nutcracker: mbuf chunk size must be between %zu and %zu bytes\00", align 1
@optopt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"nutcracker: option -%c requires a file name\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"nutcracker: option -%c requires a number\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"nutcracker: option -%c requires a string\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"nutcracker: invalid option -- '%c'\00", align 1
@NC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.instance*)* @nc_get_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nc_get_options(i32 %0, i8** %1, %struct.instance* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.instance*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store %struct.instance* %2, %struct.instance** %7, align 8
  store i64 0, i64* @opterr, align 8
  br label %10

10:                                               ; preds = %140, %3
  %11 = load i32, i32* %5, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = load i32, i32* @short_options, align 4
  %14 = load i32, i32* @long_options, align 4
  %15 = call i32 @getopt_long(i32 %11, i8** %12, i32 %13, i32 %14, i32* null)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %141

19:                                               ; preds = %10
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %136 [
    i32 104, label %21
    i32 86, label %22
    i32 116, label %23
    i32 100, label %24
    i32 68, label %25
    i32 118, label %26
    i32 111, label %40
    i32 99, label %44
    i32 115, label %48
    i32 105, label %70
    i32 97, label %84
    i32 112, label %88
    i32 109, label %92
    i32 63, label %120
  ]

21:                                               ; preds = %19
  store i32 1, i32* @show_version, align 4
  store i32 1, i32* @show_help, align 4
  br label %140

22:                                               ; preds = %19
  store i32 1, i32* @show_version, align 4
  br label %140

23:                                               ; preds = %19
  store i32 1, i32* @test_conf, align 4
  br label %140

24:                                               ; preds = %19
  store i32 1, i32* @daemonize, align 4
  br label %140

25:                                               ; preds = %19
  store i32 1, i32* @describe_stats, align 4
  store i32 1, i32* @show_version, align 4
  br label %140

26:                                               ; preds = %19
  %27 = load i8*, i8** @optarg, align 8
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = call i32 @nc_atoi(i8* %27, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = call i32 (i8*, ...) @log_stderr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @NC_ERROR, align 4
  store i32 %35, i32* %4, align 4
  br label %143

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.instance*, %struct.instance** %7, align 8
  %39 = getelementptr inbounds %struct.instance, %struct.instance* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %140

40:                                               ; preds = %19
  %41 = load i8*, i8** @optarg, align 8
  %42 = load %struct.instance*, %struct.instance** %7, align 8
  %43 = getelementptr inbounds %struct.instance, %struct.instance* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  br label %140

44:                                               ; preds = %19
  %45 = load i8*, i8** @optarg, align 8
  %46 = load %struct.instance*, %struct.instance** %7, align 8
  %47 = getelementptr inbounds %struct.instance, %struct.instance* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  br label %140

48:                                               ; preds = %19
  %49 = load i8*, i8** @optarg, align 8
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = call i32 @nc_atoi(i8* %49, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = call i32 (i8*, ...) @log_stderr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @NC_ERROR, align 4
  store i32 %57, i32* %4, align 4
  br label %143

58:                                               ; preds = %48
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @nc_valid_port(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i8*, ...) @log_stderr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @NC_ERROR, align 4
  store i32 %65, i32* %4, align 4
  br label %143

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.instance*, %struct.instance** %7, align 8
  %69 = getelementptr inbounds %struct.instance, %struct.instance* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  br label %140

70:                                               ; preds = %19
  %71 = load i8*, i8** @optarg, align 8
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = call i32 @nc_atoi(i8* %71, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = call i32 (i8*, ...) @log_stderr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* @NC_ERROR, align 4
  store i32 %79, i32* %4, align 4
  br label %143

80:                                               ; preds = %70
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.instance*, %struct.instance** %7, align 8
  %83 = getelementptr inbounds %struct.instance, %struct.instance* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %140

84:                                               ; preds = %19
  %85 = load i8*, i8** @optarg, align 8
  %86 = load %struct.instance*, %struct.instance** %7, align 8
  %87 = getelementptr inbounds %struct.instance, %struct.instance* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  br label %140

88:                                               ; preds = %19
  %89 = load i8*, i8** @optarg, align 8
  %90 = load %struct.instance*, %struct.instance** %7, align 8
  %91 = getelementptr inbounds %struct.instance, %struct.instance* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  br label %140

92:                                               ; preds = %19
  %93 = load i8*, i8** @optarg, align 8
  %94 = load i8*, i8** @optarg, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = call i32 @nc_atoi(i8* %93, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = call i32 (i8*, ...) @log_stderr(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* @NC_ERROR, align 4
  store i32 %101, i32* %4, align 4
  br label %143

102:                                              ; preds = %92
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @NC_MBUF_MIN_SIZE, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @NC_MBUF_MAX_SIZE, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106, %102
  %111 = load i32, i32* @NC_MBUF_MIN_SIZE, align 4
  %112 = load i32, i32* @NC_MBUF_MAX_SIZE, align 4
  %113 = call i32 (i8*, ...) @log_stderr(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32, i32* @NC_ERROR, align 4
  store i32 %114, i32* %4, align 4
  br label %143

115:                                              ; preds = %106
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.instance*, %struct.instance** %7, align 8
  %119 = getelementptr inbounds %struct.instance, %struct.instance* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  br label %140

120:                                              ; preds = %19
  %121 = load i32, i32* @optopt, align 4
  switch i32 %121, label %131 [
    i32 111, label %122
    i32 99, label %122
    i32 112, label %122
    i32 109, label %125
    i32 118, label %125
    i32 115, label %125
    i32 105, label %125
    i32 97, label %128
  ]

122:                                              ; preds = %120, %120, %120
  %123 = load i32, i32* @optopt, align 4
  %124 = call i32 (i8*, ...) @log_stderr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  br label %134

125:                                              ; preds = %120, %120, %120, %120
  %126 = load i32, i32* @optopt, align 4
  %127 = call i32 (i8*, ...) @log_stderr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  br label %134

128:                                              ; preds = %120
  %129 = load i32, i32* @optopt, align 4
  %130 = call i32 (i8*, ...) @log_stderr(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  br label %134

131:                                              ; preds = %120
  %132 = load i32, i32* @optopt, align 4
  %133 = call i32 (i8*, ...) @log_stderr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %131, %128, %125, %122
  %135 = load i32, i32* @NC_ERROR, align 4
  store i32 %135, i32* %4, align 4
  br label %143

136:                                              ; preds = %19
  %137 = load i32, i32* @optopt, align 4
  %138 = call i32 (i8*, ...) @log_stderr(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @NC_ERROR, align 4
  store i32 %139, i32* %4, align 4
  br label %143

140:                                              ; preds = %115, %88, %84, %80, %66, %44, %40, %36, %25, %24, %23, %22, %21
  br label %10

141:                                              ; preds = %18
  %142 = load i32, i32* @NC_OK, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %136, %134, %110, %99, %77, %62, %55, %33
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @getopt_long(i32, i8**, i32, i32, i32*) #1

declare dso_local i32 @nc_atoi(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @log_stderr(i8*, ...) #1

declare dso_local i32 @nc_valid_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
