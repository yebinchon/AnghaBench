; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_parseOptions.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-benchmark.c_parseOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"--csv\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"--dbnum\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"--precision\00", align 1
@MAX_LATENCY_PRECISION = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"--threads\00", align 1
@MAX_THREADS = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [52 x i8] c"WARNING: too many threads, limiting threads to %d.\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"--cluster\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"--enable-tracking\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"Invalid option \22%s\22 or option argument missing\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [2641 x i8] c"Usage: redis-benchmark [-h <host>] [-p <port>] [-c <clients>] [-n <requests>] [-k <boolean>]\0A\0A -h <hostname>      Server hostname (default 127.0.0.1)\0A -p <port>          Server port (default 6379)\0A -s <socket>        Server socket (overrides host and port)\0A -a <password>      Password for Redis Auth\0A -c <clients>       Number of parallel connections (default 50)\0A -n <requests>      Total number of requests (default 100000)\0A -d <size>          Data size of SET/GET value in bytes (default 3)\0A --dbnum <db>       SELECT the specified db number (default 0)\0A --threads <num>    Enable multi-thread mode.\0A --cluster          Enable cluster mode.\0A --enable-tracking  Send CLIENT TRACKING on before starting benchmark.\0A -k <boolean>       1=keep alive 0=reconnect (default 1)\0A -r <keyspacelen>   Use random keys for SET/GET/INCR, random values for SADD\0A  Using this option the benchmark will expand the string __rand_int__\0A  inside an argument with a 12 digits number in the specified range\0A  from 0 to keyspacelen-1. The substitution changes every time a command\0A  is executed. Default tests use this to hit random keys in the\0A  specified range.\0A -P <numreq>        Pipeline <numreq> requests. Default 1 (no pipeline).\0A -e                 If server replies with errors, show them on stdout.\0A                    (no more than 1 error per second is displayed)\0A -q                 Quiet. Just show query/sec values\0A --precision        Number of decimal places to display in latency output (default 0)\0A --csv              Output in CSV format\0A -l                 Loop. Run the tests forever\0A -t <tests>         Only run the comma separated list of tests. The test\0A                    names are the same as the ones produced as output.\0A -I                 Idle mode. Just open N idle connections and wait.\0A\0AExamples:\0A\0A Run the benchmark with the default configuration against 127.0.0.1:6379:\0A   $ redis-benchmark\0A\0A Use 20 parallel clients, for a total of 100k requests, against 192.168.1.1:\0A   $ redis-benchmark -h 192.168.1.1 -p 6379 -n 100000 -c 20\0A\0A Fill 127.0.0.1:6379 with about 1 million keys only using the SET test:\0A   $ redis-benchmark -t set -n 1000000 -r 100000000\0A\0A Benchmark 127.0.0.1:6379 for a few commands producing CSV output:\0A   $ redis-benchmark -t ping,set,get -n 100000 --csv\0A\0A Benchmark a specific command line:\0A   $ redis-benchmark -r 10000 -n 10000 eval 'return redis.call(\22ping\22)' 0\0A\0A Fill a list with 10000 random elements:\0A   $ redis-benchmark -r 10000 -n 10000 lpush mylist __rand_int__\0A\0A On user specified command lines __rand_int__ is replaced with a random integer\0A with a range of values selected by the -r option.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parseOptions(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %6, align 4
  br label %11

11:                                               ; preds = %479, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %482

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp eq i32 %16, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %484

32:                                               ; preds = %28
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @atoi(i8* %38)
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 22), align 8
  br label %478

40:                                               ; preds = %15
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %484

52:                                               ; preds = %48
  %53 = load i8**, i8*** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @atoi(i8* %58)
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 21), align 8
  br label %477

60:                                               ; preds = %40
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %484

72:                                               ; preds = %68
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %73, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @atoi(i8* %78)
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 20), align 8
  br label %476

80:                                               ; preds = %60
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %484

92:                                               ; preds = %88
  %93 = load i8**, i8*** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %93, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @strdup(i8* %98)
  store i8* %99, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 19), align 8
  br label %475

100:                                              ; preds = %80
  %101 = load i8**, i8*** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @strcmp(i8* %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %484

112:                                              ; preds = %108
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %113, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i8* @atoi(i8* %118)
  store i8* %119, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 18), align 8
  br label %474

