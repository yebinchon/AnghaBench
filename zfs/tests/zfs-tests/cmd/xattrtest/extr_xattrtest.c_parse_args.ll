; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/xattrtest/extr_xattrtest.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shortopts = common dso_local global i32 0, align 4
@longopts = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@verify = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@nth = common dso_local global i32 0, align 4
@files = common dso_local global i32 0, align 4
@xattrs = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@XATTR_SIZE_MAX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Error: the -s value may not be greater than %d\0A\00", align 1
@path = common dso_local global i8* null, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@synccaches = common dso_local global i32 0, align 4
@dropcaches = common dso_local global i32 0, align 4
@script = common dso_local global i8* null, align 8
@size_is_random = common dso_local global i32 0, align 4
@value_is_random = common dso_local global i32 0, align 4
@keep_files = common dso_local global i32 0, align 4
@phase = common dso_local global i32 0, align 4
@PHASE_ALL = common dso_local global i32 0, align 4
@PHASE_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Error: the -o value must be greater than %d and less than %d\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"verbose:          %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"verify:           %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"nth:              %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"files:            %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"xattrs:           %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"size:             %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"path:             %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"synccaches:       %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"dropcaches:       %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"script:           %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"seed:             %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"random size:      %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"random value:     %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"keep:             %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"only:             %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i64 @time(i32* null)
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %98, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = load i32, i32* @shortopts, align 4
  %14 = load i32, i32* @longopts, align 4
  %15 = call i32 @getopt_long(i32 %11, i8** %12, i32 %13, i32 %14, i32* null)
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %99

17:                                               ; preds = %10
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %97 [
    i32 104, label %19
    i32 118, label %23
    i32 121, label %26
    i32 110, label %27
    i32 102, label %31
    i32 120, label %35
    i32 115, label %39
    i32 112, label %51
    i32 99, label %61
    i32 100, label %62
    i32 116, label %63
    i32 101, label %73
    i32 114, label %77
    i32 82, label %78
    i32 107, label %79
    i32 111, label %80
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @usage(i32 %20, i8** %21)
  store i32 %22, i32* %3, align 4
  br label %159

23:                                               ; preds = %17
  %24 = load i32, i32* @verbose, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @verbose, align 4
  br label %98

26:                                               ; preds = %17
  store i32 1, i32* @verify, align 4
  br label %98

27:                                               ; preds = %17
  %28 = load i32, i32* @optarg, align 4
  %29 = call i8* @strtol(i32 %28, i32* null, i32 0)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* @nth, align 4
  br label %98

31:                                               ; preds = %17
  %32 = load i32, i32* @optarg, align 4
  %33 = call i8* @strtol(i32 %32, i32* null, i32 0)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* @files, align 4
  br label %98

35:                                               ; preds = %17
  %36 = load i32, i32* @optarg, align 4
  %37 = call i8* @strtol(i32 %36, i32* null, i32 0)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* @xattrs, align 4
  br label %98

39:                                               ; preds = %17
  %40 = load i32, i32* @optarg, align 4
  %41 = call i8* @strtol(i32 %40, i32* null, i32 0)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* @size, align 4
  %43 = load i32, i32* @size, align 4
  %44 = load i32, i32* @XATTR_SIZE_MAX, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @stderr, align 4
  %48 = load i32, i32* @XATTR_SIZE_MAX, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %39
  br label %98

51:                                               ; preds = %17
  %52 = load i8*, i8** @path, align 8
  %53 = load i32, i32* @optarg, align 4
  %54 = load i32, i32* @PATH_MAX, align 4
  %55 = call i32 @strncpy(i8* %52, i32 %53, i32 %54)
  %56 = load i8*, i8** @path, align 8
  %57 = load i32, i32* @PATH_MAX, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  store i8 0, i8* %60, align 1
  br label %98

61:                                               ; preds = %17
  store i32 1, i32* @synccaches, align 4
  br label %98

62:                                               ; preds = %17
  store i32 1, i32* @dropcaches, align 4
  br label %98

63:                                               ; preds = %17
  %64 = load i8*, i8** @script, align 8
  %65 = load i32, i32* @optarg, align 4
  %66 = load i32, i32* @PATH_MAX, align 4
  %67 = call i32 @strncpy(i8* %64, i32 %65, i32 %66)
  %68 = load i8*, i8** @script, align 8
  %69 = load i32, i32* @PATH_MAX, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 0, i8* %72, align 1
  br label %98

73:                                               ; preds = %17
  %74 = load i32, i32* @optarg, align 4
  %75 = call i8* @strtol(i32 %74, i32* null, i32 0)
  %76 = ptrtoint i8* %75 to i64
  store i64 %76, i64* %6, align 8
  br label %98

77:                                               ; preds = %17
  store i32 1, i32* @size_is_random, align 4
  br label %98

78:                                               ; preds = %17
  store i32 1, i32* @value_is_random, align 4
  br label %98

79:                                               ; preds = %17
  store i32 1, i32* @keep_files, align 4
  br label %98

80:                                               ; preds = %17
  %81 = load i32, i32* @optarg, align 4
  %82 = call i8* @strtol(i32 %81, i32* null, i32 0)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* @phase, align 4
  %84 = load i32, i32* @phase, align 4
  %85 = load i32, i32* @PHASE_ALL, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @phase, align 4
  %89 = load i32, i32* @PHASE_INVAL, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87, %80
  %92 = load i32, i32* @stderr, align 4
  %93 = load i32, i32* @PHASE_ALL, align 4
  %94 = load i32, i32* @PHASE_INVAL, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  store i32 1, i32* %8, align 4
  br label %96

96:                                               ; preds = %91, %87
  br label %98

97:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %96, %79, %78, %77, %73, %63, %62, %61, %51, %50, %35, %31, %27, %26, %23
  br label %10

99:                                               ; preds = %10
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %159

104:                                              ; preds = %99
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @srandom(i64 %105)
  %107 = load i32, i32* @verbose, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %157

109:                                              ; preds = %104
  %110 = load i32, i32* @stdout, align 4
  %111 = load i32, i32* @verbose, align 4
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @stdout, align 4
  %114 = load i32, i32* @verify, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @stdout, align 4
  %117 = load i32, i32* @nth, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @stdout, align 4
  %120 = load i32, i32* @files, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @stdout, align 4
  %123 = load i32, i32* @xattrs, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @stdout, align 4
  %126 = load i32, i32* @size, align 4
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @stdout, align 4
  %129 = load i8*, i8** @path, align 8
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %129)
  %131 = load i32, i32* @stdout, align 4
  %132 = load i32, i32* @synccaches, align 4
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @stdout, align 4
  %135 = load i32, i32* @dropcaches, align 4
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @stdout, align 4
  %138 = load i8*, i8** @script, align 8
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %138)
  %140 = load i32, i32* @stdout, align 4
  %141 = load i64, i64* %6, align 8
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 %141)
  %143 = load i32, i32* @stdout, align 4
  %144 = load i32, i32* @size_is_random, align 4
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @stdout, align 4
  %147 = load i32, i32* @value_is_random, align 4
  %148 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @stdout, align 4
  %150 = load i32, i32* @keep_files, align 4
  %151 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @stdout, align 4
  %153 = load i32, i32* @phase, align 4
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @stdout, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %157

157:                                              ; preds = %109, %104
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %102, %19
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @getopt_long(i32, i8**, i32, i32, i32*) #1

declare dso_local i32 @usage(i32, i8**) #1

declare dso_local i8* @strtol(i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @srandom(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
