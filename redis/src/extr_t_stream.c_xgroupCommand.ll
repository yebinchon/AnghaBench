; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_xgroupCommand.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_xgroupCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i32, i32, i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_46__ = type { i32, %struct.TYPE_42__*, %struct.TYPE_47__** }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_47__ = type { i8* }
%struct.TYPE_44__ = type { i32, %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i64, i64 }
%struct.TYPE_43__ = type { %struct.TYPE_39__ }
%struct.TYPE_45__ = type { %struct.TYPE_44__* }

@.str = private unnamed_addr constant [78 x i8] c"CREATE      <key> <groupname> <id or $> [opt] -- Create a new consumer group.\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"            option MKSTREAM: create the empty stream if it does not exist.\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"SETID       <key> <groupname> <id or $>  -- Set the current group ID.\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"DESTROY     <key> <groupname>            -- Remove the specified group.\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"DELCONSUMER <key> <groupname> <consumer> -- Remove the specified consumer.\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"HELP                                     -- Prints this help.\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"CREATE\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"MKSTREAM\00", align 1
@OBJ_STREAM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [151 x i8] c"The XGROUP subcommand requires the key to exist. Note that for CREATE you may want to use the MKSTREAM option to create an empty stream automatically.\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"SETID\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"DELCONSUMER\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"-NOGROUP No such consumer group '%s' for key name '%s'\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@C_OK = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_40__ zeroinitializer, align 4
@server = common dso_local global %struct.TYPE_41__ zeroinitializer, align 4
@NOTIFY_STREAM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"xgroup-create\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"-BUSYGROUP Consumer Group name already exists\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"xgroup-setid\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"DESTROY\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"xgroup-destroy\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"xgroup-delconsumer\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xgroupCommand(%struct.TYPE_46__* %0) #0 {
  %2 = alloca %struct.TYPE_46__*, align 8
  %3 = alloca [7 x i8*], align 16
  %4 = alloca %struct.TYPE_44__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_43__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_45__*, align 8
  %10 = alloca %struct.TYPE_39__, align 8
  %11 = alloca %struct.TYPE_43__*, align 8
  %12 = alloca %struct.TYPE_39__, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_46__* %0, %struct.TYPE_46__** %2, align 8
  %14 = bitcast [7 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 56, i1 false)
  %15 = bitcast i8* %14 to [7 x i8*]*
  %16 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i32 0, i32 2
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i32 0, i32 0), i8** %18, align 16
  %19 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i32 0, i32 3
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i32 0, i32 0), i8** %19, align 8
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i32 0, i32 4
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i32 0, i32 0), i8** %20, align 16
  %21 = getelementptr inbounds [7 x i8*], [7 x i8*]* %15, i32 0, i32 5
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i32 0, i32 0), i8** %21, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %4, align 8
  store i8* null, i8** %5, align 8
  store %struct.TYPE_43__* null, %struct.TYPE_43__** %6, align 8
  %22 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %24, i64 1
  %26 = load %struct.TYPE_47__*, %struct.TYPE_47__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %29 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %33, label %58

