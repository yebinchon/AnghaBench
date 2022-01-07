; ModuleID = '/home/carl/AnghaBench/tig/src/extr_tig.c_main.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_tig.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.view = type { i32 }

@ENCODING_UTF8 = common dso_local global i8* null, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@hangup_children = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to setup signal handler\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@sighup_handler = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CODESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to handle GIT_PREFIX\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to load repo info.\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to load user config.\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to load repo config.\00", align 1
@repo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@REQ_VIEW_PAGER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Not a git repository\00", align 1
@SIZEOF_STR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@ICONV_TRANSLIT = common dso_local global i32 0, align 4
@opt_iconv_out = common dso_local global i64 0, align 8
@ICONV_NONE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [46 x i8] c"Failed to initialize character set conversion\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Failed to load refs.\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"TIG_SCRIPT\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"script\00", align 1
@display = common dso_local global %struct.view** null, align 8
@current_view = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [31 x i8] c"Unknown key, press %s for help\00", align 1
@REQ_VIEW_HELP = common dso_local global i32 0, align 4
@REQ_NONE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@sigsegv_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.view*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [3 x i8*], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i8*, i8** @ENCODING_UTF8, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i32, i32* @STDIN_FILENO, align 4
  %15 = call i32 @isatty(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @parse_options(i32 %19, i8** %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = call i32 (...) @init_tty()
  %24 = load i32, i32* @hangup_children, align 4
  %25 = call i32 @atexit(i32 %24)
  %26 = load i32, i32* @SIGPIPE, align 4
  %27 = load i32, i32* @SIG_IGN, align 4
  %28 = call i64 @signal(i32 %26, i32 %27)
  %29 = load i64, i64* @SIG_ERR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %2
  %34 = load i32, i32* @SIGHUP, align 4
  %35 = load i32, i32* @sighup_handler, align 4
  %36 = call i64 @signal(i32 %34, i32 %35)
  %37 = load i64, i64* @SIG_ERR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %33
  %42 = load i32, i32* @LC_ALL, align 4
  %43 = call i64 @setlocale(i32 %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @CODESET, align 4
  %47 = call i8* @nl_langinfo(i32 %46)
  store i8* %47, i8** %6, align 8
  br label %48

48:                                               ; preds = %45, %41
  %49 = call i32 (...) @handle_git_prefix()
  %50 = call i32 @die_if_failed(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 (...) @load_repo_info()
  %52 = call i32 @die_if_failed(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 (...) @load_options()
  %54 = call i32 @die_if_failed(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %55 = call i32 (...) @load_git_config()
  %56 = call i32 @die_if_failed(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %57 = call i32 (...) @prompt_init()
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @repo, i32 0, i32 0), align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @REQ_VIEW_PAGER, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %62, %48
  %69 = load i8*, i8** %6, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %100

71:                                               ; preds = %68
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** @ENCODING_UTF8, align 8
  %74 = call i64 @strcmp(i8* %72, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = load i32, i32* @SIZEOF_STR, align 4
  %78 = zext i32 %77 to i64
  %79 = call i8* @llvm.stacksave()
  store i8* %79, i8** %10, align 8
  %80 = alloca i8, i64 %78, align 16
  store i64 %78, i64* %11, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* @ICONV_TRANSLIT, align 4
  %83 = call i64 @string_format(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i8*, i8** @ENCODING_UTF8, align 8
  %87 = call i64 @iconv_open(i8* %80, i8* %86)
  store i64 %87, i64* @opt_iconv_out, align 8
  br label %92

88:                                               ; preds = %76
  %89 = load i8*, i8** %6, align 8
  %90 = load i8*, i8** @ENCODING_UTF8, align 8
  %91 = call i64 @iconv_open(i8* %89, i8* %90)
  store i64 %91, i64* @opt_iconv_out, align 8
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i64, i64* @opt_iconv_out, align 8
  %94 = load i64, i64* @ICONV_NONE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = call i32 @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %92
  %99 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %99)
  br label %100

100:                                              ; preds = %98, %71, %68
  %101 = call i32 @load_refs(i32 0)
  %102 = call i32 @die_if_failed(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %103 = call i32 (...) @init_display()
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @open_pager_mode(i32 %107)
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %106, %100
  %110 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %113, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 1
  %115 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i8* %115, i8** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 1
  store i8* null, i8** %116, align 8
  %117 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 0
  %118 = call i32 @run_prompt_command(i32* null, i8** %117)
  br label %119

119:                                              ; preds = %112, %109
  br label %120

120:                                              ; preds = %148, %119
  %121 = load %struct.view**, %struct.view*** @display, align 8
  %122 = load i64, i64* @current_view, align 8
  %123 = getelementptr inbounds %struct.view*, %struct.view** %121, i64 %122
  %124 = load %struct.view*, %struct.view** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i64 @view_driver(%struct.view* %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %149

128:                                              ; preds = %120
  %129 = load %struct.view**, %struct.view*** @display, align 8
  %130 = load i64, i64* @current_view, align 8
  %131 = getelementptr inbounds %struct.view*, %struct.view** %129, i64 %130
  %132 = load %struct.view*, %struct.view** %131, align 8
  store %struct.view* %132, %struct.view** %9, align 8
  %133 = load %struct.view*, %struct.view** %9, align 8
  %134 = getelementptr inbounds %struct.view, %struct.view* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @read_key_combo(i32 %135)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  switch i32 %137, label %147 [
    i32 128, label %138
    i32 129, label %144
  ]

138:                                              ; preds = %128
  %139 = load %struct.view*, %struct.view** %9, align 8
  %140 = load i32, i32* @REQ_VIEW_HELP, align 4
  %141 = call i32 @get_view_key(%struct.view* %139, i32 %140)
  %142 = call i32 @report(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @REQ_NONE, align 4
  store i32 %143, i32* %8, align 4
  br label %148

144:                                              ; preds = %128
  %145 = load %struct.view*, %struct.view** %9, align 8
  %146 = call i32 @open_prompt(%struct.view* %145)
  store i32 %146, i32* %8, align 4
  br label %148

147:                                              ; preds = %128
  br label %148

148:                                              ; preds = %147, %144, %138
  br label %120

149:                                              ; preds = %120
  %150 = load i32, i32* @EXIT_SUCCESS, align 4
  %151 = call i32 @exit(i32 %150) #4
  unreachable
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @parse_options(i32, i8**, i32) #1

declare dso_local i32 @init_tty(...) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @setlocale(i32, i8*) #1

declare dso_local i8* @nl_langinfo(i32) #1

declare dso_local i32 @die_if_failed(i32, i8*) #1

declare dso_local i32 @handle_git_prefix(...) #1

declare dso_local i32 @load_repo_info(...) #1

declare dso_local i32 @load_options(...) #1

declare dso_local i32 @load_git_config(...) #1

declare dso_local i32 @prompt_init(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @string_format(i8*, i8*, i8*, i32) #1

declare dso_local i64 @iconv_open(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @load_refs(i32) #1

declare dso_local i32 @init_display(...) #1

declare dso_local i32 @open_pager_mode(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @run_prompt_command(i32*, i8**) #1

declare dso_local i64 @view_driver(%struct.view*, i32) #1

declare dso_local i32 @read_key_combo(i32) #1

declare dso_local i32 @report(i8*, i32) #1

declare dso_local i32 @get_view_key(%struct.view*, i32) #1

declare dso_local i32 @open_prompt(%struct.view*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
