; ModuleID = '/home/carl/AnghaBench/redis/src/extr_server.c_createSharedObjects.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_server.c_createSharedObjects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8**, i8**, %struct.TYPE_4__**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@OBJ_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@shared = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"+OK\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-ERR\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"$0\0D\0A\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c":0\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c":1\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"*0\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"+PONG\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"+QUEUED\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"*2\0D\0A$1\0D\0A0\0D\0A*0\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [69 x i8] c"-WRONGTYPE Operation against a key holding the wrong kind of value\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"-ERR no such key\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"-ERR syntax error\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"-ERR source and destination objects are the same\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"-ERR index out of range\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"-NOSCRIPT No matching script. Please use EVAL.\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"-LOADING Redis is loading the dataset in memory\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [90 x i8] c"-BUSY Redis is busy running a script. You can only call SCRIPT KILL or SHUTDOWN NOSAVE.\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [84 x i8] c"-MASTERDOWN Link with MASTER is down and replica-serve-stale-data is set to 'no'.\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [347 x i8] c"-MISCONF Redis is configured to save RDB snapshots, but it is currently not able to persist on disk. Commands that may modify the data set are disabled, because this instance is configured to report errors during writes if RDB snapshotting fails (stop-writes-on-bgsave-error option). Please check the Redis logs for details about the RDB error.\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"-READONLY You can't write against a read only replica.\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"-NOAUTH Authentication required.\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [59 x i8] c"-OOM command not allowed when used memory > 'maxmemory'.\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"-EXECABORT Transaction discarded because of previous errors.\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"-NOREPLICAS Not enough good replicas to write.\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"-BUSYKEY Target key name already exists.\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"$-1\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"_\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"*-1\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%0\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"~0\0D\0A\00", align 1
@PROTO_SHARED_SELECT_CMDS = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [26 x i8] c"*2\0D\0A$6\0D\0ASELECT\0D\0A$%d\0D\0A%s\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"$7\0D\0Amessage\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"$8\0D\0Apmessage\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"$9\0D\0Asubscribe\0D\0A\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"$11\0D\0Aunsubscribe\0D\0A\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"$10\0D\0Apsubscribe\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"$12\0D\0Apunsubscribe\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"UNLINK\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"RPOP\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"LPOP\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"LPUSH\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"RPOPLPUSH\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"ZPOPMIN\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"ZPOPMAX\00", align 1
@OBJ_SHARED_INTEGERS = common dso_local global i32 0, align 4
@OBJ_ENCODING_INT = common dso_local global i32 0, align 4
@OBJ_SHARED_BULKHDR_LEN = common dso_local global i32 0, align 4
@.str.49 = private unnamed_addr constant [6 x i8] c"*%d\0D\0A\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"$%d\0D\0A\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"minstring\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"maxstring\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createSharedObjects() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32, align 4
  %4 = load i32, i32* @OBJ_STRING, align 4
  %5 = call i8* @sdsnew(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %6 = call i8* @createObject(i32 %4, i8* %5)
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 52), align 8
  %7 = load i32, i32* @OBJ_STRING, align 4
  %8 = call i8* @sdsnew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i8* @createObject(i32 %7, i8* %8)
  store i8* %9, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 51), align 8
  %10 = load i32, i32* @OBJ_STRING, align 4
  %11 = call i8* @sdsnew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i8* @createObject(i32 %10, i8* %11)
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 50), align 8
  %13 = load i32, i32* @OBJ_STRING, align 4
  %14 = call i8* @sdsnew(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %15 = call i8* @createObject(i32 %13, i8* %14)
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 49), align 8
  %16 = load i32, i32* @OBJ_STRING, align 4
  %17 = call i8* @sdsnew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i8* @createObject(i32 %16, i8* %17)
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 48), align 8
  %19 = load i32, i32* @OBJ_STRING, align 4
  %20 = call i8* @sdsnew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i8* @createObject(i32 %19, i8* %20)
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 47), align 8
  %22 = load i32, i32* @OBJ_STRING, align 4
  %23 = call i8* @sdsnew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %24 = call i8* @createObject(i32 %22, i8* %23)
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 46), align 8
  %25 = load i32, i32* @OBJ_STRING, align 4
  %26 = call i8* @sdsnew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %27 = call i8* @createObject(i32 %25, i8* %26)
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 45), align 8
  %28 = load i32, i32* @OBJ_STRING, align 4
  %29 = call i8* @sdsnew(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %30 = call i8* @createObject(i32 %28, i8* %29)
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 44), align 8
  %31 = load i32, i32* @OBJ_STRING, align 4
  %32 = call i8* @sdsnew(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %33 = call i8* @createObject(i32 %31, i8* %32)
  store i8* %33, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 43), align 8
  %34 = load i32, i32* @OBJ_STRING, align 4
  %35 = call i8* @sdsnew(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.10, i64 0, i64 0))
  %36 = call i8* @createObject(i32 %34, i8* %35)
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 42), align 8
  %37 = load i32, i32* @OBJ_STRING, align 4
  %38 = call i8* @sdsnew(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %39 = call i8* @createObject(i32 %37, i8* %38)
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 41), align 8
  %40 = load i32, i32* @OBJ_STRING, align 4
  %41 = call i8* @sdsnew(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %42 = call i8* @createObject(i32 %40, i8* %41)
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 40), align 8
  %43 = load i32, i32* @OBJ_STRING, align 4
  %44 = call i8* @sdsnew(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  %45 = call i8* @createObject(i32 %43, i8* %44)
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 39), align 8
  %46 = load i32, i32* @OBJ_STRING, align 4
  %47 = call i8* @sdsnew(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %48 = call i8* @createObject(i32 %46, i8* %47)
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 38), align 8
  %49 = load i32, i32* @OBJ_STRING, align 4
  %50 = call i8* @sdsnew(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0))
  %51 = call i8* @createObject(i32 %49, i8* %50)
  store i8* %51, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 37), align 8
  %52 = load i32, i32* @OBJ_STRING, align 4
  %53 = call i8* @sdsnew(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %54 = call i8* @createObject(i32 %52, i8* %53)
  store i8* %54, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 36), align 8
  %55 = load i32, i32* @OBJ_STRING, align 4
  %56 = call i8* @sdsnew(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.17, i64 0, i64 0))
  %57 = call i8* @createObject(i32 %55, i8* %56)
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 35), align 8
  %58 = load i32, i32* @OBJ_STRING, align 4
  %59 = call i8* @sdsnew(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.18, i64 0, i64 0))
  %60 = call i8* @createObject(i32 %58, i8* %59)
  store i8* %60, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 34), align 8
  %61 = load i32, i32* @OBJ_STRING, align 4
  %62 = call i8* @sdsnew(i8* getelementptr inbounds ([347 x i8], [347 x i8]* @.str.19, i64 0, i64 0))
  %63 = call i8* @createObject(i32 %61, i8* %62)
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 33), align 8
  %64 = load i32, i32* @OBJ_STRING, align 4
  %65 = call i8* @sdsnew(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.20, i64 0, i64 0))
  %66 = call i8* @createObject(i32 %64, i8* %65)
  store i8* %66, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 32), align 8
  %67 = load i32, i32* @OBJ_STRING, align 4
  %68 = call i8* @sdsnew(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0))
  %69 = call i8* @createObject(i32 %67, i8* %68)
  store i8* %69, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 31), align 8
  %70 = load i32, i32* @OBJ_STRING, align 4
  %71 = call i8* @sdsnew(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.22, i64 0, i64 0))
  %72 = call i8* @createObject(i32 %70, i8* %71)
  store i8* %72, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 30), align 8
  %73 = load i32, i32* @OBJ_STRING, align 4
  %74 = call i8* @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0))
  %75 = call i8* @createObject(i32 %73, i8* %74)
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 29), align 8
  %76 = load i32, i32* @OBJ_STRING, align 4
  %77 = call i8* @sdsnew(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.24, i64 0, i64 0))
  %78 = call i8* @createObject(i32 %76, i8* %77)
  store i8* %78, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 28), align 8
  %79 = load i32, i32* @OBJ_STRING, align 4
  %80 = call i8* @sdsnew(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0))
  %81 = call i8* @createObject(i32 %79, i8* %80)
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 27), align 8
  %82 = load i32, i32* @OBJ_STRING, align 4
  %83 = call i8* @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %84 = call i8* @createObject(i32 %82, i8* %83)
  store i8* %84, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 26), align 8
  %85 = load i32, i32* @OBJ_STRING, align 4
  %86 = call i8* @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  %87 = call i8* @createObject(i32 %85, i8* %86)
  store i8* %87, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 25), align 8
  %88 = load i32, i32* @OBJ_STRING, align 4
  %89 = call i8* @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %90 = call i8* @createObject(i32 %88, i8* %89)
  store i8* %90, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 24), align 8
  %91 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 23), align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  store i32* null, i32** %92, align 8
  %93 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 23), align 8
  %94 = getelementptr inbounds i32*, i32** %93, i64 1
  store i32* null, i32** %94, align 8
  %95 = load i32, i32* @OBJ_STRING, align 4
  %96 = call i8* @sdsnew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0))
  %97 = call i8* @createObject(i32 %95, i8* %96)
  %98 = bitcast i8* %97 to i32*
  %99 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 23), align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 2
  store i32* %98, i32** %100, align 8
  %101 = load i32, i32* @OBJ_STRING, align 4
  %102 = call i8* @sdsnew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  %103 = call i8* @createObject(i32 %101, i8* %102)
  %104 = bitcast i8* %103 to i32*
  %105 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 23), align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 3
  store i32* %104, i32** %106, align 8
  %107 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 22), align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 0
  store i32* null, i32** %108, align 8
  %109 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 22), align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 1
  store i32* null, i32** %110, align 8
  %111 = load i32, i32* @OBJ_STRING, align 4
  %112 = call i8* @sdsnew(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  %113 = call i8* @createObject(i32 %111, i8* %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 22), align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 2
  store i32* %114, i32** %116, align 8
  %117 = load i32, i32* @OBJ_STRING, align 4
  %118 = call i8* @sdsnew(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  %119 = call i8* @createObject(i32 %117, i8* %118)
  %120 = bitcast i8* %119 to i32*
  %121 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 22), align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 3
  store i32* %120, i32** %122, align 8
  %123 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 21), align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 0
  store i32* null, i32** %124, align 8
  %125 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 21), align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 1
  store i32* null, i32** %126, align 8
  %127 = load i32, i32* @OBJ_STRING, align 4
  %128 = call i8* @sdsnew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %129 = call i8* @createObject(i32 %127, i8* %128)
  %130 = bitcast i8* %129 to i32*
  %131 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 21), align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 2
  store i32* %130, i32** %132, align 8
  %133 = load i32, i32* @OBJ_STRING, align 4
  %134 = call i8* @sdsnew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %135 = call i8* @createObject(i32 %133, i8* %134)
  %136 = bitcast i8* %135 to i32*
  %137 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 21), align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 3
  store i32* %136, i32** %138, align 8
  %139 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 20), align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 0
  store i32* null, i32** %140, align 8
  %141 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 20), align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 1
  store i32* null, i32** %142, align 8
  %143 = load i32, i32* @OBJ_STRING, align 4
  %144 = call i8* @sdsnew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %145 = call i8* @createObject(i32 %143, i8* %144)
  %146 = bitcast i8* %145 to i32*
  %147 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 20), align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 2
  store i32* %146, i32** %148, align 8
  %149 = load i32, i32* @OBJ_STRING, align 4
  %150 = call i8* @sdsnew(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %151 = call i8* @createObject(i32 %149, i8* %150)
  %152 = bitcast i8* %151 to i32*
  %153 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 20), align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 3
  store i32* %152, i32** %154, align 8
  store i32 0, i32* %1, align 4
  br label %155

