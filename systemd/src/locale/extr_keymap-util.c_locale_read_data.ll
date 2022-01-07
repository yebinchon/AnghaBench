; ModuleID = '/home/carl/AnghaBench/systemd/src/locale/extr_keymap-util.c_locale_read_data.c'
source_filename = "/home/carl/AnghaBench/systemd/src/locale/extr_keymap-util.c_locale_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"/etc/locale.conf\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@USEC_INFINITY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@VARIABLE_LANG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"LANGUAGE\00", align 1
@VARIABLE_LANGUAGE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@VARIABLE_LC_CTYPE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"LC_NUMERIC\00", align 1
@VARIABLE_LC_NUMERIC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"LC_TIME\00", align 1
@VARIABLE_LC_TIME = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"LC_COLLATE\00", align 1
@VARIABLE_LC_COLLATE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"LC_MONETARY\00", align 1
@VARIABLE_LC_MONETARY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"LC_MESSAGES\00", align 1
@VARIABLE_LC_MESSAGES = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"LC_PAPER\00", align 1
@VARIABLE_LC_PAPER = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"LC_NAME\00", align 1
@VARIABLE_LC_NAME = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"LC_ADDRESS\00", align 1
@VARIABLE_LC_ADDRESS = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"LC_TELEPHONE\00", align 1
@VARIABLE_LC_TELEPHONE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"LC_MEASUREMENT\00", align 1
@VARIABLE_LC_MEASUREMENT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [18 x i8] c"LC_IDENTIFICATION\00", align 1
@VARIABLE_LC_IDENTIFICATION = common dso_local global i64 0, align 8
@_VARIABLE_LC_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @locale_read_data(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %179

20:                                               ; preds = %13
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @sd_bus_message_unref(i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = call i32* @sd_bus_message_ref(i32* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  br label %29

29:                                               ; preds = %20, %2
  %30 = call i32 @stat(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.stat* %6)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* @errno, align 4
  %35 = load i32, i32* @ENOENT, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @errno, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %179

40:                                               ; preds = %33, %29
  %41 = load i32, i32* %7, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %140

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %45 = call i64 @timespec_load(i32* %44)
  store i64 %45, i64* %8, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @USEC_INFINITY, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %179

58:                                               ; preds = %51, %43
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = call i32 @context_free_locale(%struct.TYPE_4__* %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @VARIABLE_LANG, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @VARIABLE_LANGUAGE, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @VARIABLE_LC_CTYPE, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @VARIABLE_LC_NUMERIC, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @VARIABLE_LC_TIME, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @VARIABLE_LC_COLLATE, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @VARIABLE_LC_MONETARY, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @VARIABLE_LC_MESSAGES, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @VARIABLE_LC_PAPER, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @VARIABLE_LC_NAME, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @VARIABLE_LC_ADDRESS, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @VARIABLE_LC_TELEPHONE, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @VARIABLE_LC_MEASUREMENT, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @VARIABLE_LC_IDENTIFICATION, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = call i32 @parse_env_file(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32* %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32* %128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %58
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %3, align 4
  br label %179

139:                                              ; preds = %58
  br label %174

140:                                              ; preds = %40
  %141 = load i64, i64* @USEC_INFINITY, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %145 = call i32 @context_free_locale(%struct.TYPE_4__* %144)
  store i32 0, i32* %9, align 4
  br label %146

146:                                              ; preds = %170, %140
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @_VARIABLE_LC_MAX, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %173

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = call i8* @locale_variable_to_string(i32 %151)
  store i8* %152, i8** %10, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @assert(i8* %153)
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i8*, i8** %10, align 8
  %162 = call i32 @getenv(i8* %161)
  %163 = call i32 @empty_to_null(i32 %162)
  %164 = call i32 @free_and_strdup(i32* %160, i32 %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %150
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %3, align 4
  br label %179

169:                                              ; preds = %150
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %146

173:                                              ; preds = %146
  br label %174

174:                                              ; preds = %173, %139
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @locale_simplify(i32* %177)
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %174, %167, %137, %57, %37, %19
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @sd_bus_message_unref(i32*) #1

declare dso_local i32* @sd_bus_message_ref(i32*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @timespec_load(i32*) #1

declare dso_local i32 @context_free_locale(%struct.TYPE_4__*) #1

declare dso_local i32 @parse_env_file(i32*, i8*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i8* @locale_variable_to_string(i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @free_and_strdup(i32*, i32) #1

declare dso_local i32 @empty_to_null(i32) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i32 @locale_simplify(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