120:                                              ; preds = %100
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %484

132:                                              ; preds = %128
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %133, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @strdup(i8* %138)
  store i8* %139, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 17), align 8
  br label %473

140:                                              ; preds = %120
  %141 = load i8**, i8*** %5, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %140
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %484

152:                                              ; preds = %148
  %153 = load i8**, i8*** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %153, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i8* @strdup(i8* %158)
  store i8* %159, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 16), align 8
  br label %472

160:                                              ; preds = %140
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %189, label %168

168:                                              ; preds = %160
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  br label %484

172:                                              ; preds = %168
  %173 = load i8**, i8*** %5, align 8
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %173, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i8* @atoi(i8* %178)
  %180 = ptrtoint i8* %179 to i32
  store i32 %180, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %182 = icmp slt i32 %181, 1
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  br label %184

184:                                              ; preds = %183, %172
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %186 = icmp sgt i32 %185, 1073741824
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  store i32 1073741824, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  br label %188

188:                                              ; preds = %187, %184
  br label %471

189:                                              ; preds = %160
  %190 = load i8**, i8*** %5, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %214, label %197

197:                                              ; preds = %189
  %198 = load i32, i32* %7, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  br label %484

201:                                              ; preds = %197
  %202 = load i8**, i8*** %5, align 8
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %202, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = call i8* @atoi(i8* %207)
  %209 = ptrtoint i8* %208 to i32
  store i32 %209, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 4
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 4
  %211 = icmp sle i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %201
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 4
  br label %213

213:                                              ; preds = %212, %201
  br label %470

214:                                              ; preds = %189
  %215 = load i8**, i8*** %5, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @strcmp(i8* %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %260, label %222

222:                                              ; preds = %214
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  br label %484

226:                                              ; preds = %222
  %227 = load i8**, i8*** %5, align 8
  %228 = load i32, i32* %6, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %227, i64 %230
  %232 = load i8*, i8** %231, align 8
  store i8* %232, i8** %9, align 8
  %233 = load i8*, i8** %9, align 8
  store i8* %233, i8** %10, align 8
  %234 = load i8*, i8** %10, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 45
  br i1 %237, label %238, label %252

238:                                              ; preds = %226
  %239 = load i8*, i8** %10, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %10, align 8
  %241 = load i8*, i8** %10, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp slt i32 %243, 48
  br i1 %244, label %250, label %245

245:                                              ; preds = %238
  %246 = load i8*, i8** %10, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp sgt i32 %248, 57
  br i1 %249, label %250, label %251

250:                                              ; preds = %245, %238
  br label %484

251:                                              ; preds = %245
  br label %252

252:                                              ; preds = %251, %226
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %253 = load i8*, i8** %9, align 8
  %254 = call i8* @atoi(i8* %253)
  %255 = ptrtoint i8* %254 to i64
  store i64 %255, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  %256 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  %257 = icmp slt i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %252
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  br label %259

259:                                              ; preds = %258, %252
  br label %469

260:                                              ; preds = %214
  %261 = load i8**, i8*** %5, align 8
  %262 = load i32, i32* %6, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @strcmp(i8* %265, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %260
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  br label %468

269:                                              ; preds = %260
  %270 = load i8**, i8*** %5, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8*, i8** %270, i64 %272
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @strcmp(i8* %274, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %269
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 4
  br label %467

278:                                              ; preds = %269
  %279 = load i8**, i8*** %5, align 8
  %280 = load i32, i32* %6, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8*, i8** %279, i64 %281
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @strcmp(i8* %283, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %278
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 8
  br label %466

287:                                              ; preds = %278
  %288 = load i8**, i8*** %5, align 8
  %289 = load i32, i32* %6, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8*, i8** %288, i64 %290
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 @strcmp(i8* %292, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %287
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 7), align 4
  br label %465

296:                                              ; preds = %287
  %297 = load i8**, i8*** %5, align 8
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8*, i8** %297, i64 %299
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @strcmp(i8* %301, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %296
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  br label %464

305:                                              ; preds = %296
  %306 = load i8**, i8*** %5, align 8
  %307 = load i32, i32* %6, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8*, i8** %306, i64 %308
  %310 = load i8*, i8** %309, align 8
  %311 = call i32 @strcmp(i8* %310, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %331, label %313

313:                                              ; preds = %305
  %314 = load i32, i32* %7, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  br label %484

317:                                              ; preds = %313
  %318 = call i8* @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store i8* %318, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 15), align 8
  %319 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 15), align 8
  %320 = load i8**, i8*** %5, align 8
  %321 = load i32, i32* %6, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8*, i8** %320, i64 %323
  %325 = load i8*, i8** %324, align 8
  %326 = call i8* @sdscat(i8* %319, i8* %325)
  store i8* %326, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 15), align 8
  %327 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 15), align 8
  %328 = call i8* @sdscat(i8* %327, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store i8* %328, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 15), align 8
  %329 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 15), align 8
  %330 = call i32 @sdstolower(i8* %329)
  br label %463

331:                                              ; preds = %305
  %332 = load i8**, i8*** %5, align 8
  %333 = load i32, i32* %6, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8*, i8** %332, i64 %334
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 @strcmp(i8* %336, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %353, label %339

339:                                              ; preds = %331
  %340 = load i32, i32* %7, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %339
  br label %484

343:                                              ; preds = %339
  %344 = load i8**, i8*** %5, align 8
  %345 = load i32, i32* %6, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %6, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8*, i8** %344, i64 %347
  %349 = load i8*, i8** %348, align 8
  %350 = call i8* @atoi(i8* %349)
  store i8* %350, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 13), align 8
  %351 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 13), align 8
  %352 = call i32 @sdsfromlonglong(i8* %351)
  store i32 %352, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 14), align 8
  br label %462