155:                                              ; preds = %173, %0
  %156 = load i32, i32* %1, align 4
  %157 = load i32, i32* @PROTO_SHARED_SELECT_CMDS, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %176

159:                                              ; preds = %155
  %160 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %161 = load i32, i32* %1, align 4
  %162 = call i32 @ll2string(i8* %160, i32 64, i32 %161)
  store i32 %162, i32* %3, align 4
  %163 = load i32, i32* @OBJ_STRING, align 4
  %164 = call i32 (...) @sdsempty()
  %165 = load i32, i32* %3, align 4
  %166 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %167 = call i8* (i32, i8*, i32, ...) @sdscatprintf(i32 %164, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i64 0, i64 0), i32 %165, i8* %166)
  %168 = call i8* @createObject(i32 %163, i8* %167)
  %169 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 19), align 8
  %170 = load i32, i32* %1, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  store i8* %168, i8** %172, align 8
  br label %173

173:                                              ; preds = %159
  %174 = load i32, i32* %1, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %1, align 4
  br label %155

176:                                              ; preds = %155
  %177 = call i8* @createStringObject(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i32 13)
  store i8* %177, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 18), align 8
  %178 = call i8* @createStringObject(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i32 14)
  store i8* %178, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 17), align 8
  %179 = call i8* @createStringObject(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i64 0, i64 0), i32 15)
  store i8* %179, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 16), align 8
  %180 = call i8* @createStringObject(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i32 18)
  store i8* %180, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 15), align 8
  %181 = call i8* @createStringObject(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0), i32 17)
  store i8* %181, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 14), align 8
  %182 = call i8* @createStringObject(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0), i32 19)
  store i8* %182, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 13), align 8
  %183 = call i8* @createStringObject(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i32 3)
  store i8* %183, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 12), align 8
  %184 = call i8* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i32 6)
  store i8* %184, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 11), align 8
  %185 = call i8* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 4)
  store i8* %185, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 10), align 8
  %186 = call i8* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i32 4)
  store i8* %186, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 9), align 8
  %187 = call i8* @createStringObject(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i32 5)
  store i8* %187, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 8), align 8
  %188 = call i8* @createStringObject(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0), i32 9)
  store i8* %188, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 7), align 8
  %189 = call i8* @createStringObject(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i32 7)
  store i8* %189, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 6), align 8
  %190 = call i8* @createStringObject(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0), i32 7)
  store i8* %190, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 5), align 8
  store i32 0, i32* %1, align 4
  br label %191

