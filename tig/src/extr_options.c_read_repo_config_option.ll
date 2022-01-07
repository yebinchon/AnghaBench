; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_read_repo_config_option.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_read_repo_config_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"i18n.commitencoding\00", align 1
@default_encoding = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"gui.encoding\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"core.editor\00", align 1
@opt_editor = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"core.worktree\00", align 1
@repo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"core.abbrev\00", align 1
@opt_id_width = common dso_local global i32 0, align 4
@SIZEOF_REV = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"diff.noprefix\00", align 1
@opt_diff_noprefix = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"status.showUntrackedFiles\00", align 1
@opt_status_show_untracked_files = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"tig.color.\00", align 1
@option_color_command = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"tig.bind.\00", align 1
@option_bind_command = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"tig.\00", align 1
@option_set_command = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"color.\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"branch.\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"diff.context\00", align 1
@opt_diff_context = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"format.pretty\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"format:\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%C(\00", align 1
@opt_log_options = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"--pretty=medium\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"log.follow\00", align 1
@opt_file_args = common dso_local global i32* null, align 8
@opt_log_follow = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i8*)* @read_repo_config_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_repo_config_option(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @set_encoding(i32* @default_encoding, i8* %15, i32 0)
  br label %190

17:                                               ; preds = %5
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @set_encoding(i32* @default_encoding, i8* %22, i32 1)
  br label %189

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @opt_editor, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @string_ncopy(i32 %29, i8* %30, i64 %31)
  br label %188

33:                                               ; preds = %24
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @repo, i32 0, i32 1), align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @string_ncopy(i32 %38, i8* %39, i64 %40)
  br label %187

42:                                               ; preds = %33
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* @SIZEOF_REV, align 8
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @parse_int(i32* @opt_id_width, i8* %47, i32 0, i64 %49)
  br label %186

51:                                               ; preds = %42
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @parse_bool(i32* @opt_diff_noprefix, i8* %56)
  br label %185

58:                                               ; preds = %51
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @parse_bool(i32* @opt_status_show_untracked_files, i8* %63)
  br label %184

65:                                               ; preds = %58
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @prefixcmp(i8* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 10
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* @option_color_command, align 4
  %74 = call i32 @set_repo_config_option(i8* %71, i8* %72, i32 %73)
  br label %183

75:                                               ; preds = %65
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @prefixcmp(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 9
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* @option_bind_command, align 4
  %84 = call i32 @set_repo_config_option(i8* %81, i8* %82, i32 %83)
  br label %182

85:                                               ; preds = %75
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @prefixcmp(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* @option_set_command, align 4
  %94 = call i32 @set_repo_config_option(i8* %91, i8* %92, i32 %93)
  br label %181

95:                                               ; preds = %85
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @prefixcmp(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @set_git_color_option(i8* %103, i8* %104)
  br label %180

106:                                              ; preds = %95
  %107 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @repo, i32 0, i32 0), align 8
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %106
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @prefixcmp(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %110
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 7
  %117 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @repo, i32 0, i32 0), align 8
  %118 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @repo, i32 0, i32 0), align 8
  %119 = call i32 @strlen(i64* %118)
  %120 = call i32 @strncmp(i8* %116, i64* %117, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %114
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 7
  %125 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @repo, i32 0, i32 0), align 8
  %126 = call i32 @strlen(i64* %125)
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i8*, i8** %8, align 8
  %130 = load i64, i64* %9, align 8
  %131 = call i32 @set_remote_branch(i8* %128, i8* %129, i64 %130)
  br label %179

132:                                              ; preds = %114, %110, %106
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %132
  %137 = call %struct.TYPE_4__* @find_option_info_by_value(i32* @opt_diff_context)
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @atoi(i8* %142)
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* @opt_diff_context, align 4
  br label %145

145:                                              ; preds = %141, %136
  br label %178

146:                                              ; preds = %132
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %146
  %151 = load i8*, i8** %8, align 8
  %152 = call i32 @prefixcmp(i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %150
  %155 = load i8*, i8** %8, align 8
  %156 = call i64 @strstr(i8* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = call i32 @argv_append(i32* @opt_log_options, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %154, %150
  br label %177

161:                                              ; preds = %146
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %161
  %166 = load i32*, i32** @opt_file_args, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %176

168:                                              ; preds = %165
  %169 = load i32*, i32** @opt_file_args, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %168
  %174 = load i8*, i8** %8, align 8
  %175 = call i32 @parse_bool(i32* @opt_log_follow, i8* %174)
  br label %176

176:                                              ; preds = %173, %168, %165, %161
  br label %177

177:                                              ; preds = %176, %160
  br label %178

178:                                              ; preds = %177, %145
  br label %179

179:                                              ; preds = %178, %122
  br label %180

180:                                              ; preds = %179, %99
  br label %181

181:                                              ; preds = %180, %89
  br label %182

182:                                              ; preds = %181, %79
  br label %183

183:                                              ; preds = %182, %69
  br label %184

184:                                              ; preds = %183, %62
  br label %185

185:                                              ; preds = %184, %55
  br label %186

186:                                              ; preds = %185, %46
  br label %187

187:                                              ; preds = %186, %37
  br label %188

188:                                              ; preds = %187, %28
  br label %189

189:                                              ; preds = %188, %21
  br label %190

190:                                              ; preds = %189, %14
  %191 = load i32, i32* @SUCCESS, align 4
  ret i32 %191
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_encoding(i32*, i8*, i32) #1

declare dso_local i32 @string_ncopy(i32, i8*, i64) #1

declare dso_local i32 @parse_int(i32*, i8*, i32, i64) #1

declare dso_local i32 @parse_bool(i32*, i8*) #1

declare dso_local i32 @prefixcmp(i8*, i8*) #1

declare dso_local i32 @set_repo_config_option(i8*, i8*, i32) #1

declare dso_local i32 @set_git_color_option(i8*, i8*) #1

declare dso_local i32 @STRING_SIZE(i8*) #1

declare dso_local i32 @strncmp(i8*, i64*, i32) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @set_remote_branch(i8*, i8*, i64) #1

declare dso_local %struct.TYPE_4__* @find_option_info_by_value(i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @argv_append(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