353:                                              ; preds = %331
  %354 = load i8**, i8*** %5, align 8
  %355 = load i32, i32* %6, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8*, i8** %354, i64 %356
  %358 = load i8*, i8** %357, align 8
  %359 = call i32 @strcmp(i8* %358, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %384, label %361

361:                                              ; preds = %353
  %362 = load i32, i32* %7, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %361
  br label %484

365:                                              ; preds = %361
  %366 = load i8**, i8*** %5, align 8
  %367 = load i32, i32* %6, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %6, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8*, i8** %366, i64 %369
  %371 = load i8*, i8** %370, align 8
  %372 = call i8* @atoi(i8* %371)
  %373 = ptrtoint i8* %372 to i64
  store i64 %373, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 9), align 8
  %374 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 9), align 8
  %375 = icmp slt i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %365
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 9), align 8
  br label %377

377:                                              ; preds = %376, %365
  %378 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 9), align 8
  %379 = load i64, i64* @MAX_LATENCY_PRECISION, align 8
  %380 = icmp sgt i64 %378, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %377
  %382 = load i64, i64* @MAX_LATENCY_PRECISION, align 8
  store i64 %382, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 9), align 8
  br label %383

383:                                              ; preds = %381, %377
  br label %461

384:                                              ; preds = %353
  %385 = load i8**, i8*** %5, align 8
  %386 = load i32, i32* %6, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8*, i8** %385, i64 %387
  %389 = load i8*, i8** %388, align 8
  %390 = call i32 @strcmp(i8* %389, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %418, label %392

392:                                              ; preds = %384
  %393 = load i32, i32* %7, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %392
  br label %484

396:                                              ; preds = %392
  %397 = load i8**, i8*** %5, align 8
  %398 = load i32, i32* %6, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %6, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8*, i8** %397, i64 %400
  %402 = load i8*, i8** %401, align 8
  %403 = call i8* @atoi(i8* %402)
  %404 = ptrtoint i8* %403 to i64
  store i64 %404, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 10), align 8
  %405 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 10), align 8
  %406 = load i64, i64* @MAX_THREADS, align 8
  %407 = icmp sgt i64 %405, %406
  br i1 %407, label %408, label %412

408:                                              ; preds = %396
  %409 = load i64, i64* @MAX_THREADS, align 8
  %410 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i64 0, i64 0), i64 %409)
  %411 = load i64, i64* @MAX_THREADS, align 8
  store i64 %411, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 10), align 8
  br label %417