191:                                              ; preds = %213, %176
  %192 = load i32, i32* %1, align 4
  %193 = load i32, i32* @OBJ_SHARED_INTEGERS, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %216

195:                                              ; preds = %191
  %196 = load i32, i32* @OBJ_STRING, align 4
  %197 = load i32, i32* %1, align 4
  %198 = sext i32 %197 to i64
  %199 = inttoptr i64 %198 to i8*
  %200 = call i8* @createObject(i32 %196, i8* %199)
  %201 = call %struct.TYPE_4__* @makeObjectShared(i8* %200)
  %202 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 4), align 8
  %203 = load i32, i32* %1, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %202, i64 %204
  store %struct.TYPE_4__* %201, %struct.TYPE_4__** %205, align 8
  %206 = load i32, i32* @OBJ_ENCODING_INT, align 4
  %207 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 4), align 8
  %208 = load i32, i32* %1, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %207, i64 %209
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  store i32 %206, i32* %212, align 4
  br label %213

213:                                              ; preds = %195
  %214 = load i32, i32* %1, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %1, align 4
  br label %191

216:                                              ; preds = %191
  store i32 0, i32* %1, align 4
  br label %217

217:                                              ; preds = %240, %216
  %218 = load i32, i32* %1, align 4
  %219 = load i32, i32* @OBJ_SHARED_BULKHDR_LEN, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %243

