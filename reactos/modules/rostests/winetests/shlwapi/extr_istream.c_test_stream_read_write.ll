; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_istream.c_test_stream_read_write.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_istream.c_test_stream_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*, i8*, i32, i32*)*, i32 (%struct.TYPE_16__*, i32, i32, i32*)*, i32 (%struct.TYPE_16__*, i8*, i32, i32*)* }
%struct.TYPE_15__ = type { i32* }

@test_stream_read_write.start = internal constant i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"^\A7\00", align 1
@STGM_WRITE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"IStream_Write error %#x (access %#x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"expected 2, got %u\0A\00", align 1
@STG_E_ACCESSDENIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"expected STG_E_ACCESSDENIED, got %#x (access %#x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"expected 0xdeadbeaf, got %#x\0A\00", align 1
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Seek error %#x\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"IStream_Read error %#x (access %#x, written %u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"expected 5ea7, got %02x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"expected 0, got %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"expected S_FALSE, got %#x (access %#x, written %u)\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"expected %u, got %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Stat failed, hr %#x.\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Unexpected name %s.\0A\00", align 1
@STATFLAG_NONAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i32)* @test_stream_read_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_stream_read_write(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -559038801, i32* %7, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_16__*, i8*, i32, i32*)*, i32 (%struct.TYPE_16__*, i8*, i32, i32*)** %13, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = call i32 %14(%struct.TYPE_16__* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32* %7)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @STGM_WRITE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @STGM_READWRITE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @S_OK, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i32, i8*, i32, ...) @ok(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %72

37:                                               ; preds = %20
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @STG_E_ACCESSDENIED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @S_OK, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @broken(i32 %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %41, %37
  %49 = phi i1 [ true, %37 ], [ %47, %41 ]
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i32, i8*, i32, ...) @ok(i32 %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, -559038801
  br i1 %55, label %62, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 2
  %59 = zext i1 %58 to i32
  %60 = call i64 @broken(i32 %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %56, %48
  %63 = phi i1 [ true, %48 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32, i8*, i32, ...) @ok(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  store i32 0, i32* %7, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @S_OK, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %294

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %24
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_16__*, i32, i32, i32*)*, i32 (%struct.TYPE_16__*, i32, i32, i32*)** %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = load i32, i32* @test_stream_read_write.start, align 4
  %80 = load i32, i32* @STREAM_SEEK_SET, align 4
  %81 = call i32 %77(%struct.TYPE_16__* %78, i32 %79, i32 %80, i32* null)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @S_OK, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (i32, i8*, i32, ...) @ok(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  store i32 -559038801, i32* %8, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load i32 (%struct.TYPE_16__*, i8*, i32, i32*)*, i32 (%struct.TYPE_16__*, i8*, i32, i32*)** %91, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %95 = call i32 %92(%struct.TYPE_16__* %93, i8* %94, i32 2, i32* %8)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %159

98:                                               ; preds = %72
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @S_OK, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @S_FALSE, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i64 @broken(i32 %106)
  %108 = icmp ne i64 %107, 0
  br label %109

109:                                              ; preds = %102, %98
  %110 = phi i1 [ true, %98 ], [ %108, %102 ]
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 (i32, i8*, i32, ...) @ok(i32 %111, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @S_OK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %152

119:                                              ; preds = %109
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @STGM_WRITE, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @STGM_READWRITE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %152

127:                                              ; preds = %123, %119
  %128 = load i32, i32* %8, align 4
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %8, align 4
  %132 = call i32 (i32, i8*, i32, ...) @ok(i32 %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %134 = load i8, i8* %133, align 16
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %135, 94
  br i1 %136, label %137, label %142

137:                                              ; preds = %127
  %138 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %140, 167
  br label %142

142:                                              ; preds = %137, %127
  %143 = phi i1 [ false, %127 ], [ %141, %137 ]
  %144 = zext i1 %143 to i32
  %145 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %146 = load i8, i8* %145, align 16
  %147 = zext i8 %146 to i32
  %148 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = call i32 (i32, i8*, i32, ...) @ok(i32 %144, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %147, i32 %150)
  br label %158

152:                                              ; preds = %123, %109
  %153 = load i32, i32* %8, align 4
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = load i32, i32* %8, align 4
  %157 = call i32 (i32, i8*, i32, ...) @ok(i32 %155, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %152, %142
  br label %173

159:                                              ; preds = %72
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @S_FALSE, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 (i32, i8*, i32, ...) @ok(i32 %163, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* %8, align 4
  %169 = icmp eq i32 %168, 0
  %170 = zext i1 %169 to i32
  %171 = load i32, i32* %8, align 4
  %172 = call i32 (i32, i8*, i32, ...) @ok(i32 %170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %159, %158
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load i32 (%struct.TYPE_16__*, i32, i32, i32*)*, i32 (%struct.TYPE_16__*, i32, i32, i32*)** %177, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %180 = load i32, i32* @test_stream_read_write.start, align 4
  %181 = load i32, i32* @STREAM_SEEK_SET, align 4
  %182 = call i32 %178(%struct.TYPE_16__* %179, i32 %180, i32 %181, i32* null)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* @S_OK, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %5, align 4
  %188 = call i32 (i32, i8*, i32, ...) @ok(i32 %186, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %187)
  store i32 -559038801, i32* %8, align 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 2
  %193 = load i32 (%struct.TYPE_16__*, i8*, i32, i32*)*, i32 (%struct.TYPE_16__*, i8*, i32, i32*)** %192, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %195 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %196 = call i32 %193(%struct.TYPE_16__* %194, i8* %195, i32 0, i32* %8)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* @S_OK, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i32 (i32, i8*, i32, ...) @ok(i32 %200, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %201, i32 %202, i32 %203)
  %205 = load i32, i32* %8, align 4
  %206 = icmp eq i32 %205, 0
  %207 = zext i1 %206 to i32
  %208 = load i32, i32* %8, align 4
  %209 = call i32 (i32, i8*, i32, ...) @ok(i32 %207, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %208)
  store i32 -559038801, i32* %8, align 4
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 2
  %214 = load i32 (%struct.TYPE_16__*, i8*, i32, i32*)*, i32 (%struct.TYPE_16__*, i8*, i32, i32*)** %213, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %216 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %217 = call i32 %214(%struct.TYPE_16__* %215, i8* %216, i32 16, i32* %8)
  store i32 %217, i32* %5, align 4
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* @S_FALSE, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* %7, align 4
  %225 = call i32 (i32, i8*, i32, ...) @ok(i32 %221, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 %222, i32 %223, i32 %224)
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %7, align 4
  %228 = icmp eq i32 %226, %227
  %229 = zext i1 %228 to i32
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %8, align 4
  %232 = call i32 (i32, i8*, i32, ...) @ok(i32 %229, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %230, i32 %231)
  %233 = load i32, i32* %8, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %255

235:                                              ; preds = %173
  %236 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %237 = load i8, i8* %236, align 16
  %238 = zext i8 %237 to i32
  %239 = icmp eq i32 %238, 94
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = icmp eq i32 %243, 167
  br label %245

245:                                              ; preds = %240, %235
  %246 = phi i1 [ false, %235 ], [ %244, %240 ]
  %247 = zext i1 %246 to i32
  %248 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %249 = load i8, i8* %248, align 16
  %250 = zext i8 %249 to i32
  %251 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = call i32 (i32, i8*, i32, ...) @ok(i32 %247, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %250, i32 %253)
  br label %255

255:                                              ; preds = %245, %173
  %256 = call i32 @memset(%struct.TYPE_15__* %9, i32 255, i32 8)
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %258 = call i32 @IStream_Stat(%struct.TYPE_16__* %257, %struct.TYPE_15__* %9, i32 0)
  store i32 %258, i32* %5, align 4
  %259 = load i32, i32* %5, align 4
  %260 = load i32, i32* @S_OK, align 4
  %261 = icmp eq i32 %259, %260
  %262 = zext i1 %261 to i32
  %263 = load i32, i32* %5, align 4
  %264 = call i32 (i32, i8*, i32, ...) @ok(i32 %262, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %263)
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = icmp ne i32* %266, null
  %268 = zext i1 %267 to i32
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = call i32 @wine_dbgstr_w(i32* %270)
  %272 = call i32 (i32, i8*, i32, ...) @ok(i32 %268, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %271)
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 @CoTaskMemFree(i32* %274)
  %276 = call i32 @memset(%struct.TYPE_15__* %9, i32 255, i32 8)
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %278 = load i32, i32* @STATFLAG_NONAME, align 4
  %279 = call i32 @IStream_Stat(%struct.TYPE_16__* %277, %struct.TYPE_15__* %9, i32 %278)
  store i32 %279, i32* %5, align 4
  %280 = load i32, i32* %5, align 4
  %281 = load i32, i32* @S_OK, align 4
  %282 = icmp eq i32 %280, %281
  %283 = zext i1 %282 to i32
  %284 = load i32, i32* %5, align 4
  %285 = call i32 (i32, i8*, i32, ...) @ok(i32 %283, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %284)
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = icmp eq i32* %287, null
  %289 = zext i1 %288 to i32
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = call i32 @wine_dbgstr_w(i32* %291)
  %293 = call i32 (i32, i8*, i32, ...) @ok(i32 %289, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %292)
  br label %294

294:                                              ; preds = %255, %70
  ret void
}

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @IStream_Stat(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