33:                                               ; preds = %1
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcasecmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %40, i64 5
  %42 = load %struct.TYPE_47__*, %struct.TYPE_47__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcasecmp(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %49 = call i32 @addReplySubcommandSyntaxError(%struct.TYPE_46__* %48)
  br label %385

50:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  %51 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %53, i64 3
  %55 = load %struct.TYPE_47__*, %struct.TYPE_47__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %50, %33, %1
  %59 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %61, 4
  br i1 %62, label %63, label %94

63:                                               ; preds = %58
  %64 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_42__*, %struct.TYPE_42__** %65, align 8
  %67 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %69, i64 2
  %71 = load %struct.TYPE_47__*, %struct.TYPE_47__** %70, align 8
  %72 = call %struct.TYPE_45__* @lookupKeyWrite(%struct.TYPE_42__* %66, %struct.TYPE_47__* %71)
  store %struct.TYPE_45__* %72, %struct.TYPE_45__** %9, align 8
  %73 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %74 = icmp ne %struct.TYPE_45__* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %63
  %76 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %77 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %78 = load i32, i32* @OBJ_STREAM, align 4
  %79 = call i64 @checkType(%struct.TYPE_46__* %76, %struct.TYPE_45__* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %385

82:                                               ; preds = %75
  %83 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_44__*, %struct.TYPE_44__** %84, align 8
  store %struct.TYPE_44__* %85, %struct.TYPE_44__** %4, align 8
  br label %86

86:                                               ; preds = %82, %63
  %87 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %89, i64 3
  %91 = load %struct.TYPE_47__*, %struct.TYPE_47__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %5, align 8
  br label %94

94:                                               ; preds = %86, %58
  %95 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %97, 4
  br i1 %98, label %99, label %133

99:                                               ; preds = %94
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %133, label %102

102:                                              ; preds = %99
  %103 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %104 = icmp eq %struct.TYPE_44__* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %107 = call i32 @addReplyError(%struct.TYPE_46__* %106, i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.8, i64 0, i64 0))
  br label %385

108:                                              ; preds = %102
  %109 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = call %struct.TYPE_43__* @streamLookupCG(%struct.TYPE_44__* %109, i8* %110)
  store %struct.TYPE_43__* %111, %struct.TYPE_43__** %6, align 8
  %112 = icmp eq %struct.TYPE_43__* %111, null
  br i1 %112, label %113, label %132

113:                                              ; preds = %108
  %114 = load i8*, i8** %7, align 8
  %115 = call i64 @strcasecmp(i8* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i8*, i8** %7, align 8
  %119 = call i64 @strcasecmp(i8* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %117, %113
  %122 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %123 = load i8*, i8** %5, align 8
  %124 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %126, i64 2
  %128 = load %struct.TYPE_47__*, %struct.TYPE_47__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @addReplyErrorFormat(%struct.TYPE_46__* %122, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i8* %123, i8* %130)
  br label %385

132:                                              ; preds = %117, %108
  br label %133

133:                                              ; preds = %132, %99, %94
  %134 = load i8*, i8** %7, align 8
  %135 = call i64 @strcasecmp(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %232, label %137

137:                                              ; preds = %133
  %138 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 5
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 6
  br i1 %146, label %147, label %232

147:                                              ; preds = %142, %137
  %148 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %150, i64 4
  %152 = load %struct.TYPE_47__*, %struct.TYPE_47__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %147
  %158 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %159 = icmp ne %struct.TYPE_44__* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %161, i32 0, i32 1
  %163 = bitcast %struct.TYPE_39__* %10 to i8*
  %164 = bitcast %struct.TYPE_39__* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 16, i1 false)
  br label %168

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %10, i32 0, i32 1
  store i64 0, i64* %166, align 8
  %167 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %10, i32 0, i32 0
  store i64 0, i64* %167, align 8
  br label %168

168:                                              ; preds = %165, %160
  br label %181

169:                                              ; preds = %147
  %170 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %171 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %173, i64 4
  %175 = load %struct.TYPE_47__*, %struct.TYPE_47__** %174, align 8
  %176 = call i64 @streamParseStrictIDOrReply(%struct.TYPE_46__* %170, %struct.TYPE_47__* %175, %struct.TYPE_39__* %10, i32 0)
  %177 = load i64, i64* @C_OK, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %385

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180, %168
  %182 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %183 = icmp eq %struct.TYPE_44__* %182, null
  br i1 %183, label %184, label %201

184:                                              ; preds = %181
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @serverAssert(i32 %185)
  %187 = call %struct.TYPE_45__* (...) @createStreamObject()
  store %struct.TYPE_45__* %187, %struct.TYPE_45__** %9, align 8
  %188 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_42__*, %struct.TYPE_42__** %189, align 8
  %191 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %193, i64 2
  %195 = load %struct.TYPE_47__*, %struct.TYPE_47__** %194, align 8
  %196 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %197 = call i32 @dbAdd(%struct.TYPE_42__* %190, %struct.TYPE_47__* %195, %struct.TYPE_45__* %196)
  %198 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_44__*, %struct.TYPE_44__** %199, align 8
  store %struct.TYPE_44__* %200, %struct.TYPE_44__** %4, align 8
  br label %201

201:                                              ; preds = %184, %181
  %202 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %203 = load i8*, i8** %5, align 8
  %204 = load i8*, i8** %5, align 8
  %205 = call i32 @sdslen(i8* %204)
  %206 = call %struct.TYPE_43__* @streamCreateCG(%struct.TYPE_44__* %202, i8* %203, i32 %205, %struct.TYPE_39__* %10)
  store %struct.TYPE_43__* %206, %struct.TYPE_43__** %11, align 8
  %207 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %208 = icmp ne %struct.TYPE_43__* %207, null
  br i1 %208, label %209, label %227

209:                                              ; preds = %201
  %210 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @shared, i32 0, i32 2), align 4
  %212 = call i32 @addReply(%struct.TYPE_46__* %210, i32 %211)
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @server, i32 0, i32 0), align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @server, i32 0, i32 0), align 4
  %215 = load i32, i32* @NOTIFY_STREAM, align 4
  %216 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %216, i32 0, i32 2
  %218 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %218, i64 2
  %220 = load %struct.TYPE_47__*, %struct.TYPE_47__** %219, align 8
  %221 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_42__*, %struct.TYPE_42__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @notifyKeyspaceEvent(i32 %215, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_47__* %220, i32 %225)
  br label %231