221:                                              ; preds = %217
  %222 = load i32, i32* @OBJ_STRING, align 4
  %223 = call i32 (...) @sdsempty()
  %224 = load i32, i32* %1, align 4
  %225 = call i8* (i32, i8*, i32, ...) @sdscatprintf(i32 %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i32 %224)
  %226 = call i8* @createObject(i32 %222, i8* %225)
  %227 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 3), align 8
  %228 = load i32, i32* %1, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  store i8* %226, i8** %230, align 8
  %231 = load i32, i32* @OBJ_STRING, align 4
  %232 = call i32 (...) @sdsempty()
  %233 = load i32, i32* %1, align 4
  %234 = call i8* (i32, i8*, i32, ...) @sdscatprintf(i32 %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i32 %233)
  %235 = call i8* @createObject(i32 %231, i8* %234)
  %236 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 2), align 8
  %237 = load i32, i32* %1, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  store i8* %235, i8** %239, align 8
  br label %240

240:                                              ; preds = %221
  %241 = load i32, i32* %1, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %1, align 4
  br label %217

243:                                              ; preds = %217
  %244 = call i8* @sdsnew(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0))
  store i8* %244, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 1), align 8
  %245 = call i8* @sdsnew(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0))
  store i8* %245, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @shared, i32 0, i32 0), align 8
  ret void
}

declare dso_local i8* @createObject(i32, i8*) #1

declare dso_local i8* @sdsnew(i8*) #1

declare dso_local i32 @ll2string(i8*, i32, i32) #1

declare dso_local i8* @sdscatprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i8* @createStringObject(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @makeObjectShared(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
