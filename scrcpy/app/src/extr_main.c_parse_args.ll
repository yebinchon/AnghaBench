; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_main.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_main.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }
%struct.args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i8*, i8*, i8*, i32, i32, i8*, i32 }

@parse_args.long_options = internal constant [19 x %struct.option] [%struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8 -127, i32* null, i32 84 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8 -128, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8 -127, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8 -127, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8 -128, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8 -127, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8 -127, i32* null, i32 78 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8 -128, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8 -128, i32* null, i32 132 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8 -128, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), i8 -128, i32* null, i32 70 }, %struct.option { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8 -127, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8 -128, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8 -127, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8 -127, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8 -127, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8 -128, i32* null, i32 130 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [14 x i8] c"always-on-top\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bit-rate\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"max-size\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"no-control\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"no-display\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"push-target\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"record-format\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"render-expired-frames\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"show-touches\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"turn-screen-off\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"window-title\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"b:c:fF:hm:nNp:r:s:StTv\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [56 x i8] c"-N/--no-display requires screen recording (-r/--record)\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"-f/--fullscreen-window is incompatible with -N/--no-display\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [35 x i8] c"Unexpected additional argument: %s\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"Record format specified without recording\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"No format specified for \22%s\22 (try with -F mkv)\00", align 1
@.str.24 = private unnamed_addr constant [60 x i8] c"Could not request to turn screen off if control is disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.args*, i32, i8**)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_args(%struct.args* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.args* %0, %struct.args** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  br label %10

10:                                               ; preds = %97, %3
  %11 = load i32, i32* %6, align 4
  %12 = load i8**, i8*** %7, align 8
  %13 = call i32 @getopt_long(i32 %11, i8** %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), %struct.option* getelementptr inbounds ([19 x %struct.option], [19 x %struct.option]* @parse_args.long_options, i64 0, i64 0), i32* null)
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %98

