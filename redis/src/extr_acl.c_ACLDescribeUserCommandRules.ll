; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLDescribeUserCommandRules.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLDescribeUserCommandRules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i8***, i32, i32 }
%struct.redisCommand = type { i64, i8* }

@.str = private unnamed_addr constant [7 x i8] c"+@all \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"+@all\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-@all \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-@all\00", align 1
@ACLCommandCategories = common dso_local global %struct.TYPE_12__* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"+@\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-@\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [57 x i8] c"CRITICAL ERROR: User ACLs don't match final bitmap: '%s'\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"No bitmap match in ACLDescribeUserCommandRules()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ACLDescribeUserCommandRules(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.redisCommand*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %17 = call i8* (...) @sdsempty()
  store i8* %17, i8** %3, align 8
  %18 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = call i64 @ACLUserCanExecuteFutureCommands(%struct.TYPE_10__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* @sdscat(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %3, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = call i32 @ACLSetUser(%struct.TYPE_10__* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  br label %32

27:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @sdscat(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %29, i8** %3, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = call i32 @ACLSetUser(%struct.TYPE_10__* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  br label %32

32:                                               ; preds = %27, %22
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %88, %32
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ACLCommandCategories, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %91

41:                                               ; preds = %33
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ACLCommandCategories, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @ACLCountCategoryBitsForUser(%struct.TYPE_10__* %42, i64* %8, i64* %9, i8* %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %52, %41
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %59, %52
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %68 = call i8* @sdsnewlen(i8* %67, i32 2)
  store i8* %68, i8** %10, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ACLCommandCategories, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @sdscat(i8* %69, i8* %75)
  store i8* %76, i8** %10, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @ACLSetUser(%struct.TYPE_10__* %77, i8* %78, i32 -1)
  %80 = load i8*, i8** %3, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = call i8* @sdscatsds(i8* %80, i8* %81)
  store i8* %82, i8** %3, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i8* @sdscatlen(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i8* %84, i8** %3, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @sdsfree(i8* %85)
  br label %87

87:                                               ; preds = %63, %59, %56
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %33

91:                                               ; preds = %33
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 4
  %93 = call i32* @dictGetIterator(i32 %92)
  store i32* %93, i32** %11, align 8
  br label %94

94:                                               ; preds = %197, %91
  %95 = load i32*, i32** %11, align 8
  %96 = call i32* @dictNext(i32* %95)
  store i32* %96, i32** %12, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %198

98:                                               ; preds = %94
  %99 = load i32*, i32** %12, align 8
  %100 = call %struct.redisCommand* @dictGetVal(i32* %99)
  store %struct.redisCommand* %100, %struct.redisCommand** %13, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %102 = load %struct.redisCommand*, %struct.redisCommand** %13, align 8
  %103 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @ACLGetUserCommandBit(%struct.TYPE_10__* %101, i64 %104)
  store i32 %105, i32* %14, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = load %struct.redisCommand*, %struct.redisCommand** %13, align 8
  %108 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @ACLGetUserCommandBit(%struct.TYPE_10__* %106, i64 %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %98
  %115 = load i8*, i8** %3, align 8
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %120 = call i8* @sdscatlen(i8* %115, i8* %119, i32 1)
  store i8* %120, i8** %3, align 8
  %121 = load i8*, i8** %3, align 8
  %122 = load %struct.redisCommand*, %struct.redisCommand** %13, align 8
  %123 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i8* @sdscat(i8* %121, i8* %124)
  store i8* %125, i8** %3, align 8
  %126 = load i8*, i8** %3, align 8
  %127 = call i8* @sdscatlen(i8* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i8* %127, i8** %3, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = load %struct.redisCommand*, %struct.redisCommand** %13, align 8
  %130 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @ACLSetUserCommandBit(%struct.TYPE_10__* %128, i64 %131, i32 %132)
  br label %134

134:                                              ; preds = %114, %98
  %135 = load i32, i32* %14, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %197

137:                                              ; preds = %134
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i8***, i8**** %139, align 8
  %141 = icmp ne i8*** %140, null
  br i1 %141, label %142, label %197

142:                                              ; preds = %137
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i8***, i8**** %144, align 8
  %146 = load %struct.redisCommand*, %struct.redisCommand** %13, align 8
  %147 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i8**, i8*** %145, i64 %148
  %150 = load i8**, i8*** %149, align 8
  %151 = icmp ne i8** %150, null
  br i1 %151, label %152, label %197

152:                                              ; preds = %142
  store i32 0, i32* %16, align 4
  br label %153

153:                                              ; preds = %193, %152
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i8***, i8**** %155, align 8
  %157 = load %struct.redisCommand*, %struct.redisCommand** %13, align 8
  %158 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i8**, i8*** %156, i64 %159
  %161 = load i8**, i8*** %160, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %196

167:                                              ; preds = %153
  %168 = load i8*, i8** %3, align 8
  %169 = call i8* @sdscatlen(i8* %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 1)
  store i8* %169, i8** %3, align 8
  %170 = load i8*, i8** %3, align 8
  %171 = load %struct.redisCommand*, %struct.redisCommand** %13, align 8
  %172 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = call i8* @sdscat(i8* %170, i8* %173)
  store i8* %174, i8** %3, align 8
  %175 = load i8*, i8** %3, align 8
  %176 = call i8* @sdscatlen(i8* %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 1)
  store i8* %176, i8** %3, align 8
  %177 = load i8*, i8** %3, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i8***, i8**** %179, align 8
  %181 = load %struct.redisCommand*, %struct.redisCommand** %13, align 8
  %182 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i8**, i8*** %180, i64 %183
  %185 = load i8**, i8*** %184, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = call i8* @sdscatsds(i8* %177, i8* %189)
  store i8* %190, i8** %3, align 8
  %191 = load i8*, i8** %3, align 8
  %192 = call i8* @sdscatlen(i8* %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i8* %192, i8** %3, align 8
  br label %193

193:                                              ; preds = %167
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %16, align 4
  br label %153

196:                                              ; preds = %153
  br label %197

197:                                              ; preds = %196, %142, %137, %134
  br label %94

198:                                              ; preds = %94
  %199 = load i32*, i32** %11, align 8
  %200 = call i32 @dictReleaseIterator(i32* %199)
  %201 = load i8*, i8** %3, align 8
  %202 = call i32 @sdsrange(i8* %201, i32 0, i32 -2)
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @memcmp(i32 %205, i32 %208, i32 4)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %198
  %212 = load i32, i32* @LL_WARNING, align 4
  %213 = load i8*, i8** %3, align 8
  %214 = call i32 @serverLog(i32 %212, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i8* %213)
  %215 = call i32 @serverPanic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  br label %216

216:                                              ; preds = %211, %198
  %217 = load i8*, i8** %3, align 8
  ret i8* %217
}

declare dso_local i8* @sdsempty(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @ACLUserCanExecuteFutureCommands(%struct.TYPE_10__*) #1

declare dso_local i8* @sdscat(i8*, i8*) #1

declare dso_local i32 @ACLSetUser(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @ACLCountCategoryBitsForUser(%struct.TYPE_10__*, i64*, i64*, i8*) #1

declare dso_local i8* @sdsnewlen(i8*, i32) #1

declare dso_local i8* @sdscatsds(i8*, i8*) #1

declare dso_local i8* @sdscatlen(i8*, i8*, i32) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local %struct.redisCommand* @dictGetVal(i32*) #1

declare dso_local i32 @ACLGetUserCommandBit(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @ACLSetUserCommandBit(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @sdsrange(i8*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @serverLog(i32, i8*, i8*) #1

declare dso_local i32 @serverPanic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
