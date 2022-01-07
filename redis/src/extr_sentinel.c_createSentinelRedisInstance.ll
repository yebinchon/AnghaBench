; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sentinel.c_createSentinelRedisInstance.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sentinel.c_createSentinelRedisInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i8*, i32, i32, i8*, i8*, i32*, i32*, i32*, i32*, i64, i32, i64, i64, i32, i64, i64, i32*, i8*, i64, i32*, %struct.TYPE_7__*, i32, i32*, i64, i32, i64, i32*, i64, i32, i32*, i64, i32, i64, i64, i8*, i8*, i8*, i32, i32*, i64, i32* }

@NET_PEER_ID_LEN = common dso_local global i32 0, align 4
@SRI_MASTER = common dso_local global i32 0, align 4
@SRI_SLAVE = common dso_local global i32 0, align 4
@SRI_SENTINEL = common dso_local global i32 0, align 4
@sentinel = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SENTINEL_DEFAULT_DOWN_AFTER = common dso_local global i32 0, align 4
@SENTINEL_DEFAULT_SLAVE_PRIORITY = common dso_local global i32 0, align 4
@SENTINEL_MASTER_LINK_STATUS_DOWN = common dso_local global i32 0, align 4
@instancesDictType = common dso_local global i32 0, align 4
@SENTINEL_DEFAULT_PARALLEL_SYNCS = common dso_local global i32 0, align 4
@renamedCommandsDictType = common dso_local global i32 0, align 4
@SENTINEL_FAILOVER_STATE_NONE = common dso_local global i32 0, align 4
@SENTINEL_DEFAULT_FAILOVER_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @createSentinelRedisInstance(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %13, align 8
  store i32* null, i32** %16, align 8
  %21 = load i32, i32* @NET_PEER_ID_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SRI_MASTER, align 4
  %27 = load i32, i32* @SRI_SLAVE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SRI_SENTINEL, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %25, %30
  %32 = call i32 @serverAssert(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SRI_MASTER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %6
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br label %40

40:                                               ; preds = %37, %6
  %41 = phi i1 [ true, %6 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @serverAssert(i32 %42)
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32* @createSentinelAddr(i8* %44, i32 %45)
  store i32* %46, i32** %15, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %20, align 4
  br label %231

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @SRI_SLAVE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = trunc i64 %22 to i32
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @anetFormatAddr(i8* %24, i32 %56, i8* %57, i32 %58)
  store i8* %24, i8** %8, align 8
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @SRI_MASTER, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sentinel, i32 0, i32 0), align 8
  store i32* %66, i32** %16, align 8
  br label %87

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @SRI_SLAVE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 20
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %16, align 8
  br label %86

76:                                               ; preds = %67
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SRI_SENTINEL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 23
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %16, align 8
  br label %85

85:                                               ; preds = %81, %76
  br label %86

86:                                               ; preds = %85, %72
  br label %87

87:                                               ; preds = %86, %65
  %88 = load i8*, i8** %8, align 8
  %89 = call i8* @sdsnew(i8* %88)
  store i8* %89, i8** %19, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = load i8*, i8** %19, align 8
  %92 = call i64 @dictFind(i32* %90, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32*, i32** %15, align 8
  %96 = call i32 @releaseSentinelAddr(i32* %95)
  %97 = load i8*, i8** %19, align 8
  %98 = call i32 @sdsfree(i8* %97)
  %99 = load i32, i32* @EBUSY, align 4
  store i32 %99, i32* @errno, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %20, align 4
  br label %231

100:                                              ; preds = %87
  %101 = call %struct.TYPE_7__* @zmalloc(i32 328)
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %14, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i8*, i8** %19, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 41
  store i32* null, i32** %109, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 40
  store i64 0, i64* %111, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 39
  store i32* %112, i32** %114, align 8
  %115 = call i32 (...) @createInstanceLink()
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 38
  store i32 %115, i32* %117, align 8
  %118 = call i8* (...) @mstime()
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 37
  store i8* %118, i8** %120, align 8
  %121 = call i8* (...) @mstime()
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 36
  store i8* %121, i8** %123, align 8
  %124 = call i8* (...) @mstime()
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 35
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 34
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 33
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %132 = icmp ne %struct.TYPE_7__* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %100
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 32
  %136 = load i32, i32* %135, align 8
  br label %139

137:                                              ; preds = %100
  %138 = load i32, i32* @SENTINEL_DEFAULT_DOWN_AFTER, align 4
  br label %139

139:                                              ; preds = %137, %133
  %140 = phi i32 [ %136, %133 ], [ %138, %137 ]
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 32
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 31
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 30
  store i32* null, i32** %146, align 8
  %147 = load i32, i32* @SENTINEL_DEFAULT_SLAVE_PRIORITY, align 4
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 29
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 28
  store i64 0, i64* %151, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 27
  store i32* null, i32** %153, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 26
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* @SENTINEL_MASTER_LINK_STATUS_DOWN, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 25
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 24
  store i64 0, i64* %160, align 8
  %161 = call i8* @dictCreate(i32* @instancesDictType, i32* null)
  %162 = bitcast i8* %161 to i32*
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 23
  store i32* %162, i32** %164, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* @SENTINEL_DEFAULT_PARALLEL_SYNCS, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 22
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 21
  store %struct.TYPE_7__* %171, %struct.TYPE_7__** %173, align 8
  %174 = call i8* @dictCreate(i32* @instancesDictType, i32* null)
  %175 = bitcast i8* %174 to i32*
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 20
  store i32* %175, i32** %177, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 19
  store i64 0, i64* %179, align 8
  %180 = call i8* @dictCreate(i32* @renamedCommandsDictType, i32* null)
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 18
  store i8* %180, i8** %182, align 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 17
  store i32* null, i32** %184, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 16
  store i64 0, i64* %186, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 15
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* @SENTINEL_FAILOVER_STATE_NONE, align 4
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 14
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 13
  store i64 0, i64* %193, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 12
  store i64 0, i64* %195, align 8
  %196 = load i32, i32* @SENTINEL_DEFAULT_FAILOVER_TIMEOUT, align 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 11
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 10
  store i64 0, i64* %200, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 9
  store i32* null, i32** %202, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 8
  store i32* null, i32** %204, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 7
  store i32* null, i32** %206, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 6
  store i32* null, i32** %208, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @SRI_MASTER, align 4
  %213 = load i32, i32* @SRI_SLAVE, align 4
  %214 = or i32 %212, %213
  %215 = and i32 %211, %214
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 4
  %218 = call i8* (...) @mstime()
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 5
  store i8* %218, i8** %220, align 8
  %221 = call i8* (...) @mstime()
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 4
  store i8* %221, i8** %223, align 8
  %224 = load i32*, i32** %16, align 8
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %229 = call i32 @dictAdd(i32* %224, i8* %227, %struct.TYPE_7__* %228)
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %230, %struct.TYPE_7__** %7, align 8
  store i32 1, i32* %20, align 4
  br label %231

231:                                              ; preds = %139, %94, %49
  %232 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %232)
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %233
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @serverAssert(i32) #2

declare dso_local i32* @createSentinelAddr(i8*, i32) #2

declare dso_local i32 @anetFormatAddr(i8*, i32, i8*, i32) #2

declare dso_local i8* @sdsnew(i8*) #2

declare dso_local i64 @dictFind(i32*, i8*) #2

declare dso_local i32 @releaseSentinelAddr(i32*) #2

declare dso_local i32 @sdsfree(i8*) #2

declare dso_local %struct.TYPE_7__* @zmalloc(i32) #2

declare dso_local i32 @createInstanceLink(...) #2

declare dso_local i8* @mstime(...) #2

declare dso_local i8* @dictCreate(i32*, i32*) #2

declare dso_local i32 @dictAdd(i32*, i8*, %struct.TYPE_7__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
