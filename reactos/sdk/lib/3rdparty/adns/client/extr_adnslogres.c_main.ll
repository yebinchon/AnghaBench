; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnslogres.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnslogres.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"adnslogres\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@DEFMAXPENDING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"c:C:dp\00", align 1
@optarg = external dso_local global i8*, align 8
@MAXMAXPENDING = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: unfeasible concurrency %d\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@config_text = common dso_local global i8* null, align 8
@OPT_DEBUG = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@stdin = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"couldn't open input\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"fclose input\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"fclose output\00", align 1
@OPT_POLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %55

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %14
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32*, i32** @stdout, align 8
  %28 = call i32 @printhelp(i32* %27)
  br label %42

29:                                               ; preds = %20
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = call i32 @VERSION_MESSAGE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32*, i32** @stdout, align 8
  %38 = call i32 @fputs(i32 %36, i32* %37)
  br label %41

39:                                               ; preds = %29
  %40 = call i32 (...) @usage()
  br label %41

41:                                               ; preds = %39, %35
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32*, i32** @stdout, align 8
  %44 = call i64 @ferror(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** @stdout, align 8
  %48 = call i64 @fclose(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %42
  %51 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %52 = call i32 @exit(i32 1) #3
  unreachable

53:                                               ; preds = %46
  %54 = call i32 @exit(i32 0) #3
  unreachable

55:                                               ; preds = %14, %2
  %56 = load i32, i32* @DEFMAXPENDING, align 4
  store i32 %56, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %88, %55
  %58 = load i32, i32* %4, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = call i32 @getopt(i32 %58, i8** %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  switch i32 %63, label %86 [
    i32 99, label %64
    i32 67, label %80
    i32 100, label %82
  ]

64:                                               ; preds = %62
  %65 = load i8*, i8** @optarg, align 8
  %66 = call i32 @atoi(i8* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @MAXMAXPENDING, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69, %64
  %74 = load i32, i32* @stderr, align 4
  %75 = load i8*, i8** @progname, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @fprintf(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %75, i32 %76)
  %78 = call i32 @exit(i32 1) #3
  unreachable

79:                                               ; preds = %69
  br label %88

80:                                               ; preds = %62
  %81 = load i8*, i8** @optarg, align 8
  store i8* %81, i8** @config_text, align 8
  br label %88

82:                                               ; preds = %62
  %83 = load i32, i32* @OPT_DEBUG, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %88

86:                                               ; preds = %62
  %87 = call i32 (...) @usage()
  br label %88

88:                                               ; preds = %86, %82, %80, %79
  br label %57

89:                                               ; preds = %57
  %90 = load i64, i64* @optind, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %4, align 4
  %95 = load i64, i64* @optind, align 8
  %96 = load i8**, i8*** %5, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 %95
  store i8** %97, i8*** %5, align 8
  store i32* null, i32** %9, align 8
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32*, i32** @stdin, align 8
  store i32* %101, i32** %9, align 8
  br label %112

102:                                              ; preds = %89
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i8**, i8*** %5, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = call i32* @fopen(i8* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %108, i32** %9, align 8
  br label %111

109:                                              ; preds = %102
  %110 = call i32 (...) @usage()
  br label %111

111:                                              ; preds = %109, %105
  br label %112

112:                                              ; preds = %111, %100
  %113 = load i32*, i32** %9, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = call i32 @aargh(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  %118 = load i32*, i32** %9, align 8
  %119 = load i32*, i32** @stdout, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @proclog(i32* %118, i32* %119, i32 %120, i32 %121)
  %123 = load i32*, i32** %9, align 8
  %124 = call i64 @fclose(i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = call i32 @aargh(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %117
  %129 = load i32*, i32** @stdout, align 8
  %130 = call i64 @fclose(i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = call i32 @aargh(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %128
  ret i32 0
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printhelp(i32*) #1

declare dso_local i32 @fputs(i32, i32*) #1

declare dso_local i32 @VERSION_MESSAGE(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @aargh(i8*) #1

declare dso_local i32 @proclog(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