15:                                               ; preds = %10
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %96 [
    i32 98, label %17
    i32 99, label %25
    i32 102, label %29
    i32 70, label %32
    i32 104, label %40
    i32 109, label %43
    i32 110, label %51
    i32 78, label %54
    i32 112, label %57
    i32 114, label %65
    i32 115, label %69
    i32 83, label %73
    i32 116, label %76
    i32 84, label %79
    i32 118, label %82
    i32 131, label %85
    i32 130, label %88
    i32 132, label %92
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @optarg, align 8
  %19 = load %struct.args*, %struct.args** %5, align 8
  %20 = getelementptr inbounds %struct.args, %struct.args* %19, i32 0, i32 17
  %21 = call i32 @parse_bit_rate(i8* %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %186

24:                                               ; preds = %17
  br label %97

25:                                               ; preds = %15
  %26 = load i8*, i8** @optarg, align 8
  %27 = load %struct.args*, %struct.args** %5, align 8
  %28 = getelementptr inbounds %struct.args, %struct.args* %27, i32 0, i32 16
  store i8* %26, i8** %28, align 8
  br label %97

29:                                               ; preds = %15
  %30 = load %struct.args*, %struct.args** %5, align 8
  %31 = getelementptr inbounds %struct.args, %struct.args* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %97

32:                                               ; preds = %15
  %33 = load i8*, i8** @optarg, align 8
  %34 = load %struct.args*, %struct.args** %5, align 8
  %35 = getelementptr inbounds %struct.args, %struct.args* %34, i32 0, i32 10
  %36 = call i32 @parse_record_format(i8* %33, i64* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %186

39:                                               ; preds = %32
  br label %97

40:                                               ; preds = %15
  %41 = load %struct.args*, %struct.args** %5, align 8
  %42 = getelementptr inbounds %struct.args, %struct.args* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %97

43:                                               ; preds = %15
  %44 = load i8*, i8** @optarg, align 8
  %45 = load %struct.args*, %struct.args** %5, align 8
  %46 = getelementptr inbounds %struct.args, %struct.args* %45, i32 0, i32 15
  %47 = call i32 @parse_max_size(i8* %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %186

50:                                               ; preds = %43
  br label %97

51:                                               ; preds = %15
  %52 = load %struct.args*, %struct.args** %5, align 8
  %53 = getelementptr inbounds %struct.args, %struct.args* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  br label %97

54:                                               ; preds = %15
  %55 = load %struct.args*, %struct.args** %5, align 8
  %56 = getelementptr inbounds %struct.args, %struct.args* %55, i32 0, i32 3
  store i32 1, i32* %56, align 4
  br label %97

57:                                               ; preds = %15
  %58 = load i8*, i8** @optarg, align 8
  %59 = load %struct.args*, %struct.args** %5, align 8
  %60 = getelementptr inbounds %struct.args, %struct.args* %59, i32 0, i32 14
  %61 = call i32 @parse_port(i8* %58, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %186

64:                                               ; preds = %57
  br label %97

65:                                               ; preds = %15
  %66 = load i8*, i8** @optarg, align 8
  %67 = load %struct.args*, %struct.args** %5, align 8
  %68 = getelementptr inbounds %struct.args, %struct.args* %67, i32 0, i32 9
  store i8* %66, i8** %68, align 8
  br label %97

69:                                               ; preds = %15
  %70 = load i8*, i8** @optarg, align 8
  %71 = load %struct.args*, %struct.args** %5, align 8
  %72 = getelementptr inbounds %struct.args, %struct.args* %71, i32 0, i32 13
  store i8* %70, i8** %72, align 8
  br label %97

73:                                               ; preds = %15
  %74 = load %struct.args*, %struct.args** %5, align 8
  %75 = getelementptr inbounds %struct.args, %struct.args* %74, i32 0, i32 4
  store i32 1, i32* %75, align 8
  br label %97

76:                                               ; preds = %15
  %77 = load %struct.args*, %struct.args** %5, align 8
  %78 = getelementptr inbounds %struct.args, %struct.args* %77, i32 0, i32 5
  store i32 1, i32* %78, align 4
  br label %97

79:                                               ; preds = %15
  %80 = load %struct.args*, %struct.args** %5, align 8
  %81 = getelementptr inbounds %struct.args, %struct.args* %80, i32 0, i32 6
  store i32 1, i32* %81, align 8
  br label %97

82:                                               ; preds = %15
  %83 = load %struct.args*, %struct.args** %5, align 8
  %84 = getelementptr inbounds %struct.args, %struct.args* %83, i32 0, i32 7
  store i32 1, i32* %84, align 4
  br label %97

85:                                               ; preds = %15
  %86 = load %struct.args*, %struct.args** %5, align 8
  %87 = getelementptr inbounds %struct.args, %struct.args* %86, i32 0, i32 8
  store i32 1, i32* %87, align 8
  br label %97

88:                                               ; preds = %15
  %89 = load i8*, i8** @optarg, align 8
  %90 = load %struct.args*, %struct.args** %5, align 8
  %91 = getelementptr inbounds %struct.args, %struct.args* %90, i32 0, i32 12
  store i8* %89, i8** %91, align 8
  br label %97

92:                                               ; preds = %15
  %93 = load i8*, i8** @optarg, align 8
  %94 = load %struct.args*, %struct.args** %5, align 8
  %95 = getelementptr inbounds %struct.args, %struct.args* %94, i32 0, i32 11
  store i8* %93, i8** %95, align 8
  br label %97

96:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %186

97:                                               ; preds = %92, %88, %85, %82, %79, %76, %73, %69, %65, %64, %54, %51, %50, %40, %39, %29, %25, %24
  br label %10

98:                                               ; preds = %10
  %99 = load %struct.args*, %struct.args** %5, align 8
  %100 = getelementptr inbounds %struct.args, %struct.args* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.args*, %struct.args** %5, align 8
  %105 = getelementptr inbounds %struct.args, %struct.args* %104, i32 0, i32 9
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = call i32 (i8*, ...) @LOGE(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %186

110:                                              ; preds = %103, %98
  %111 = load %struct.args*, %struct.args** %5, align 8
  %112 = getelementptr inbounds %struct.args, %struct.args* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.args*, %struct.args** %5, align 8
  %117 = getelementptr inbounds %struct.args, %struct.args* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = call i32 (i8*, ...) @LOGE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %186

122:                                              ; preds = %115, %110
  %123 = load i32, i32* @optind, align 4
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i8**, i8*** %7, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (i8*, ...) @LOGE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i8* %132)
  store i32 0, i32* %4, align 4
  br label %186

134:                                              ; preds = %122
  %135 = load %struct.args*, %struct.args** %5, align 8
  %136 = getelementptr inbounds %struct.args, %struct.args* %135, i32 0, i32 10
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load %struct.args*, %struct.args** %5, align 8
  %141 = getelementptr inbounds %struct.args, %struct.args* %140, i32 0, i32 9
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %139
  %145 = call i32 (i8*, ...) @LOGE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %186

146:                                              ; preds = %139, %134
  %147 = load %struct.args*, %struct.args** %5, align 8
  %148 = getelementptr inbounds %struct.args, %struct.args* %147, i32 0, i32 9
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %173

151:                                              ; preds = %146
  %152 = load %struct.args*, %struct.args** %5, align 8
  %153 = getelementptr inbounds %struct.args, %struct.args* %152, i32 0, i32 10
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %173, label %156

156:                                              ; preds = %151
  %157 = load %struct.args*, %struct.args** %5, align 8
  %158 = getelementptr inbounds %struct.args, %struct.args* %157, i32 0, i32 9
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @guess_record_format(i8* %159)
  %161 = load %struct.args*, %struct.args** %5, align 8
  %162 = getelementptr inbounds %struct.args, %struct.args* %161, i32 0, i32 10
  store i64 %160, i64* %162, align 8
  %163 = load %struct.args*, %struct.args** %5, align 8
  %164 = getelementptr inbounds %struct.args, %struct.args* %163, i32 0, i32 10
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %156
  %168 = load %struct.args*, %struct.args** %5, align 8
  %169 = getelementptr inbounds %struct.args, %struct.args* %168, i32 0, i32 9
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i8*, ...) @LOGE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0), i8* %170)
  store i32 0, i32* %4, align 4
  br label %186

172:                                              ; preds = %156
  br label %173

173:                                              ; preds = %172, %151, %146
  %174 = load %struct.args*, %struct.args** %5, align 8
  %175 = getelementptr inbounds %struct.args, %struct.args* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %173
  %179 = load %struct.args*, %struct.args** %5, align 8
  %180 = getelementptr inbounds %struct.args, %struct.args* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = call i32 (i8*, ...) @LOGE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.24, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %186

185:                                              ; preds = %178, %173
  store i32 1, i32* %4, align 4
  br label %186

186:                                              ; preds = %185, %183, %167, %144, %127, %120, %108, %96, %63, %49, %38, %23
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @parse_bit_rate(i8*, i32*) #1

declare dso_local i32 @parse_record_format(i8*, i64*) #1

declare dso_local i32 @parse_max_size(i8*, i32*) #1

declare dso_local i32 @parse_port(i8*, i32*) #1

declare dso_local i32 @LOGE(i8*, ...) #1

declare dso_local i64 @guess_record_format(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
