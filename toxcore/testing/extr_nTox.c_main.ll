; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_main.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"Usage: %s [--ipv4|--ipv6] IP PORT KEY [-f keyfile] (or %s -h for help)\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@data_file_name = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"Failed to allocate Messenger datastructure\00", align 1
@stderr = common dso_local global i32 0, align 4
@print_request = common dso_local global i32 0, align 4
@print_message = common dso_local global i32 0, align 4
@print_nickchange = common dso_local global i32 0, align 4
@print_statuschange = common dso_local global i32 0, align 4
@print_invite = common dso_local global i32 0, align 4
@print_groupmessage = common dso_local global i32 0, align 4
@write_file = common dso_local global i32 0, align 4
@file_print_control = common dso_local global i32 0, align 4
@file_request_accept = common dso_local global i32 0, align 4
@tox_file_chunk_request = common dso_local global i32 0, align 4
@print_groupnamelistchange = common dso_local global i32 0, align 4
@print_online = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@y = common dso_local global i32 0, align 4
@x = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"/h for list of commands\00", align 1
@input_line = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [55 x i8] c"Failed to convert \22%s\22 into an IP address. Exiting...\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"[i] change username with /n\00", align 1
@TOX_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"[i] your current username is: %s\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"[i] connected to DHT\00", align 1
@ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [200 x i8], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %23 = load i32, i32* @LC_ALL, align 4
  %24 = call i32 @setlocale(i32 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %51

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @print_help(i8* %39)
  %41 = call i32 @exit(i32 0) #5
  unreachable

42:                                               ; preds = %30, %27
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %48)
  %50 = call i32 @exit(i32 0) #5
  unreachable

51:                                               ; preds = %2
  store i8 1, i8* %6, align 1
  %52 = load i32, i32* %4, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = call i32 @cmdline_parsefor_ipv46(i32 %52, i8** %53, i8* %6)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 @exit(i32 1) #5
  unreachable

59:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %60 = bitcast [200 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %60, i8 0, i64 200, i1 false)
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 3
  %64 = icmp sgt i32 %61, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load i8**, i8*** %5, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %65
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %9, align 8
  br label %81