227:                                              ; preds = %201
  %228 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %229 = call i32 @sdsnew(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0))
  %230 = call i32 @addReplySds(%struct.TYPE_46__* %228, i32 %229)
  br label %231

231:                                              ; preds = %227, %209
  br label %385

232:                                              ; preds = %142, %133
  %233 = load i8*, i8** %7, align 8
  %234 = call i64 @strcasecmp(i8* %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %290, label %236

236:                                              ; preds = %232
  %237 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 5
  br i1 %240, label %241, label %290

241:                                              ; preds = %236
  %242 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %244, i64 4
  %246 = load %struct.TYPE_47__*, %struct.TYPE_47__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %241
  %252 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %252, i32 0, i32 1
  %254 = bitcast %struct.TYPE_39__* %12 to i8*
  %255 = bitcast %struct.TYPE_39__* %253 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %254, i8* align 8 %255, i64 16, i1 false)
  br label %268

256:                                              ; preds = %241
  %257 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %258 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %260, i64 4
  %262 = load %struct.TYPE_47__*, %struct.TYPE_47__** %261, align 8
  %263 = call i64 @streamParseIDOrReply(%struct.TYPE_46__* %257, %struct.TYPE_47__* %262, %struct.TYPE_39__* %12, i32 0)
  %264 = load i64, i64* @C_OK, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %256
  br label %385

267:                                              ; preds = %256
  br label %268

268:                                              ; preds = %267, %251
  %269 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %269, i32 0, i32 0
  %271 = bitcast %struct.TYPE_39__* %270 to i8*
  %272 = bitcast %struct.TYPE_39__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %271, i8* align 8 %272, i64 16, i1 false)
  %273 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %274 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @shared, i32 0, i32 2), align 4
  %275 = call i32 @addReply(%struct.TYPE_46__* %273, i32 %274)
  %276 = load i32, i32* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @server, i32 0, i32 0), align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @server, i32 0, i32 0), align 4
  %278 = load i32, i32* @NOTIFY_STREAM, align 4
  %279 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %279, i32 0, i32 2
  %281 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %281, i64 2
  %283 = load %struct.TYPE_47__*, %struct.TYPE_47__** %282, align 8
  %284 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_42__*, %struct.TYPE_42__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @notifyKeyspaceEvent(i32 %278, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), %struct.TYPE_47__* %283, i32 %288)
  br label %384

290:                                              ; preds = %236, %232
  %291 = load i8*, i8** %7, align 8
  %292 = call i64 @strcasecmp(i8* %291, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %334, label %294

294:                                              ; preds = %290
  %295 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp eq i32 %297, 4
  br i1 %298, label %299, label %334

299:                                              ; preds = %294
  %300 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %301 = icmp ne %struct.TYPE_43__* %300, null
  br i1 %301, label %302, label %329

302:                                              ; preds = %299
  %303 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i8*, i8** %5, align 8
  %307 = load i8*, i8** %5, align 8
  %308 = call i32 @sdslen(i8* %307)
  %309 = call i32 @raxRemove(i32 %305, i8* %306, i32 %308, i32* null)
  %310 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %311 = call i32 @streamFreeCG(%struct.TYPE_43__* %310)
  %312 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %313 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @shared, i32 0, i32 1), align 4
  %314 = call i32 @addReply(%struct.TYPE_46__* %312, i32 %313)
  %315 = load i32, i32* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @server, i32 0, i32 0), align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @server, i32 0, i32 0), align 4
  %317 = load i32, i32* @NOTIFY_STREAM, align 4
  %318 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %318, i32 0, i32 2
  %320 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %320, i64 2
  %322 = load %struct.TYPE_47__*, %struct.TYPE_47__** %321, align 8
  %323 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_42__*, %struct.TYPE_42__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @notifyKeyspaceEvent(i32 %317, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), %struct.TYPE_47__* %322, i32 %327)
  br label %333

329:                                              ; preds = %299
  %330 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %331 = load i32, i32* getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @shared, i32 0, i32 0), align 4
  %332 = call i32 @addReply(%struct.TYPE_46__* %330, i32 %331)
  br label %333

333:                                              ; preds = %329, %302
  br label %383

