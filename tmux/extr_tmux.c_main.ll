; ModuleID = '/home/carl/AnghaBench/tmux/extr_tmux.c_main.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tmux.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_table_entry = type { i32, i32* }

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"en_US.UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"C.UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"invalid LC_ALL, LC_CTYPE or LANG\00", align 1
@CODESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"need UTF-8 locale (LC_CTYPE) but have %s\00", align 1
@LC_TIME = common dso_local global i32 0, align 4
@CLIENT_LOGIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"2c:Cdf:lL:qS:uUVv\00", align 1
@CLIENT_256COLOURS = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@shell_command = common dso_local global i8* null, align 8
@CLIENT_CONTROL = common dso_local global i32 0, align 4
@CLIENT_CONTROLCONTROL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@VERSION = common dso_local global i8* null, align 8
@CLIENT_UTF8 = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@ptm_fd = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"getptmfd\00", align 1
@.str.10 = private unnamed_addr constant [78 x i8] c"stdio rpath wpath cpath flock fattr unix getpw sendfd recvfd proc exec tty ps\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"pledge\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"TMUX\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"LANG\00", align 1
@global_environ = common dso_local global i32 0, align 4
@environ = common dso_local global i8** null, align 8
@.str.16 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@global_options = common dso_local global i32 0, align 4
@global_s_options = common dso_local global i32 0, align 4
@global_w_options = common dso_local global i32 0, align 4
@options_table = common dso_local global %struct.options_table_entry* null, align 8
@OPTIONS_TABLE_SERVER = common dso_local global i32 0, align 4
@OPTIONS_TABLE_SESSION = common dso_local global i32 0, align 4
@OPTIONS_TABLE_WINDOW = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [14 x i8] c"default-shell\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"VISUAL\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@MODEKEY_VI = common dso_local global i32 0, align 4
@MODEKEY_EMACS = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"status-keys\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"mode-keys\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c",\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@socket_path = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.options_table_entry*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @LC_CTYPE, align 4
  %18 = call i32* @setlocale(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %2
  %21 = load i32, i32* @LC_CTYPE, align 4
  %22 = call i32* @setlocale(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i32, i32* @LC_CTYPE, align 4
  %26 = call i32* @setlocale(i32 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* @CODESET, align 4
  %32 = call i8* @nl_langinfo(i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @strcasecmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @strcasecmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %36, %30
  br label %44

44:                                               ; preds = %43, %20, %2
  %45 = load i32, i32* @LC_TIME, align 4
  %46 = call i32* @setlocale(i32 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %47 = call i32 (...) @tzset()
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 45
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @CLIENT_LOGIN, align 4
  store i32 %54, i32* %14, align 4
  br label %56

55:                                               ; preds = %44
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %55, %53
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  br label %57

57:                                               ; preds = %115, %56
  %58 = load i32, i32* %4, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = call i32 @getopt(i32 %58, i8** %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store i32 %60, i32* %13, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %116

62:                                               ; preds = %57
  %63 = load i32, i32* %13, align 4
  switch i32 %63, label %113 [
    i32 50, label %64
    i32 99, label %68
    i32 67, label %70
    i32 86, label %84
    i32 102, label %89
    i32 108, label %92
    i32 76, label %96
    i32 113, label %101
    i32 83, label %102
    i32 117, label %107
    i32 118, label %111
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* @CLIENT_256COLOURS, align 4
  %66 = load i32, i32* %14, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %14, align 4
  br label %115

68:                                               ; preds = %62
  %69 = load i8*, i8** @optarg, align 8
  store i8* %69, i8** @shell_command, align 8
  br label %115

70:                                               ; preds = %62
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @CLIENT_CONTROL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @CLIENT_CONTROLCONTROL, align 4
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %14, align 4
  br label %83

79:                                               ; preds = %70
  %80 = load i32, i32* @CLIENT_CONTROL, align 4
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %79, %75
  br label %115

84:                                               ; preds = %62
  %85 = call i8* (...) @getprogname()
  %86 = load i8*, i8** @VERSION, align 8
  %87 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %85, i8* %86)
  %88 = call i32 @exit(i32 0) #3
  unreachable

89:                                               ; preds = %62
  %90 = load i8*, i8** @optarg, align 8
  %91 = call i32 @set_cfg_file(i8* %90)
  br label %115

92:                                               ; preds = %62
  %93 = load i32, i32* @CLIENT_LOGIN, align 4
  %94 = load i32, i32* %14, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %14, align 4
  br label %115

96:                                               ; preds = %62
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i8*, i8** @optarg, align 8
  %100 = call i8* @xstrdup(i8* %99)
  store i8* %100, i8** %7, align 8
  br label %115

101:                                              ; preds = %62
  br label %115

102:                                              ; preds = %62
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i8*, i8** @optarg, align 8
  %106 = call i8* @xstrdup(i8* %105)
  store i8* %106, i8** %6, align 8
  br label %115

107:                                              ; preds = %62
  %108 = load i32, i32* @CLIENT_UTF8, align 4
  %109 = load i32, i32* %14, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %14, align 4
  br label %115

111:                                              ; preds = %62
  %112 = call i32 (...) @log_add_level()
  br label %115

113:                                              ; preds = %62
  %114 = call i32 (...) @usage()
  br label %115

115:                                              ; preds = %113, %111, %107, %102, %101, %96, %92, %89, %83, %68, %64
  br label %57

116:                                              ; preds = %57
  %117 = load i64, i64* @optind, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %4, align 4
  %122 = load i64, i64* @optind, align 8
  %123 = load i8**, i8*** %5, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 %122
  store i8** %124, i8*** %5, align 8
  %125 = load i8*, i8** @shell_command, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %116
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i32 (...) @usage()
  br label %132

132:                                              ; preds = %130, %127, %116
  %133 = call i32 (...) @getptmfd()
  store i32 %133, i32* @ptm_fd, align 4
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %132
  %138 = call i64 @pledge(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.10, i64 0, i64 0), i32* null)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %137
  %143 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* @CLIENT_UTF8, align 4
  %147 = load i32, i32* %14, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %14, align 4
  br label %192

149:                                              ; preds = %142
  %150 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  store i8* %150, i8** %10, align 8
  %151 = load i8*, i8** %10, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %158, label %153

153:                                              ; preds = %149
  %154 = load i8*, i8** %10, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153, %149
  %159 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  store i8* %159, i8** %10, align 8
  br label %160

160:                                              ; preds = %158, %153
  %161 = load i8*, i8** %10, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = load i8*, i8** %10, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163, %160
  %169 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  store i8* %169, i8** %10, align 8
  br label %170

170:                                              ; preds = %168, %163
  %171 = load i8*, i8** %10, align 8
  %172 = icmp eq i8* %171, null
  br i1 %172, label %178, label %173

173:                                              ; preds = %170
  %174 = load i8*, i8** %10, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173, %170
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %179

179:                                              ; preds = %178, %173
  %180 = load i8*, i8** %10, align 8
  %181 = call i32* @strcasestr(i8* %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %182 = icmp ne i32* %181, null
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = load i8*, i8** %10, align 8
  %185 = call i32* @strcasestr(i8* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %183, %179
  %188 = load i32, i32* @CLIENT_UTF8, align 4
  %189 = load i32, i32* %14, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %14, align 4
  br label %191

191:                                              ; preds = %187, %183
  br label %192

192:                                              ; preds = %191, %145
  %193 = call i32 (...) @environ_create()
  store i32 %193, i32* @global_environ, align 4
  %194 = load i8**, i8*** @environ, align 8
  store i8** %194, i8*** %9, align 8
  br label %195

195:                                              ; preds = %204, %192
  %196 = load i8**, i8*** %9, align 8
  %197 = load i8*, i8** %196, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = load i32, i32* @global_environ, align 4
  %201 = load i8**, i8*** %9, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @environ_put(i32 %200, i8* %202)
  br label %204

204:                                              ; preds = %199
  %205 = load i8**, i8*** %9, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i32 1
  store i8** %206, i8*** %9, align 8
  br label %195

207:                                              ; preds = %195
  %208 = call i8* (...) @find_cwd()
  store i8* %208, i8** %12, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %214

210:                                              ; preds = %207
  %211 = load i32, i32* @global_environ, align 4
  %212 = load i8*, i8** %12, align 8
  %213 = call i32 @environ_set(i32 %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %212)
  br label %214

214:                                              ; preds = %210, %207
  %215 = call i32 @options_create(i32* null)
  store i32 %215, i32* @global_options, align 4
  %216 = call i32 @options_create(i32* null)
  store i32 %216, i32* @global_s_options, align 4
  %217 = call i32 @options_create(i32* null)
  store i32 %217, i32* @global_w_options, align 4
  %218 = load %struct.options_table_entry*, %struct.options_table_entry** @options_table, align 8
  store %struct.options_table_entry* %218, %struct.options_table_entry** %16, align 8
  br label %219

219:                                              ; preds = %258, %214
  %220 = load %struct.options_table_entry*, %struct.options_table_entry** %16, align 8
  %221 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %261

224:                                              ; preds = %219
  %225 = load %struct.options_table_entry*, %struct.options_table_entry** %16, align 8
  %226 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @OPTIONS_TABLE_SERVER, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %224
  %232 = load i32, i32* @global_options, align 4
  %233 = load %struct.options_table_entry*, %struct.options_table_entry** %16, align 8
  %234 = call i32 @options_default(i32 %232, %struct.options_table_entry* %233)
  br label %235

235:                                              ; preds = %231, %224
  %236 = load %struct.options_table_entry*, %struct.options_table_entry** %16, align 8
  %237 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @OPTIONS_TABLE_SESSION, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %235
  %243 = load i32, i32* @global_s_options, align 4
  %244 = load %struct.options_table_entry*, %struct.options_table_entry** %16, align 8
  %245 = call i32 @options_default(i32 %243, %struct.options_table_entry* %244)
  br label %246

246:                                              ; preds = %242, %235
  %247 = load %struct.options_table_entry*, %struct.options_table_entry** %16, align 8
  %248 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @OPTIONS_TABLE_WINDOW, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %246
  %254 = load i32, i32* @global_w_options, align 4
  %255 = load %struct.options_table_entry*, %struct.options_table_entry** %16, align 8
  %256 = call i32 @options_default(i32 %254, %struct.options_table_entry* %255)
  br label %257

257:                                              ; preds = %253, %246
  br label %258

258:                                              ; preds = %257
  %259 = load %struct.options_table_entry*, %struct.options_table_entry** %16, align 8
  %260 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %259, i32 1
  store %struct.options_table_entry* %260, %struct.options_table_entry** %16, align 8
  br label %219

261:                                              ; preds = %219
  %262 = call i8* (...) @getshell()
  store i8* %262, i8** %11, align 8
  %263 = load i32, i32* @global_s_options, align 4
  %264 = load i8*, i8** %11, align 8
  %265 = call i32 @options_set_string(i32 %263, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %264)
  %266 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  store i8* %266, i8** %10, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %271, label %268

268:                                              ; preds = %261
  %269 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  store i8* %269, i8** %10, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %294

271:                                              ; preds = %268, %261
  %272 = load i8*, i8** %10, align 8
  %273 = call i8* @strrchr(i8* %272, i8 signext 47)
  %274 = icmp ne i8* %273, null
  br i1 %274, label %275, label %279

275:                                              ; preds = %271
  %276 = load i8*, i8** %10, align 8
  %277 = call i8* @strrchr(i8* %276, i8 signext 47)
  %278 = getelementptr inbounds i8, i8* %277, i64 1
  store i8* %278, i8** %10, align 8
  br label %279

279:                                              ; preds = %275, %271
  %280 = load i8*, i8** %10, align 8
  %281 = call i32* @strstr(i8* %280, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %282 = icmp ne i32* %281, null
  br i1 %282, label %283, label %285

283:                                              ; preds = %279
  %284 = load i32, i32* @MODEKEY_VI, align 4
  store i32 %284, i32* %15, align 4
  br label %287

285:                                              ; preds = %279
  %286 = load i32, i32* @MODEKEY_EMACS, align 4
  store i32 %286, i32* %15, align 4
  br label %287

287:                                              ; preds = %285, %283
  %288 = load i32, i32* @global_s_options, align 4
  %289 = load i32, i32* %15, align 4
  %290 = call i32 @options_set_number(i32 %288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 %289)
  %291 = load i32, i32* @global_w_options, align 4
  %292 = load i32, i32* %15, align 4
  %293 = call i32 @options_set_number(i32 %291, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 %292)
  br label %294

294:                                              ; preds = %287, %268
  %295 = load i8*, i8** %6, align 8
  %296 = icmp eq i8* %295, null
  br i1 %296, label %297, label %322

297:                                              ; preds = %294
  %298 = load i8*, i8** %7, align 8
  %299 = icmp eq i8* %298, null
  br i1 %299, label %300, label %322

300:                                              ; preds = %297
  %301 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store i8* %301, i8** %10, align 8
  %302 = load i8*, i8** %10, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %321

304:                                              ; preds = %300
  %305 = load i8*, i8** %10, align 8
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %321

309:                                              ; preds = %304
  %310 = load i8*, i8** %10, align 8
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp ne i32 %312, 44
  br i1 %313, label %314, label %321

314:                                              ; preds = %309
  %315 = load i8*, i8** %10, align 8
  %316 = call i8* @xstrdup(i8* %315)
  store i8* %316, i8** %6, align 8
  %317 = load i8*, i8** %6, align 8
  %318 = load i8*, i8** %6, align 8
  %319 = call i64 @strcspn(i8* %318, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  store i8 0, i8* %320, align 1
  br label %321

321:                                              ; preds = %314, %309, %304, %300
  br label %322

322:                                              ; preds = %321, %297, %294
  %323 = load i8*, i8** %6, align 8
  %324 = icmp eq i8* %323, null
  br i1 %324, label %325, label %340

325:                                              ; preds = %322
  %326 = load i8*, i8** %7, align 8
  %327 = call i8* @make_label(i8* %326, i8** %8)
  store i8* %327, i8** %6, align 8
  %328 = icmp eq i8* %327, null
  br i1 %328, label %329, label %340

329:                                              ; preds = %325
  %330 = load i8*, i8** %8, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %332, label %338

332:                                              ; preds = %329
  %333 = load i32, i32* @stderr, align 4
  %334 = load i8*, i8** %8, align 8
  %335 = call i32 @fprintf(i32 %333, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* %334)
  %336 = load i8*, i8** %8, align 8
  %337 = call i32 @free(i8* %336)
  br label %338

338:                                              ; preds = %332, %329
  %339 = call i32 @exit(i32 1) #3
  unreachable

340:                                              ; preds = %325, %322
  %341 = load i8*, i8** %6, align 8
  store i8* %341, i8** @socket_path, align 8
  %342 = load i8*, i8** %7, align 8
  %343 = call i32 @free(i8* %342)
  %344 = call i32 (...) @osdep_event_init()
  %345 = load i32, i32* %4, align 4
  %346 = load i8**, i8*** %5, align 8
  %347 = load i32, i32* %14, align 4
  %348 = call i32 @client_main(i32 %344, i32 %345, i8** %346, i32 %347)
  %349 = call i32 @exit(i32 %348) #3
  unreachable
}

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @nl_langinfo(i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @tzset(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @set_cfg_file(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @log_add_level(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @getptmfd(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @pledge(i8*, i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32* @strcasestr(i8*, i8*) #1

declare dso_local i32 @environ_create(...) #1

declare dso_local i32 @environ_put(i32, i8*) #1

declare dso_local i8* @find_cwd(...) #1

declare dso_local i32 @environ_set(i32, i8*, i8*, i8*) #1

declare dso_local i32 @options_create(i32*) #1

declare dso_local i32 @options_default(i32, %struct.options_table_entry*) #1

declare dso_local i8* @getshell(...) #1

declare dso_local i32 @options_set_string(i32, i8*, i32, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @options_set_number(i32, i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i8* @make_label(i8*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @client_main(i32, i32, i8**, i32) #1

declare dso_local i32 @osdep_event_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