81:                                               ; preds = %74, %65
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i8*, i8** %9, align 8
  store i8* %83, i8** @data_file_name, align 8
  %84 = call i32* (...) @load_data()
  store i32* %84, i32** %11, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 @fputs(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = call i32 @exit(i32 0) #5
  unreachable

91:                                               ; preds = %82
  %92 = load i32*, i32** %11, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @save_data_file(i32* %92, i8* %93)
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* @print_request, align 4
  %97 = call i32 @tox_callback_friend_request(i32* %95, i32 %96, i32* null)
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* @print_message, align 4
  %100 = call i32 @tox_callback_friend_message(i32* %98, i32 %99, i32* null)
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* @print_nickchange, align 4
  %103 = call i32 @tox_callback_friend_name(i32* %101, i32 %102, i32* null)
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* @print_statuschange, align 4
  %106 = call i32 @tox_callback_friend_status_message(i32* %104, i32 %105, i32* null)
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* @print_invite, align 4
  %109 = call i32 @tox_callback_group_invite(i32* %107, i32 %108, i32* null)
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* @print_groupmessage, align 4
  %112 = call i32 @tox_callback_group_message(i32* %110, i32 %111, i32* null)
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* @write_file, align 4
  %115 = call i32 @tox_callback_file_recv_chunk(i32* %113, i32 %114, i32* null)
  %116 = load i32*, i32** %11, align 8
  %117 = load i32, i32* @file_print_control, align 4
  %118 = call i32 @tox_callback_file_recv_control(i32* %116, i32 %117, i32* null)
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* @file_request_accept, align 4
  %121 = call i32 @tox_callback_file_recv(i32* %119, i32 %120, i32* null)
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* @tox_file_chunk_request, align 4
  %124 = call i32 @tox_callback_file_chunk_request(i32* %122, i32 %123, i32* null)
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* @print_groupnamelistchange, align 4
  %127 = call i32 @tox_callback_group_namelist_change(i32* %125, i32 %126, i32* null)
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* @print_online, align 4
  %130 = call i32 @tox_callback_friend_connection_status(i32* %128, i32 %129, i32* null)
  %131 = call i32 (...) @initscr()
  %132 = call i32 (...) @noecho()
  %133 = call i32 (...) @raw()
  %134 = load i32, i32* @stdscr, align 4
  %135 = load i32, i32* @y, align 4
  %136 = load i32, i32* @x, align 4
  %137 = call i32 @getmaxyx(i32 %134, i32 %135, i32 %136)
  %138 = call i32 @new_lines(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32*, i32** %11, align 8
  %140 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %141 = call i32 @get_id(i32* %139, i8* %140)
  %142 = getelementptr inbounds [200 x i8], [200 x i8]* %10, i64 0, i64 0
  %143 = call i32 @new_lines(i8* %142)
  %144 = load i8*, i8** @input_line, align 8
  %145 = call i32 @strcpy(i8* %144, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %146 = load i8**, i8*** %5, align 8
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 2
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %146, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @atoi(i8* %151)
  store i64 %152, i64* %12, align 8
  %153 = load i8**, i8*** %5, align 8
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 3
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %153, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i8* @hex_string_to_bin(i8* %158)
  store i8* %159, i8** %13, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %161, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i8*, i8** %13, align 8
  %169 = call i32 @tox_bootstrap(i32* %160, i8* %166, i64 %167, i8* %168, i32* null)
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %182, label %172

172:                                              ; preds = %91
  %173 = load i8**, i8*** %5, align 8
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %173, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i8* %178)
  %180 = call i32 (...) @endwin()
  %181 = call i32 @exit(i32 1) #5
  unreachable

182:                                              ; preds = %91
  %183 = load i32, i32* @stdscr, align 4
  %184 = load i32, i32* @TRUE, align 4
  %185 = call i32 @nodelay(i32 %183, i32 %184)
  %186 = call i32 @new_lines(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %187 = load i32, i32* @TOX_MAX_NAME_LENGTH, align 4
  %188 = add nsw i32 %187, 1
  %189 = zext i32 %188 to i64
  %190 = call i8* @llvm.stacksave()
  store i8* %190, i8** %15, align 8
  %191 = alloca i8, i64 %189, align 16
  store i64 %189, i64* %16, align 8
  %192 = load i32*, i32** %11, align 8
  %193 = call i32 @tox_self_get_name(i32* %192, i8* %191)
  %194 = load i32*, i32** %11, align 8
  %195 = call i64 @tox_self_get_name_size(i32* %194)
  store i64 %195, i64* %17, align 8
  %196 = load i64, i64* %17, align 8
  %197 = getelementptr inbounds i8, i8* %191, i64 %196
  store i8 0, i8* %197, align 1
  %198 = load i64, i64* %17, align 8
  %199 = icmp ugt i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %182
  %201 = load i32, i32* @TOX_MAX_NAME_LENGTH, align 4
  %202 = add nsw i32 128, %201
  %203 = zext i32 %202 to i64
  %204 = call i8* @llvm.stacksave()
  store i8* %204, i8** %18, align 8
  %205 = alloca i8, i64 %203, align 16
  store i64 %203, i64* %19, align 8
  %206 = trunc i64 %203 to i32
  %207 = call i32 @snprintf(i8* %205, i32 %206, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %191)
  %208 = call i32 @new_lines(i8* %205)
  %209 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %209)
  br label %210

210:                                              ; preds = %200, %182
  %211 = call i64 @time(i32* null)
  store i64 %211, i64* %20, align 8
  br label %212

212:                                              ; preds = %302, %254, %210
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %8, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %242

216:                                              ; preds = %213
  %217 = load i32*, i32** %11, align 8
  %218 = call i64 @tox_self_get_connection_status(i32* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = call i32 @new_lines(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %241

222:                                              ; preds = %216
  %223 = call i64 @time(i32* null)
  store i64 %223, i64* %21, align 8
  %224 = load i64, i64* %20, align 8
  %225 = add nsw i64 %224, 10
  %226 = load i64, i64* %21, align 8
  %227 = icmp slt i64 %225, %226
  br i1 %227, label %228, label %240

228:                                              ; preds = %222
  %229 = load i64, i64* %21, align 8
  store i64 %229, i64* %20, align 8
  %230 = load i32*, i32** %11, align 8
  %231 = load i8**, i8*** %5, align 8
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8*, i8** %231, i64 %234
  %236 = load i8*, i8** %235, align 8
  %237 = load i64, i64* %12, align 8
  %238 = load i8*, i8** %13, align 8
  %239 = call i32 @tox_bootstrap(i32* %230, i8* %236, i64 %237, i8* %238, i32* null)
  br label %240

240:                                              ; preds = %228, %222
  br label %241

241:                                              ; preds = %240, %220
  br label %242

242:                                              ; preds = %241, %213
  %243 = load i32*, i32** %11, align 8
  %244 = call i32 @tox_iterate(i32* %243)
  %245 = call i32 (...) @do_refresh()
  %246 = load i32*, i32** %11, align 8
  %247 = call i32 @timeout_getch(i32* %246)
  store i32 %247, i32* %22, align 4
  %248 = load i32, i32* %22, align 4
  %249 = load i32, i32* @ERR, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %254, label %251

251:                                              ; preds = %242
  %252 = load i32, i32* %22, align 4
  %253 = icmp eq i32 %252, 27
  br i1 %253, label %254, label %255

254:                                              ; preds = %251, %242
  br label %212

255:                                              ; preds = %251
  %256 = load i32, i32* @stdscr, align 4
  %257 = load i32, i32* @y, align 4
  %258 = load i32, i32* @x, align 4
  %259 = call i32 @getmaxyx(i32 %256, i32 %257, i32 %258)
  %260 = load i32, i32* %22, align 4
  %261 = icmp eq i32 %260, 13
  br i1 %261, label %265, label %262

262:                                              ; preds = %255
  %263 = load i32, i32* %22, align 4
  %264 = icmp eq i32 %263, 10
  br i1 %264, label %265, label %271

265:                                              ; preds = %262, %255
  %266 = load i32*, i32** %11, align 8
  %267 = load i8*, i8** @input_line, align 8
  %268 = call i32 @line_eval(i32* %266, i8* %267)
  %269 = load i8*, i8** @input_line, align 8
  %270 = call i32 @strcpy(i8* %269, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %302

271:                                              ; preds = %262
  %272 = load i32, i32* %22, align 4
  %273 = icmp eq i32 %272, 8
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* %22, align 4
  %276 = icmp eq i32 %275, 127
  br i1 %276, label %277, label %284

277:                                              ; preds = %274, %271
  %278 = load i8*, i8** @input_line, align 8
  %279 = load i8*, i8** @input_line, align 8
  %280 = call i32 @strlen(i8* %279)
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %278, i64 %282
  store i8 0, i8* %283, align 1
  br label %301

284:                                              ; preds = %274
  %285 = load i32, i32* %22, align 4
  %286 = call i64 @isalnum(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %284
  %289 = load i32, i32* %22, align 4
  %290 = call i64 @ispunct(i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %288
  %293 = load i32, i32* %22, align 4
  %294 = icmp eq i32 %293, 32
  br i1 %294, label %295, label %300

295:                                              ; preds = %292, %288, %284
  %296 = load i8*, i8** @input_line, align 8
  %297 = load i32, i32* %22, align 4
  %298 = trunc i32 %297 to i8
  %299 = call i32 @appender(i8* %296, i8 signext %298)
  br label %300

300:                                              ; preds = %295, %292
  br label %301

301:                                              ; preds = %300, %277
  br label %302

302:                                              ; preds = %301, %265
  br label %212
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @print_help(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @cmdline_parsefor_ipv46(i32, i8**, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32* @load_data(...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @save_data_file(i32*, i8*) #1

declare dso_local i32 @tox_callback_friend_request(i32*, i32, i32*) #1

declare dso_local i32 @tox_callback_friend_message(i32*, i32, i32*) #1

declare dso_local i32 @tox_callback_friend_name(i32*, i32, i32*) #1

declare dso_local i32 @tox_callback_friend_status_message(i32*, i32, i32*) #1

declare dso_local i32 @tox_callback_group_invite(i32*, i32, i32*) #1

declare dso_local i32 @tox_callback_group_message(i32*, i32, i32*) #1

declare dso_local i32 @tox_callback_file_recv_chunk(i32*, i32, i32*) #1

declare dso_local i32 @tox_callback_file_recv_control(i32*, i32, i32*) #1

declare dso_local i32 @tox_callback_file_recv(i32*, i32, i32*) #1

declare dso_local i32 @tox_callback_file_chunk_request(i32*, i32, i32*) #1

declare dso_local i32 @tox_callback_group_namelist_change(i32*, i32, i32*) #1

declare dso_local i32 @tox_callback_friend_connection_status(i32*, i32, i32*) #1

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @raw(...) #1

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local i32 @new_lines(i8*) #1

declare dso_local i32 @get_id(i32*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i8* @hex_string_to_bin(i8*) #1

declare dso_local i32 @tox_bootstrap(i32*, i8*, i64, i8*, i32*) #1

declare dso_local i32 @endwin(...) #1

declare dso_local i32 @nodelay(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

declare dso_local i32 @tox_self_get_name(i32*, i8*) #1

declare dso_local i64 @tox_self_get_name_size(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @tox_self_get_connection_status(i32*) #1

declare dso_local i32 @tox_iterate(i32*) #1

declare dso_local i32 @do_refresh(...) #1

declare dso_local i32 @timeout_getch(i32*) #1

declare dso_local i32 @line_eval(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isalnum(i32) #1

declare dso_local i64 @ispunct(i32) #1

declare dso_local i32 @appender(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