334:                                              ; preds = %294, %290
  %335 = load i8*, i8** %7, align 8
  %336 = call i64 @strcasecmp(i8* %335, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %370, label %338

338:                                              ; preds = %334
  %339 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = icmp eq i32 %341, 5
  br i1 %342, label %343, label %370

343:                                              ; preds = %338
  %344 = load %struct.TYPE_43__*, %struct.TYPE_43__** %6, align 8
  %345 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %345, i32 0, i32 2
  %347 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %347, i64 4
  %349 = load %struct.TYPE_47__*, %struct.TYPE_47__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = call i64 @streamDelConsumer(%struct.TYPE_43__* %344, i8* %351)
  store i64 %352, i64* %13, align 8
  %353 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %354 = load i64, i64* %13, align 8
  %355 = call i32 @addReplyLongLong(%struct.TYPE_46__* %353, i64 %354)
  %356 = load i32, i32* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @server, i32 0, i32 0), align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* getelementptr inbounds (%struct.TYPE_41__, %struct.TYPE_41__* @server, i32 0, i32 0), align 4
  %358 = load i32, i32* @NOTIFY_STREAM, align 4
  %359 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %360 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %359, i32 0, i32 2
  %361 = load %struct.TYPE_47__**, %struct.TYPE_47__*** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_47__*, %struct.TYPE_47__** %361, i64 2
  %363 = load %struct.TYPE_47__*, %struct.TYPE_47__** %362, align 8
  %364 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %365 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %364, i32 0, i32 1
  %366 = load %struct.TYPE_42__*, %struct.TYPE_42__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @notifyKeyspaceEvent(i32 %358, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), %struct.TYPE_47__* %363, i32 %368)
  br label %382

370:                                              ; preds = %338, %334
  %371 = load i8*, i8** %7, align 8
  %372 = call i64 @strcasecmp(i8* %371, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %370
  %375 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %376 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 0
  %377 = call i32 @addReplyHelp(%struct.TYPE_46__* %375, i8** %376)
  br label %381

378:                                              ; preds = %370
  %379 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %380 = call i32 @addReplySubcommandSyntaxError(%struct.TYPE_46__* %379)
  br label %381

381:                                              ; preds = %378, %374
  br label %382

382:                                              ; preds = %381, %343
  br label %383

383:                                              ; preds = %382, %333
  br label %384

384:                                              ; preds = %383, %268
  br label %385

385:                                              ; preds = %47, %81, %105, %121, %179, %266, %384, %231
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @addReplySubcommandSyntaxError(%struct.TYPE_46__*) #2

declare dso_local %struct.TYPE_45__* @lookupKeyWrite(%struct.TYPE_42__*, %struct.TYPE_47__*) #2

declare dso_local i64 @checkType(%struct.TYPE_46__*, %struct.TYPE_45__*, i32) #2

declare dso_local i32 @addReplyError(%struct.TYPE_46__*, i8*) #2

declare dso_local %struct.TYPE_43__* @streamLookupCG(%struct.TYPE_44__*, i8*) #2

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_46__*, i8*, i8*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @streamParseStrictIDOrReply(%struct.TYPE_46__*, %struct.TYPE_47__*, %struct.TYPE_39__*, i32) #2

declare dso_local i32 @serverAssert(i32) #2

declare dso_local %struct.TYPE_45__* @createStreamObject(...) #2

declare dso_local i32 @dbAdd(%struct.TYPE_42__*, %struct.TYPE_47__*, %struct.TYPE_45__*) #2

declare dso_local %struct.TYPE_43__* @streamCreateCG(%struct.TYPE_44__*, i8*, i32, %struct.TYPE_39__*) #2

declare dso_local i32 @sdslen(i8*) #2

declare dso_local i32 @addReply(%struct.TYPE_46__*, i32) #2

declare dso_local i32 @notifyKeyspaceEvent(i32, i8*, %struct.TYPE_47__*, i32) #2

declare dso_local i32 @addReplySds(%struct.TYPE_46__*, i32) #2

declare dso_local i32 @sdsnew(i8*) #2

declare dso_local i64 @streamParseIDOrReply(%struct.TYPE_46__*, %struct.TYPE_47__*, %struct.TYPE_39__*, i32) #2

declare dso_local i32 @raxRemove(i32, i8*, i32, i32*) #2

declare dso_local i32 @streamFreeCG(%struct.TYPE_43__*) #2

declare dso_local i64 @streamDelConsumer(%struct.TYPE_43__*, i8*) #2

declare dso_local i32 @addReplyLongLong(%struct.TYPE_46__*, i64) #2

declare dso_local i32 @addReplyHelp(%struct.TYPE_46__*, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
