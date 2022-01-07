; ModuleID = '/home/carl/AnghaBench/toxcore/other/bootstrap_daemon/src/extr_tox-bootstrapd.c_main.c'
source_filename = "/home/carl/AnghaBench/toxcore/other/bootstrap_daemon/src/extr_tox-bootstrapd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }

@STDOUT_FILENO = common dso_local global i32 0, align 4
@LOG_BACKEND_STDOUT = common dso_local global i32 0, align 4
@LOG_BACKEND_SYSLOG = common dso_local global i32 0, align 4
@LOG_LEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Running \22%s\22 version %lu.\0A\00", align 1
@DAEMON_NAME = common dso_local global i32 0, align 4
@DAEMON_VERSION_NUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"General config read successfully\0A\00", align 1
@LOG_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Couldn't read config file: %s. Exiting.\0A\00", align 1
@MIN_ALLOWED_PORT = common dso_local global i32 0, align 4
@MAX_ALLOWED_PORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Invalid port: %d, should be in [%d, %d]. Exiting.\0A\00", align 1
@LOG_LEVEL_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"Couldn't initialize IPv6 networking. Falling back to using IPv4.\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Couldn't fallback to IPv4. Exiting.\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Couldn't initialize networking. Exiting.\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Couldn't initialize Tox DHT instance. Exiting.\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Couldn't initialize Tox Onion. Exiting.\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Set MOTD successfully.\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Couldn't set MOTD: %s. Exiting.\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Keys are managed successfully.\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Couldn't read/write: %s. Exiting.\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"No TCP relay ports read. Exiting.\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"Initialized Tox TCP server successfully.\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"Couldn't initialize Tox TCP server. Exiting.\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"List of bootstrap nodes read successfully.\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"Couldn't read list of bootstrap nodes in %s. Exiting.\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Initialized LAN discovery successfully.\0A\00", align 1
@LAN_DISCOVERY_INTERVAL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [51 x i8] c"Connected to another bootstrap node successfully.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_11__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %29 = call i32 @umask(i32 63)
  %30 = load i32, i32* @STDOUT_FILENO, align 4
  %31 = call i64 @isatty(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @LOG_BACKEND_STDOUT, align 4
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @LOG_BACKEND_SYSLOG, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @open_log(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = call i32 @handle_command_line_arguments(i32 %41, i8** %42, i8** %6, i32* %7, i32* %8)
  %44 = call i32 (...) @close_log()
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @open_log(i32 %45)
  %47 = load i32, i32* @LOG_LEVEL_INFO, align 4
  %48 = load i32, i32* @DAEMON_NAME, align 4
  %49 = load i32, i32* @DAEMON_VERSION_NUMBER, align 4
  %50 = call i32 (i32, i8*, ...) @write_log(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @get_general_config(i8* %51, i8** %9, i8** %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i8** %16, i32* %17, i32* %18, i8** %19)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %37
  %55 = load i32, i32* @LOG_LEVEL_INFO, align 4
  %56 = call i32 (i32, i8*, ...) @write_log(i32 %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %61

57:                                               ; preds = %37
  %58 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 (i32, i8*, ...) @write_log(i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  store i32 1, i32* %3, align 4
  br label %270

61:                                               ; preds = %54
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @MIN_ALLOWED_PORT, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @MAX_ALLOWED_PORT, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @MIN_ALLOWED_PORT, align 4
  %73 = load i32, i32* @MAX_ALLOWED_PORT, align 4
  %74 = call i32 (i32, i8*, ...) @write_log(i32 %70, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72, i32 %73)
  store i32 1, i32* %3, align 4
  br label %270

75:                                               ; preds = %65
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @daemonize(i32 %79, i8* %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @ip_init(i32* %20, i32 %85)
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32* @new_networking(i32 %87, i32 %88)
  store i32* %89, i32** %21, align 8
  %90 = load i32*, i32** %21, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %116

92:                                               ; preds = %82
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = load i32, i32* @LOG_LEVEL_WARNING, align 4
  %100 = call i32 (i32, i8*, ...) @write_log(i32 %99, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @ip_init(i32* %20, i32 %101)
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32* @new_networking(i32 %103, i32 %104)
  store i32* %105, i32** %21, align 8
  %106 = load i32*, i32** %21, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %110 = call i32 (i32, i8*, ...) @write_log(i32 %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %270

111:                                              ; preds = %98
  br label %115

112:                                              ; preds = %95, %92
  %113 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %114 = call i32 (i32, i8*, ...) @write_log(i32 %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %270

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115, %82
  %117 = load i32*, i32** %21, align 8
  %118 = call %struct.TYPE_11__* @new_DHT(i32* %117)
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %22, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %120 = icmp eq %struct.TYPE_11__* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %123 = call i32 (i32, i8*, ...) @write_log(i32 %122, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %270

124:                                              ; preds = %116
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %126 = call i32* @new_onion(%struct.TYPE_11__* %125)
  store i32* %126, i32** %23, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %128 = call i32* @new_onion_announce(%struct.TYPE_11__* %127)
  store i32* %128, i32** %24, align 8
  %129 = load i32*, i32** %23, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load i32*, i32** %24, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %131, %124
  %135 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %136 = call i32 (i32, i8*, ...) @write_log(i32 %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %270

137:                                              ; preds = %131
  %138 = load i32, i32* %18, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %162

140:                                              ; preds = %137
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @DAEMON_VERSION_NUMBER, align 4
  %145 = load i8*, i8** %19, align 8
  %146 = bitcast i8* %145 to i32*
  %147 = load i8*, i8** %19, align 8
  %148 = call i64 @strlen(i8* %147)
  %149 = add nsw i64 %148, 1
  %150 = call i64 @bootstrap_set_callbacks(i32 %143, i32 %144, i32* %146, i64 %149)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load i32, i32* @LOG_LEVEL_INFO, align 4
  %154 = call i32 (i32, i8*, ...) @write_log(i32 %153, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %159

155:                                              ; preds = %140
  %156 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %157 = load i8*, i8** %19, align 8
  %158 = call i32 (i32, i8*, ...) @write_log(i32 %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %157)
  store i32 1, i32* %3, align 4
  br label %270

159:                                              ; preds = %152
  %160 = load i8*, i8** %19, align 8
  %161 = call i32 @free(i8* %160)
  br label %162

162:                                              ; preds = %159, %137
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = call i64 @manage_keys(%struct.TYPE_11__* %163, i8* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load i32, i32* @LOG_LEVEL_INFO, align 4
  %169 = call i32 (i32, i8*, ...) @write_log(i32 %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %174

170:                                              ; preds = %162
  %171 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %172 = load i8*, i8** %10, align 8
  %173 = call i32 (i32, i8*, ...) @write_log(i32 %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i8* %172)
  store i32 1, i32* %3, align 4
  br label %270

174:                                              ; preds = %167
  %175 = load i8*, i8** %10, align 8
  %176 = call i32 @free(i8* %175)
  store i32* null, i32** %25, align 8
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %205

179:                                              ; preds = %174
  %180 = load i32, i32* %17, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %184 = call i32 (i32, i8*, ...) @write_log(i32 %183, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %270

185:                                              ; preds = %179
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %17, align 4
  %188 = load i8*, i8** %16, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %23, align 8
  %193 = call i32* @new_TCP_server(i32 %186, i32 %187, i8* %188, i32 %191, i32* %192)
  store i32* %193, i32** %25, align 8
  %194 = load i8*, i8** %16, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load i32*, i32** %25, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %185
  %199 = load i32, i32* @LOG_LEVEL_INFO, align 4
  %200 = call i32 (i32, i8*, ...) @write_log(i32 %199, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  br label %204

201:                                              ; preds = %185
  %202 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %203 = call i32 (i32, i8*, ...) @write_log(i32 %202, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %270

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %204, %174
  %206 = load i8*, i8** %6, align 8
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %208 = load i32, i32* %12, align 4
  %209 = call i64 @bootstrap_from_config(i8* %206, %struct.TYPE_11__* %207, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = load i32, i32* @LOG_LEVEL_INFO, align 4
  %213 = call i32 (i32, i8*, ...) @write_log(i32 %212, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  br label %218

214:                                              ; preds = %205
  %215 = load i32, i32* @LOG_LEVEL_ERROR, align 4
  %216 = load i8*, i8** %6, align 8
  %217 = call i32 (i32, i8*, ...) @write_log(i32 %215, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0), i8* %216)
  store i32 1, i32* %3, align 4
  br label %270

218:                                              ; preds = %211
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @print_public_key(i32 %221)
  store i32 0, i32* %26, align 4
  %223 = load i32, i32* %11, align 4
  %224 = call signext i8 @htons(i32 %223)
  store i8 %224, i8* %27, align 1
  store i32 1, i32* %28, align 4
  %225 = load i32, i32* %14, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %218
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %229 = call i32 @LANdiscovery_init(%struct.TYPE_11__* %228)
  %230 = load i32, i32* @LOG_LEVEL_INFO, align 4
  %231 = call i32 (i32, i8*, ...) @write_log(i32 %230, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0))
  br label %232

232:                                              ; preds = %227, %218
  br label %233

233:                                              ; preds = %232, %268
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %235 = call i32 @do_DHT(%struct.TYPE_11__* %234)
  %236 = load i32, i32* %14, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %233
  %239 = load i32, i32* %26, align 4
  %240 = load i32, i32* @LAN_DISCOVERY_INTERVAL, align 4
  %241 = call i64 @is_timeout(i32 %239, i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load i8, i8* %27, align 1
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %246 = call i32 @send_LANdiscovery(i8 signext %244, %struct.TYPE_11__* %245)
  %247 = call i32 (...) @unix_time()
  store i32 %247, i32* %26, align 4
  br label %248

248:                                              ; preds = %243, %238, %233
  %249 = load i32, i32* %15, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i32*, i32** %25, align 8
  %253 = call i32 @do_TCP_server(i32* %252)
  br label %254

254:                                              ; preds = %251, %248
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @networking_poll(i32 %257)
  %259 = load i32, i32* %28, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %254
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %263 = call i64 @DHT_isconnected(%struct.TYPE_11__* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %261
  %266 = load i32, i32* @LOG_LEVEL_INFO, align 4
  %267 = call i32 (i32, i8*, ...) @write_log(i32 %266, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i64 0, i64 0))
  store i32 0, i32* %28, align 4
  br label %268

268:                                              ; preds = %265, %261, %254
  %269 = call i32 @SLEEP_MILLISECONDS(i32 30)
  br label %233

270:                                              ; preds = %214, %201, %182, %170, %155, %134, %121, %112, %108, %69, %57
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @umask(i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @open_log(i32) #1

declare dso_local i32 @handle_command_line_arguments(i32, i8**, i8**, i32*, i32*) #1

declare dso_local i32 @close_log(...) #1

declare dso_local i32 @write_log(i32, i8*, ...) #1

declare dso_local i64 @get_general_config(i8*, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i8**, i32*, i32*, i8**) #1

declare dso_local i32 @daemonize(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ip_init(i32*, i32) #1

declare dso_local i32* @new_networking(i32, i32) #1

declare dso_local %struct.TYPE_11__* @new_DHT(i32*) #1

declare dso_local i32* @new_onion(%struct.TYPE_11__*) #1

declare dso_local i32* @new_onion_announce(%struct.TYPE_11__*) #1

declare dso_local i64 @bootstrap_set_callbacks(i32, i32, i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @manage_keys(%struct.TYPE_11__*, i8*) #1

declare dso_local i32* @new_TCP_server(i32, i32, i8*, i32, i32*) #1

declare dso_local i64 @bootstrap_from_config(i8*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @print_public_key(i32) #1

declare dso_local signext i8 @htons(i32) #1

declare dso_local i32 @LANdiscovery_init(%struct.TYPE_11__*) #1

declare dso_local i32 @do_DHT(%struct.TYPE_11__*) #1

declare dso_local i64 @is_timeout(i32, i32) #1

declare dso_local i32 @send_LANdiscovery(i8 signext, %struct.TYPE_11__*) #1

declare dso_local i32 @unix_time(...) #1

declare dso_local i32 @do_TCP_server(i32*) #1

declare dso_local i32 @networking_poll(i32) #1

declare dso_local i64 @DHT_isconnected(%struct.TYPE_11__*) #1

declare dso_local i32 @SLEEP_MILLISECONDS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
