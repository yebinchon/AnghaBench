; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-socket.c_bus_socket_auth_verify_server.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-socket.c_bus_socket_auth_verify_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i32, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"AUTH ANONYMOUS\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"REJECTED\0D\0A\00", align 1
@BUS_AUTH_ANONYMOUS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"DATA\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"AUTH EXTERNAL\00", align 1
@BUS_AUTH_EXTERNAL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"REJECTED EXTERNAL ANONYMOUS\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@_BUS_AUTH_INVALID = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ERROR\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"NEGOTIATE_UNIX_FD\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"AGREE_UNIX_FD\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @bus_socket_auth_verify_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_socket_auth_verify_server(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = call i32 @assert(%struct.TYPE_10__* %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %324

16:                                               ; preds = %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %324

27:                                               ; preds = %16
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %324

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %33
  br label %42

42:                                               ; preds = %311, %41
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %55, %58
  %60 = call i8* @memmem(i8* %52, i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %42
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %324

65:                                               ; preds = %42
  %66 = load i8*, i8** %4, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  store i64 %70, i64* %6, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @line_begins(i8* %71, i64 %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %65
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %82 = sub i64 %80, %81
  %83 = call i32 @verify_anonymous_token(%struct.TYPE_10__* %76, i8* %79, i64 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %2, align 4
  br label %324

88:                                               ; preds = %75
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = call i32 @bus_socket_auth_write(%struct.TYPE_10__* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %93, i32* %8, align 4
  br label %108

94:                                               ; preds = %88
  %95 = load i64, i64* @BUS_AUTH_ANONYMOUS, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %6, align 8
  %99 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %100 = icmp ule i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = call i32 @bus_socket_auth_write(%struct.TYPE_10__* %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %103, i32* %8, align 4
  br label %107

104:                                              ; preds = %94
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = call i32 @bus_socket_auth_write_ok(%struct.TYPE_10__* %105)
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %91
  br label %306

109:                                              ; preds = %65
  %110 = load i8*, i8** %5, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call i64 @line_begins(i8* %110, i64 %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %148

114:                                              ; preds = %109
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  %119 = load i64, i64* %6, align 8
  %120 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %121 = sub i64 %119, %120
  %122 = call i32 @verify_external_token(%struct.TYPE_10__* %115, i8* %118, i64 %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %114
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %2, align 4
  br label %324

127:                                              ; preds = %114
  %128 = load i32, i32* %8, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %132 = call i32 @bus_socket_auth_write(%struct.TYPE_10__* %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %132, i32* %8, align 4
  br label %147

133:                                              ; preds = %127
  %134 = load i64, i64* @BUS_AUTH_EXTERNAL, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  %137 = load i64, i64* %6, align 8
  %138 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %139 = icmp ule i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %142 = call i32 @bus_socket_auth_write(%struct.TYPE_10__* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %142, i32* %8, align 4
  br label %146

143:                                              ; preds = %133
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %145 = call i32 @bus_socket_auth_write_ok(%struct.TYPE_10__* %144)
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %143, %140
  br label %147

147:                                              ; preds = %146, %130
  br label %305

148:                                              ; preds = %109
  %149 = load i8*, i8** %5, align 8
  %150 = load i64, i64* %6, align 8
  %151 = call i64 @line_begins(i8* %149, i64 %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %155 = call i32 @bus_socket_auth_write(%struct.TYPE_10__* %154, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i32 %155, i32* %8, align 4
  br label %304

156:                                              ; preds = %148
  %157 = load i8*, i8** %5, align 8
  %158 = load i64, i64* %6, align 8
  %159 = call i64 @line_equals(i8* %157, i64 %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load i8*, i8** %5, align 8
  %163 = load i64, i64* %6, align 8
  %164 = call i64 @line_begins(i8* %162, i64 %163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161, %156
  %167 = load i64, i64* @_BUS_AUTH_INVALID, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %171 = call i32 @bus_socket_auth_write(%struct.TYPE_10__* %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %171, i32* %8, align 4
  br label %303

172:                                              ; preds = %161
  %173 = load i8*, i8** %5, align 8
  %174 = load i64, i64* %6, align 8
  %175 = call i64 @line_equals(i8* %173, i64 %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %219

177:                                              ; preds = %172
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @_BUS_AUTH_INVALID, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %185 = call i32 @bus_socket_auth_write(%struct.TYPE_10__* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 %185, i32* %8, align 4
  br label %218

186:                                              ; preds = %177
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %188 = call i64 @bus_socket_auth_needs_write(%struct.TYPE_10__* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  store i32 1, i32* %2, align 4
  br label %324

191:                                              ; preds = %186
  %192 = load i8*, i8** %4, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 2
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to i8*
  %198 = ptrtoint i8* %193 to i64
  %199 = ptrtoint i8* %197 to i64
  %200 = sub i64 %198, %199
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = sub nsw i64 %204, %200
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %202, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = load i8*, i8** %4, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 2
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @memmove(i64 %209, i8* %211, i32 %214)
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %217 = call i32 @bus_start_running(%struct.TYPE_10__* %216)
  store i32 %217, i32* %2, align 4
  br label %324

218:                                              ; preds = %183
  br label %302

219:                                              ; preds = %172
  %220 = load i8*, i8** %5, align 8
  %221 = load i64, i64* %6, align 8
  %222 = call i64 @line_begins(i8* %220, i64 %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %272

224:                                              ; preds = %219
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @_BUS_AUTH_INVALID, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %224
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %232 = call i32 @bus_socket_auth_write(%struct.TYPE_10__* %231, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 %232, i32* %8, align 4
  br label %271

233:                                              ; preds = %224
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @BUS_AUTH_ANONYMOUS, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %246

239:                                              ; preds = %233
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %241 = load i8*, i8** %5, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 4
  %243 = load i64, i64* %6, align 8
  %244 = sub i64 %243, 4
  %245 = call i32 @verify_anonymous_token(%struct.TYPE_10__* %240, i8* %242, i64 %244)
  store i32 %245, i32* %8, align 4
  br label %253

246:                                              ; preds = %233
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %248 = load i8*, i8** %5, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 4
  %250 = load i64, i64* %6, align 8
  %251 = sub i64 %250, 4
  %252 = call i32 @verify_external_token(%struct.TYPE_10__* %247, i8* %249, i64 %251)
  store i32 %252, i32* %8, align 4
  br label %253

253:                                              ; preds = %246, %239
  %254 = load i32, i32* %8, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load i32, i32* %8, align 4
  store i32 %257, i32* %2, align 4
  br label %324

258:                                              ; preds = %253
  %259 = load i32, i32* %8, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %258
  %262 = load i64, i64* @_BUS_AUTH_INVALID, align 8
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 2
  store i64 %262, i64* %264, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %266 = call i32 @bus_socket_auth_write(%struct.TYPE_10__* %265, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %266, i32* %8, align 4
  br label %270

267:                                              ; preds = %258
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %269 = call i32 @bus_socket_auth_write_ok(%struct.TYPE_10__* %268)
  store i32 %269, i32* %8, align 4
  br label %270

270:                                              ; preds = %267, %261
  br label %271

271:                                              ; preds = %270, %230
  br label %301

272:                                              ; preds = %219
  %273 = load i8*, i8** %5, align 8
  %274 = load i64, i64* %6, align 8
  %275 = call i64 @line_equals(i8* %273, i64 %274, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %297

277:                                              ; preds = %272
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @_BUS_AUTH_INVALID, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %288, label %283

283:                                              ; preds = %277
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 8
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %283, %277
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %290 = call i32 @bus_socket_auth_write(%struct.TYPE_10__* %289, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 %290, i32* %8, align 4
  br label %296

291:                                              ; preds = %283
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 3
  store i32 1, i32* %293, align 8
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %295 = call i32 @bus_socket_auth_write(%struct.TYPE_10__* %294, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  store i32 %295, i32* %8, align 4
  br label %296

296:                                              ; preds = %291, %288
  br label %300

297:                                              ; preds = %272
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %299 = call i32 @bus_socket_auth_write(%struct.TYPE_10__* %298, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i32 %299, i32* %8, align 4
  br label %300

300:                                              ; preds = %297, %296
  br label %301

301:                                              ; preds = %300, %271
  br label %302

302:                                              ; preds = %301, %218
  br label %303

303:                                              ; preds = %302, %166
  br label %304

304:                                              ; preds = %303, %153
  br label %305

305:                                              ; preds = %304, %147
  br label %306

306:                                              ; preds = %305, %108
  %307 = load i32, i32* %8, align 4
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  %310 = load i32, i32* %8, align 4
  store i32 %310, i32* %2, align 4
  br label %324

311:                                              ; preds = %306
  %312 = load i8*, i8** %4, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 2
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 4
  %316 = load i64, i64* %315, align 8
  %317 = inttoptr i64 %316 to i8*
  %318 = ptrtoint i8* %313 to i64
  %319 = ptrtoint i8* %317 to i64
  %320 = sub i64 %318, %319
  %321 = trunc i64 %320 to i32
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 1
  store i32 %321, i32* %323, align 4
  store i32 1, i32* %7, align 4
  br label %42

324:                                              ; preds = %309, %256, %191, %190, %125, %86, %63, %32, %24, %15
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i8* @memmem(i8*, i32, i8*, i32) #1

declare dso_local i64 @line_begins(i8*, i64, i8*) #1

declare dso_local i32 @verify_anonymous_token(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bus_socket_auth_write(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @bus_socket_auth_write_ok(%struct.TYPE_10__*) #1

declare dso_local i32 @verify_external_token(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i64 @line_equals(i8*, i64, i8*) #1

declare dso_local i64 @bus_socket_auth_needs_write(%struct.TYPE_10__*) #1

declare dso_local i32 @memmove(i64, i8*, i32) #1

declare dso_local i32 @bus_start_running(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