412:                                              ; preds = %396
  %413 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 10), align 8
  %414 = icmp slt i64 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %412
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 10), align 8
  br label %416

416:                                              ; preds = %415, %412
  br label %417

417:                                              ; preds = %416, %408
  br label %460

418:                                              ; preds = %384
  %419 = load i8**, i8*** %5, align 8
  %420 = load i32, i32* %6, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8*, i8** %419, i64 %421
  %423 = load i8*, i8** %422, align 8
  %424 = call i32 @strcmp(i8* %423, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %427, label %426

426:                                              ; preds = %418
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 11), align 8
  br label %459

427:                                              ; preds = %418
  %428 = load i8**, i8*** %5, align 8
  %429 = load i32, i32* %6, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8*, i8** %428, i64 %430
  %432 = load i8*, i8** %431, align 8
  %433 = call i32 @strcmp(i8* %432, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %436, label %435

435:                                              ; preds = %427
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 12), align 4
  br label %458

436:                                              ; preds = %427
  %437 = load i8**, i8*** %5, align 8
  %438 = load i32, i32* %6, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8*, i8** %437, i64 %439
  %441 = load i8*, i8** %440, align 8
  %442 = call i32 @strcmp(i8* %441, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %445, label %444

444:                                              ; preds = %436
  store i32 0, i32* %8, align 4
  br label %491

445:                                              ; preds = %436
  %446 = load i8**, i8*** %5, align 8
  %447 = load i32, i32* %6, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8*, i8** %446, i64 %448
  %450 = load i8*, i8** %449, align 8
  %451 = getelementptr inbounds i8, i8* %450, i64 0
  %452 = load i8, i8* %451, align 1
  %453 = sext i8 %452 to i32
  %454 = icmp eq i32 %453, 45
  br i1 %454, label %455, label %456

455:                                              ; preds = %445
  br label %484

456:                                              ; preds = %445
  %457 = load i32, i32* %6, align 4
  store i32 %457, i32* %3, align 4
  br label %495

458:                                              ; preds = %435
  br label %459

459:                                              ; preds = %458, %426
  br label %460

460:                                              ; preds = %459, %417
  br label %461

461:                                              ; preds = %460, %383
  br label %462

462:                                              ; preds = %461, %343
  br label %463

463:                                              ; preds = %462, %317
  br label %464

464:                                              ; preds = %463, %304
  br label %465

465:                                              ; preds = %464, %295
  br label %466

466:                                              ; preds = %465, %286
  br label %467

467:                                              ; preds = %466, %277
  br label %468

468:                                              ; preds = %467, %268
  br label %469

469:                                              ; preds = %468, %259
  br label %470

470:                                              ; preds = %469, %213
  br label %471

471:                                              ; preds = %470, %188
  br label %472

472:                                              ; preds = %471, %152
  br label %473

473:                                              ; preds = %472, %132
  br label %474

474:                                              ; preds = %473, %112
  br label %475

475:                                              ; preds = %474, %92
  br label %476

476:                                              ; preds = %475, %72
  br label %477

477:                                              ; preds = %476, %52
  br label %478

478:                                              ; preds = %477, %32
  br label %479

479:                                              ; preds = %478
  %480 = load i32, i32* %6, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %6, align 4
  br label %11

482:                                              ; preds = %11
  %483 = load i32, i32* %6, align 4
  store i32 %483, i32* %3, align 4
  br label %495

484:                                              ; preds = %455, %395, %364, %342, %316, %250, %225, %200, %171, %151, %131, %111, %91, %71, %51, %31
  %485 = load i8**, i8*** %5, align 8
  %486 = load i32, i32* %6, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i8*, i8** %485, i64 %487
  %489 = load i8*, i8** %488, align 8
  %490 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i64 0, i64 0), i8* %489)
  br label %491

491:                                              ; preds = %484, %444
  %492 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2641 x i8], [2641 x i8]* @.str.25, i64 0, i64 0))
  %493 = load i32, i32* %8, align 4
  %494 = call i32 @exit(i32 %493) #3
  unreachable

495:                                              ; preds = %482, %456
  %496 = load i32, i32* %3, align 4
  ret i32 %496
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i32 @sdstolower(i8*) #1

declare dso_local i32 @sdsfromlonglong(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
