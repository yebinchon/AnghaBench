; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_addReplySentinelRedisInstance.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_addReplySentinelRedisInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32, i32, i8*, i8*, i64, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i8*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"runid\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@SRI_S_DOWN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"s_down,\00", align 1
@SRI_O_DOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"o_down,\00", align 1
@SRI_MASTER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"master,\00", align 1
@SRI_SLAVE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"slave,\00", align 1
@SRI_SENTINEL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"sentinel,\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"disconnected,\00", align 1
@SRI_MASTER_DOWN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"master_down,\00", align 1
@SRI_FAILOVER_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"failover_in_progress,\00", align 1
@SRI_PROMOTED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"promoted,\00", align 1
@SRI_RECONF_SENT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"reconf_sent,\00", align 1
@SRI_RECONF_INPROG = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [15 x i8] c"reconf_inprog,\00", align 1
@SRI_RECONF_DONE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"reconf_done,\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"link-pending-commands\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"link-refcount\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"failover-state\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"last-ping-sent\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"last-ok-ping-reply\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"last-ping-reply\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"s-down-time\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"o-down-time\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"down-after-milliseconds\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"info-refresh\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"role-reported\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"role-reported-time\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"config-epoch\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"num-slaves\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"num-other-sentinels\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"quorum\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"failover-timeout\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"parallel-syncs\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"notification-script\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"client-reconfig-script\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"master-link-down-time\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"master-link-status\00", align 1
@SENTINEL_MASTER_LINK_STATUS_UP = common dso_local global i64 0, align 8
@.str.42 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"master-host\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"master-port\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"slave-priority\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"slave-repl-offset\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"last-hello-message\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"voted-leader\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"voted-leader-epoch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplySentinelRedisInstance(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = call i8* (...) @sdsempty()
  store i8* %8, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @addReplyDeferredLen(i32* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @addReplyBulkCString(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @addReplyBulkCString(i32* %13, i8* %16)
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @addReplyBulkCString(i32* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 28
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @addReplyBulkCString(i32* %22, i8* %27)
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @addReplyBulkCString(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @addReplyBulkLongLong(i32* %33, i64 %38)
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @addReplyBulkCString(i32* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  br label %54

53:                                               ; preds = %2
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i8* [ %52, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %53 ]
  %56 = call i32 @addReplyBulkCString(i32* %44, i8* %55)
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @addReplyBulkCString(i32* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SRI_S_DOWN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load i8*, i8** %5, align 8
  %69 = call i8* @sdscat(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i8* %69, i8** %5, align 8
  br label %70

70:                                               ; preds = %67, %54
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SRI_O_DOWN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i8*, i8** %5, align 8
  %79 = call i8* @sdscat(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i8* %79, i8** %5, align 8
  br label %80

80:                                               ; preds = %77, %70
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SRI_MASTER, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i8*, i8** %5, align 8
  %89 = call i8* @sdscat(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i8* %89, i8** %5, align 8
  br label %90

90:                                               ; preds = %87, %80
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SRI_SLAVE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i8*, i8** %5, align 8
  %99 = call i8* @sdscat(i8* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i8* %99, i8** %5, align 8
  br label %100

100:                                              ; preds = %97, %90
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SRI_SENTINEL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i8*, i8** %5, align 8
  %109 = call i8* @sdscat(i8* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store i8* %109, i8** %5, align 8
  br label %110

110:                                              ; preds = %107, %100
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 26
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i8*, i8** %5, align 8
  %119 = call i8* @sdscat(i8* %118, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  store i8* %119, i8** %5, align 8
  br label %120

120:                                              ; preds = %117, %110
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SRI_MASTER_DOWN, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i8*, i8** %5, align 8
  %129 = call i8* @sdscat(i8* %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i8* %129, i8** %5, align 8
  br label %130

130:                                              ; preds = %127, %120
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @SRI_FAILOVER_IN_PROGRESS, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load i8*, i8** %5, align 8
  %139 = call i8* @sdscat(i8* %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  store i8* %139, i8** %5, align 8
  br label %140

140:                                              ; preds = %137, %130
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @SRI_PROMOTED, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load i8*, i8** %5, align 8
  %149 = call i8* @sdscat(i8* %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  store i8* %149, i8** %5, align 8
  br label %150

150:                                              ; preds = %147, %140
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @SRI_RECONF_SENT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load i8*, i8** %5, align 8
  %159 = call i8* @sdscat(i8* %158, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  store i8* %159, i8** %5, align 8
  br label %160

160:                                              ; preds = %157, %150
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @SRI_RECONF_INPROG, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load i8*, i8** %5, align 8
  %169 = call i8* @sdscat(i8* %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i8* %169, i8** %5, align 8
  br label %170

170:                                              ; preds = %167, %160
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @SRI_RECONF_DONE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i8*, i8** %5, align 8
  %179 = call i8* @sdscat(i8* %178, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  store i8* %179, i8** %5, align 8
  br label %180

180:                                              ; preds = %177, %170
  %181 = load i8*, i8** %5, align 8
  %182 = call i64 @sdslen(i8* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i8*, i8** %5, align 8
  %186 = call i32 @sdsrange(i8* %185, i32 0, i32 -2)
  br label %187

187:                                              ; preds = %184, %180
  %188 = load i32*, i32** %3, align 8
  %189 = load i8*, i8** %5, align 8
  %190 = call i32 @addReplyBulkCString(i32* %188, i8* %189)
  %191 = load i8*, i8** %5, align 8
  %192 = call i32 @sdsfree(i8* %191)
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  %195 = load i32*, i32** %3, align 8
  %196 = call i32 @addReplyBulkCString(i32* %195, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %197 = load i32*, i32** %3, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 26
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @addReplyBulkLongLong(i32* %197, i64 %202)
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  %206 = load i32*, i32** %3, align 8
  %207 = call i32 @addReplyBulkCString(i32* %206, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %208 = load i32*, i32** %3, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 26
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @addReplyBulkLongLong(i32* %208, i64 %213)
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @SRI_FAILOVER_IN_PROGRESS, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %187
  %224 = load i32*, i32** %3, align 8
  %225 = call i32 @addReplyBulkCString(i32* %224, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %226 = load i32*, i32** %3, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 27
  %229 = load i32, i32* %228, align 8
  %230 = call i64 @sentinelFailoverStateStr(i32 %229)
  %231 = inttoptr i64 %230 to i8*
  %232 = call i32 @addReplyBulkCString(i32* %226, i8* %231)
  %233 = load i32, i32* %7, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %223, %187
  %236 = load i32*, i32** %3, align 8
  %237 = call i32 @addReplyBulkCString(i32* %236, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %238 = load i32*, i32** %3, align 8
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 26
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %235
  %246 = call i64 (...) @mstime()
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 26
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = sub nsw i64 %246, %251
  br label %254

253:                                              ; preds = %235
  br label %254

254:                                              ; preds = %253, %245
  %255 = phi i64 [ %252, %245 ], [ 0, %253 ]
  %256 = call i32 @addReplyBulkLongLong(i32* %238, i64 %255)
  %257 = load i32, i32* %7, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %7, align 4
  %259 = load i32*, i32** %3, align 8
  %260 = call i32 @addReplyBulkCString(i32* %259, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %261 = load i32*, i32** %3, align 8
  %262 = call i64 (...) @mstime()
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 26
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = sub nsw i64 %262, %267
  %269 = call i32 @addReplyBulkLongLong(i32* %261, i64 %268)
  %270 = load i32, i32* %7, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %7, align 4
  %272 = load i32*, i32** %3, align 8
  %273 = call i32 @addReplyBulkCString(i32* %272, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  %274 = load i32*, i32** %3, align 8
  %275 = call i64 (...) @mstime()
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 26
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = sub nsw i64 %275, %280
  %282 = call i32 @addReplyBulkLongLong(i32* %274, i64 %281)
  %283 = load i32, i32* %7, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %7, align 4
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @SRI_S_DOWN, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %303

291:                                              ; preds = %254
  %292 = load i32*, i32** %3, align 8
  %293 = call i32 @addReplyBulkCString(i32* %292, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  %294 = load i32*, i32** %3, align 8
  %295 = call i64 (...) @mstime()
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 25
  %298 = load i64, i64* %297, align 8
  %299 = sub nsw i64 %295, %298
  %300 = call i32 @addReplyBulkLongLong(i32* %294, i64 %299)
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %7, align 4
  br label %303

303:                                              ; preds = %291, %254
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @SRI_O_DOWN, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %322

310:                                              ; preds = %303
  %311 = load i32*, i32** %3, align 8
  %312 = call i32 @addReplyBulkCString(i32* %311, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  %313 = load i32*, i32** %3, align 8
  %314 = call i64 (...) @mstime()
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 24
  %317 = load i64, i64* %316, align 8
  %318 = sub nsw i64 %314, %317
  %319 = call i32 @addReplyBulkLongLong(i32* %313, i64 %318)
  %320 = load i32, i32* %7, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %7, align 4
  br label %322

322:                                              ; preds = %310, %303
  %323 = load i32*, i32** %3, align 8
  %324 = call i32 @addReplyBulkCString(i32* %323, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  %325 = load i32*, i32** %3, align 8
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 23
  %328 = load i64, i64* %327, align 8
  %329 = call i32 @addReplyBulkLongLong(i32* %325, i64 %328)
  %330 = load i32, i32* %7, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %7, align 4
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @SRI_MASTER, align 4
  %336 = load i32, i32* @SRI_SLAVE, align 4
  %337 = or i32 %335, %336
  %338 = and i32 %334, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %376

340:                                              ; preds = %322
  %341 = load i32*, i32** %3, align 8
  %342 = call i32 @addReplyBulkCString(i32* %341, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  %343 = load i32*, i32** %3, align 8
  %344 = call i64 (...) @mstime()
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 22
  %347 = load i64, i64* %346, align 8
  %348 = sub nsw i64 %344, %347
  %349 = call i32 @addReplyBulkLongLong(i32* %343, i64 %348)
  %350 = load i32, i32* %7, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %7, align 4
  %352 = load i32*, i32** %3, align 8
  %353 = call i32 @addReplyBulkCString(i32* %352, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  %354 = load i32*, i32** %3, align 8
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @SRI_MASTER, align 4
  %359 = icmp eq i32 %357, %358
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)
  %362 = call i32 @addReplyBulkCString(i32* %354, i8* %361)
  %363 = load i32, i32* %7, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %7, align 4
  %365 = load i32*, i32** %3, align 8
  %366 = call i32 @addReplyBulkCString(i32* %365, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  %367 = load i32*, i32** %3, align 8
  %368 = call i64 (...) @mstime()
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 21
  %371 = load i64, i64* %370, align 8
  %372 = sub nsw i64 %368, %371
  %373 = call i32 @addReplyBulkLongLong(i32* %367, i64 %372)
  %374 = load i32, i32* %7, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %7, align 4
  br label %376

376:                                              ; preds = %340, %322
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @SRI_MASTER, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %470

383:                                              ; preds = %376
  %384 = load i32*, i32** %3, align 8
  %385 = call i32 @addReplyBulkCString(i32* %384, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0))
  %386 = load i32*, i32** %3, align 8
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 20
  %389 = load i64, i64* %388, align 8
  %390 = call i32 @addReplyBulkLongLong(i32* %386, i64 %389)
  %391 = load i32, i32* %7, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %7, align 4
  %393 = load i32*, i32** %3, align 8
  %394 = call i32 @addReplyBulkCString(i32* %393, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  %395 = load i32*, i32** %3, align 8
  %396 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 19
  %398 = load i32, i32* %397, align 4
  %399 = call i64 @dictSize(i32 %398)
  %400 = call i32 @addReplyBulkLongLong(i32* %395, i64 %399)
  %401 = load i32, i32* %7, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %7, align 4
  %403 = load i32*, i32** %3, align 8
  %404 = call i32 @addReplyBulkCString(i32* %403, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0))
  %405 = load i32*, i32** %3, align 8
  %406 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %406, i32 0, i32 18
  %408 = load i32, i32* %407, align 8
  %409 = call i64 @dictSize(i32 %408)
  %410 = call i32 @addReplyBulkLongLong(i32* %405, i64 %409)
  %411 = load i32, i32* %7, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %7, align 4
  %413 = load i32*, i32** %3, align 8
  %414 = call i32 @addReplyBulkCString(i32* %413, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0))
  %415 = load i32*, i32** %3, align 8
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 17
  %418 = load i64, i64* %417, align 8
  %419 = call i32 @addReplyBulkLongLong(i32* %415, i64 %418)
  %420 = load i32, i32* %7, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %7, align 4
  %422 = load i32*, i32** %3, align 8
  %423 = call i32 @addReplyBulkCString(i32* %422, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0))
  %424 = load i32*, i32** %3, align 8
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 16
  %427 = load i64, i64* %426, align 8
  %428 = call i32 @addReplyBulkLongLong(i32* %424, i64 %427)
  %429 = load i32, i32* %7, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %7, align 4
  %431 = load i32*, i32** %3, align 8
  %432 = call i32 @addReplyBulkCString(i32* %431, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0))
  %433 = load i32*, i32** %3, align 8
  %434 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i32 0, i32 15
  %436 = load i64, i64* %435, align 8
  %437 = call i32 @addReplyBulkLongLong(i32* %433, i64 %436)
  %438 = load i32, i32* %7, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %7, align 4
  %440 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %440, i32 0, i32 4
  %442 = load i8*, i8** %441, align 8
  %443 = icmp ne i8* %442, null
  br i1 %443, label %444, label %454

444:                                              ; preds = %383
  %445 = load i32*, i32** %3, align 8
  %446 = call i32 @addReplyBulkCString(i32* %445, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0))
  %447 = load i32*, i32** %3, align 8
  %448 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %448, i32 0, i32 4
  %450 = load i8*, i8** %449, align 8
  %451 = call i32 @addReplyBulkCString(i32* %447, i8* %450)
  %452 = load i32, i32* %7, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %7, align 4
  br label %454

454:                                              ; preds = %444, %383
  %455 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %455, i32 0, i32 5
  %457 = load i8*, i8** %456, align 8
  %458 = icmp ne i8* %457, null
  br i1 %458, label %459, label %469

459:                                              ; preds = %454
  %460 = load i32*, i32** %3, align 8
  %461 = call i32 @addReplyBulkCString(i32* %460, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0))
  %462 = load i32*, i32** %3, align 8
  %463 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %463, i32 0, i32 5
  %465 = load i8*, i8** %464, align 8
  %466 = call i32 @addReplyBulkCString(i32* %462, i8* %465)
  %467 = load i32, i32* %7, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %7, align 4
  br label %469

469:                                              ; preds = %459, %454
  br label %470

470:                                              ; preds = %469, %376
  %471 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %472 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 8
  %474 = load i32, i32* @SRI_SLAVE, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %544

477:                                              ; preds = %470
  %478 = load i32*, i32** %3, align 8
  %479 = call i32 @addReplyBulkCString(i32* %478, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0))
  %480 = load i32*, i32** %3, align 8
  %481 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %481, i32 0, i32 14
  %483 = load i64, i64* %482, align 8
  %484 = call i32 @addReplyBulkLongLong(i32* %480, i64 %483)
  %485 = load i32, i32* %7, align 4
  %486 = add nsw i32 %485, 1
  store i32 %486, i32* %7, align 4
  %487 = load i32*, i32** %3, align 8
  %488 = call i32 @addReplyBulkCString(i32* %487, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0))
  %489 = load i32*, i32** %3, align 8
  %490 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 6
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* @SENTINEL_MASTER_LINK_STATUS_UP, align 8
  %494 = icmp eq i64 %492, %493
  %495 = zext i1 %494 to i64
  %496 = select i1 %494, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0)
  %497 = call i32 @addReplyBulkCString(i32* %489, i8* %496)
  %498 = load i32, i32* %7, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %7, align 4
  %500 = load i32*, i32** %3, align 8
  %501 = call i32 @addReplyBulkCString(i32* %500, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0))
  %502 = load i32*, i32** %3, align 8
  %503 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %503, i32 0, i32 7
  %505 = load i8*, i8** %504, align 8
  %506 = icmp ne i8* %505, null
  br i1 %506, label %507, label %511

507:                                              ; preds = %477
  %508 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %509 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %508, i32 0, i32 7
  %510 = load i8*, i8** %509, align 8
  br label %512

511:                                              ; preds = %477
  br label %512

512:                                              ; preds = %511, %507
  %513 = phi i8* [ %510, %507 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %511 ]
  %514 = call i32 @addReplyBulkCString(i32* %502, i8* %513)
  %515 = load i32, i32* %7, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %7, align 4
  %517 = load i32*, i32** %3, align 8
  %518 = call i32 @addReplyBulkCString(i32* %517, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  %519 = load i32*, i32** %3, align 8
  %520 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %521 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %520, i32 0, i32 13
  %522 = load i64, i64* %521, align 8
  %523 = call i32 @addReplyBulkLongLong(i32* %519, i64 %522)
  %524 = load i32, i32* %7, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %7, align 4
  %526 = load i32*, i32** %3, align 8
  %527 = call i32 @addReplyBulkCString(i32* %526, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0))
  %528 = load i32*, i32** %3, align 8
  %529 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %530 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %529, i32 0, i32 12
  %531 = load i64, i64* %530, align 8
  %532 = call i32 @addReplyBulkLongLong(i32* %528, i64 %531)
  %533 = load i32, i32* %7, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %7, align 4
  %535 = load i32*, i32** %3, align 8
  %536 = call i32 @addReplyBulkCString(i32* %535, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0))
  %537 = load i32*, i32** %3, align 8
  %538 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %539 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %538, i32 0, i32 11
  %540 = load i64, i64* %539, align 8
  %541 = call i32 @addReplyBulkLongLong(i32* %537, i64 %540)
  %542 = load i32, i32* %7, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %7, align 4
  br label %544

544:                                              ; preds = %512, %470
  %545 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %546 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %545, i32 0, i32 2
  %547 = load i32, i32* %546, align 8
  %548 = load i32, i32* @SRI_SENTINEL, align 4
  %549 = and i32 %547, %548
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %589

551:                                              ; preds = %544
  %552 = load i32*, i32** %3, align 8
  %553 = call i32 @addReplyBulkCString(i32* %552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i64 0, i64 0))
  %554 = load i32*, i32** %3, align 8
  %555 = call i64 (...) @mstime()
  %556 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %557 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %556, i32 0, i32 10
  %558 = load i64, i64* %557, align 8
  %559 = sub nsw i64 %555, %558
  %560 = call i32 @addReplyBulkLongLong(i32* %554, i64 %559)
  %561 = load i32, i32* %7, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %7, align 4
  %563 = load i32*, i32** %3, align 8
  %564 = call i32 @addReplyBulkCString(i32* %563, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i64 0, i64 0))
  %565 = load i32*, i32** %3, align 8
  %566 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %567 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %566, i32 0, i32 8
  %568 = load i8*, i8** %567, align 8
  %569 = icmp ne i8* %568, null
  br i1 %569, label %570, label %574

570:                                              ; preds = %551
  %571 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %572 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %571, i32 0, i32 8
  %573 = load i8*, i8** %572, align 8
  br label %575

574:                                              ; preds = %551
  br label %575

575:                                              ; preds = %574, %570
  %576 = phi i8* [ %573, %570 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %574 ]
  %577 = call i32 @addReplyBulkCString(i32* %565, i8* %576)
  %578 = load i32, i32* %7, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %7, align 4
  %580 = load i32*, i32** %3, align 8
  %581 = call i32 @addReplyBulkCString(i32* %580, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0))
  %582 = load i32*, i32** %3, align 8
  %583 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %584 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %583, i32 0, i32 9
  %585 = load i64, i64* %584, align 8
  %586 = call i32 @addReplyBulkLongLong(i32* %582, i64 %585)
  %587 = load i32, i32* %7, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %7, align 4
  br label %589

589:                                              ; preds = %575, %544
  %590 = load i32*, i32** %3, align 8
  %591 = load i8*, i8** %6, align 8
  %592 = load i32, i32* %7, align 4
  %593 = call i32 @setDeferredMapLen(i32* %590, i8* %591, i32 %592)
  ret void
}

declare dso_local i8* @sdsempty(...) #1

declare dso_local i8* @addReplyDeferredLen(i32*) #1

declare dso_local i32 @addReplyBulkCString(i32*, i8*) #1

declare dso_local i32 @addReplyBulkLongLong(i32*, i64) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i32 @sdsrange(i8*, i32, i32) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i64 @sentinelFailoverStateStr(i32) #1

declare dso_local i64 @mstime(...) #1

declare dso_local i64 @dictSize(i32) #1

declare dso_local i32 @setDeferredMapLen(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
