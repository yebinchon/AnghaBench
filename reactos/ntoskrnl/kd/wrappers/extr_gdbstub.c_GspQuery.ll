; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspQuery.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_27__*, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_27__ = type { i8*, i64, %struct.TYPE_25__, %struct.TYPE_22__ }
%struct.TYPE_25__ = type { %struct.TYPE_25__* }
%struct.TYPE_22__ = type { %struct.TYPE_25__* }
%struct.TYPE_21__ = type { %struct.TYPE_25__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@GspOutBuffer = common dso_local global i8* null, align 8
@GspDbgThread = common dso_local global %struct.TYPE_18__* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"fThreadInfo\00", align 1
@GspEnumThread = common dso_local global %struct.TYPE_26__* null, align 8
@PsActiveProcessHead = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@EPROCESS = common dso_local global i32 0, align 4
@ActiveProcessLinks = common dso_local global i32 0, align 4
@ETHREAD = common dso_local global i32 0, align 4
@ThreadListEntry = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"sThreadInfo\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ThreadExtraInfo\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%s [%d:0x%x], \00", align 1
@GspThreadStates = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"Supported\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"PacketSize=%u\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Rcmd,\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GspQuery(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca [64 x i8], align 16
  %17 = alloca %struct.TYPE_27__*, align 8
  store i8* %0, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %1
  %22 = load i8*, i8** @GspOutBuffer, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** @GspOutBuffer, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 81, i8* %25, align 1
  %26 = load i8*, i8** @GspOutBuffer, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 67, i8* %27, align 1
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** @GspDbgThread, align 8
  %29 = icmp ne %struct.TYPE_18__* null, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** @GspDbgThread, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %21
  %37 = call %struct.TYPE_17__* (...) @PsGetCurrentThread()
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @GspLong2Hex(i8** %5, i32 %43)
  br label %257

45:                                               ; preds = %1
  %46 = load i8*, i8** %3, align 8
  %47 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %45
  %50 = load i8*, i8** @GspOutBuffer, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %9, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** @GspEnumThread, align 8
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @PsActiveProcessHead, i32 0, i32 0), align 8
  store %struct.TYPE_25__* %52, %struct.TYPE_25__** %8, align 8
  br label %53

53:                                               ; preds = %79, %49
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %55 = icmp ne %struct.TYPE_25__* %54, @PsActiveProcessHead
  br i1 %55, label %56, label %83

56:                                               ; preds = %53
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %58 = load i32, i32* @EPROCESS, align 4
  %59 = load i32, i32* @ActiveProcessLinks, align 4
  %60 = call i8* @CONTAINING_RECORD(%struct.TYPE_25__* %57, i32 %58, i32 %59)
  %61 = bitcast i8* %60 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %61, %struct.TYPE_27__** %6, align 8
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  store %struct.TYPE_25__* %65, %struct.TYPE_25__** %7, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 2
  %69 = icmp ne %struct.TYPE_25__* %66, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %56
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %73, align 8
  %75 = load i32, i32* @ETHREAD, align 4
  %76 = load i32, i32* @ThreadListEntry, align 4
  %77 = call i8* @CONTAINING_RECORD(%struct.TYPE_25__* %74, i32 %75, i32 %76)
  %78 = bitcast i8* %77 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %78, %struct.TYPE_26__** @GspEnumThread, align 8
  br label %83

79:                                               ; preds = %56
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %81, align 8
  store %struct.TYPE_25__* %82, %struct.TYPE_25__** %8, align 8
  br label %53

83:                                               ; preds = %70, %53
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** @GspEnumThread, align 8
  %85 = icmp ne %struct.TYPE_26__* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i8*, i8** @GspOutBuffer, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 109, i8* %88, align 1
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** @GspEnumThread, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @GspLong2Hex(i8** %9, i32 %94)
  br label %97

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %86
  br label %256

98:                                               ; preds = %45
  %99 = load i8*, i8** %3, align 8
  %100 = call i64 @strncmp(i8* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 11)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %185

102:                                              ; preds = %98
  %103 = load i8*, i8** @GspOutBuffer, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8* %104, i8** %13, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** @GspEnumThread, align 8
  %106 = icmp ne %struct.TYPE_26__* %105, null
  br i1 %106, label %107, label %181

107:                                              ; preds = %102
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** @GspEnumThread, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %109, align 8
  store %struct.TYPE_27__* %110, %struct.TYPE_27__** %10, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** @GspEnumThread, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %113, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 2
  %117 = icmp ne %struct.TYPE_25__* %114, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %107
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** @GspEnumThread, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %121, align 8
  %123 = load i32, i32* @ETHREAD, align 4
  %124 = load i32, i32* @ThreadListEntry, align 4
  %125 = call i8* @CONTAINING_RECORD(%struct.TYPE_25__* %122, i32 %123, i32 %124)
  %126 = bitcast i8* %125 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %126, %struct.TYPE_26__** @GspEnumThread, align 8
  br label %164

127:                                              ; preds = %107
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %14, align 8
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %130, align 8
  store %struct.TYPE_25__* %131, %struct.TYPE_25__** %12, align 8
  br label %132

132:                                              ; preds = %158, %127
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %134 = icmp ne %struct.TYPE_25__* %133, @PsActiveProcessHead
  br i1 %134, label %135, label %162

135:                                              ; preds = %132
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %137 = load i32, i32* @EPROCESS, align 4
  %138 = load i32, i32* @ActiveProcessLinks, align 4
  %139 = call i8* @CONTAINING_RECORD(%struct.TYPE_25__* %136, i32 %137, i32 %138)
  %140 = bitcast i8* %139 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %140, %struct.TYPE_27__** %10, align 8
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %143, align 8
  store %struct.TYPE_25__* %144, %struct.TYPE_25__** %11, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 2
  %148 = icmp ne %struct.TYPE_25__* %145, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %135
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %152, align 8
  %154 = load i32, i32* @ETHREAD, align 4
  %155 = load i32, i32* @ThreadListEntry, align 4
  %156 = call i8* @CONTAINING_RECORD(%struct.TYPE_25__* %153, i32 %154, i32 %155)
  %157 = bitcast i8* %156 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %157, %struct.TYPE_26__** %14, align 8
  br label %162

158:                                              ; preds = %135
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %160, align 8
  store %struct.TYPE_25__* %161, %struct.TYPE_25__** %12, align 8
  br label %132

162:                                              ; preds = %149, %132
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  store %struct.TYPE_26__* %163, %struct.TYPE_26__** @GspEnumThread, align 8
  br label %164

164:                                              ; preds = %162, %118
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** @GspEnumThread, align 8
  %166 = icmp ne %struct.TYPE_26__* %165, null
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load i8*, i8** @GspOutBuffer, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  store i8 109, i8* %169, align 1
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** @GspEnumThread, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @GspLong2Hex(i8** %13, i32 %175)
  br label %180

177:                                              ; preds = %164
  %178 = load i8*, i8** @GspOutBuffer, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  store i8 108, i8* %179, align 1
  br label %180

180:                                              ; preds = %177, %167
  br label %184

181:                                              ; preds = %102
  %182 = load i8*, i8** @GspOutBuffer, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  store i8 108, i8* %183, align 1
  br label %184

184:                                              ; preds = %181, %180
  br label %255

185:                                              ; preds = %98
  %186 = load i8*, i8** %3, align 8
  %187 = call i64 @strncmp(i8* %186, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 15)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %240

189:                                              ; preds = %185
  %190 = load i8*, i8** %3, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 16
  %192 = call i64 @GspFindThread(i8* %191, %struct.TYPE_26__** %15)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %239

194:                                              ; preds = %189
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %196, align 8
  store %struct.TYPE_27__* %197, %struct.TYPE_27__** %17, align 8
  %198 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %198, align 16
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %200 = icmp ne %struct.TYPE_27__* null, %199
  br i1 %200, label %201, label %216

201:                                              ; preds = %194
  %202 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = trunc i64 %208 to i32
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i32
  %215 = call i32 (i8*, i8*, ...) @sprintf(i8* %202, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %205, i32 %209, i32 %214)
  br label %216

216:                                              ; preds = %201, %194
  %217 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %218 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %219 = call i32 @strlen(i8* %218)
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  %222 = load i32*, i32** @GspThreadStates, align 8
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds i32, i32* %222, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @strcpy(i8* %221, i32 %228)
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %231 = call i32 @ObDereferenceObject(%struct.TYPE_26__* %230)
  %232 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %233 = load i8*, i8** @GspOutBuffer, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 0
  %235 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %236 = call i32 @strlen(i8* %235)
  %237 = load i32, i32* @FALSE, align 4
  %238 = call i32 @GspMem2Hex(i8* %232, i8* %234, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %216, %189
  br label %254

240:                                              ; preds = %185
  %241 = load i8*, i8** %3, align 8
  %242 = call i64 @strncmp(i8* %241, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 9)
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = load i8*, i8** @GspOutBuffer, align 8
  %246 = call i32 (i8*, i8*, ...) @sprintf(i8* %245, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 3)
  br label %253

247:                                              ; preds = %240
  %248 = load i8*, i8** %3, align 8
  %249 = call i64 @strncmp(i8* %248, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %247
  br label %252

252:                                              ; preds = %251, %247
  br label %253

253:                                              ; preds = %252, %244
  br label %254

254:                                              ; preds = %253, %239
  br label %255

255:                                              ; preds = %254, %184
  br label %256

256:                                              ; preds = %255, %97
  br label %257

257:                                              ; preds = %256, %42
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_17__* @PsGetCurrentThread(...) #1

declare dso_local i32 @GspLong2Hex(i8**, i32) #1

declare dso_local i8* @CONTAINING_RECORD(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i64 @GspFindThread(i8*, %struct.TYPE_26__**) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ObDereferenceObject(%struct.TYPE_26__*) #1

declare dso_local i32 @GspMem2Hex(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
