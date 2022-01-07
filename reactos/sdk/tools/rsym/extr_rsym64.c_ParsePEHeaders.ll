; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_ParsePEHeaders.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_ParsePEHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i8*, i32, i32, i32*, i32, %struct.TYPE_8__, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32, %struct.TYPE_12__*, i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }

@IMAGE_DOS_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Input file is not a PE image.\0A\00", align 1
@IMAGE_FILE_MACHINE_AMD64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Input file is not an x64 image.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Input file has incorrect PE checksum: 0x%lx (calculated: 0x%lx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"No symbol table.\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c".eh_frame\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParsePEHeaders(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_12__*
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 14
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %18, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 14
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IMAGE_DOS_MAGIC, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 14
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26, %1
  %34 = call i32 @perror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %417

35:                                               ; preds = %26
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 14
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %39, %44
  %46 = add i64 %45, 4
  %47 = inttoptr i64 %46 to %struct.TYPE_11__*
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 12
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 12
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IMAGE_FILE_MACHINE_AMD64, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %35
  %58 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %417

59:                                               ; preds = %35
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 12
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 1
  %64 = bitcast %struct.TYPE_11__* %63 to %struct.TYPE_10__*
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 11
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %66, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 11
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %4, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 11
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 15
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @CalculateChecksum(i32 0, i32 %78, i64 %81)
  store i32 %82, i32* %5, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 15
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = and i32 %90, 65535
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, 65535
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %59
  %96 = load i32, i32* @stderr, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %59
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 11
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = bitcast %struct.TYPE_10__* %103 to i8*
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 12
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %104, i64 %110
  %112 = bitcast i8* %111 to %struct.TYPE_9__*
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 10
  store %struct.TYPE_9__* %112, %struct.TYPE_9__** %114, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 14
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 4
  %121 = add i64 %120, 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 12
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = add i64 %121, %127
  %129 = trunc i64 %128 to i32
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 12
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %100
  %139 = load i32, i32* @stderr, align 4
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %417

141:                                              ; preds = %100
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 11
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 13
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 12
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %151, %156
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 12
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = mul nsw i32 %169, 18
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %164, i64 %171
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 3
  store i8* %172, i8** %174, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 12
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 11
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %6, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 2
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 4
  %193 = trunc i64 %192 to i32
  %194 = call i8* @malloc(i32 %193)
  %195 = bitcast i8* %194 to %struct.TYPE_9__*
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 9
  store %struct.TYPE_9__* %195, %struct.TYPE_9__** %197, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 5
  store i32 0, i32* %199, align 4
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  store i32 -1, i32* %202, align 8
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call i8* @malloc(i32 %205)
  %207 = bitcast i8* %206 to i32*
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 6
  store i32* %207, i32** %209, align 8
  store i32 0, i32* %8, align 4
  br label %210

210:                                              ; preds = %298, %141
  %211 = load i32, i32* %8, align 4
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %301

216:                                              ; preds = %210
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 10
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = inttoptr i64 %224 to i8*
  store i8* %225, i8** %10, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 6
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 1, i32* %231, align 4
  %232 = load i8*, i8** %10, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 0
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 47
  br i1 %236, label %237, label %252

237:                                              ; preds = %216
  %238 = load i8*, i8** %10, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 1
  %240 = call i64 @strtoul(i8* %239, i32 0, i32 10)
  store i64 %240, i64* %11, align 8
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 3
  %243 = load i8*, i8** %242, align 8
  %244 = load i64, i64* %11, align 8
  %245 = getelementptr inbounds i8, i8* %243, i64 %244
  store i8* %245, i8** %10, align 8
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 6
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32 0, i32* %251, align 4
  br label %252

252:                                              ; preds = %237, %216
  %253 = load i8*, i8** %10, align 8
  %254 = call i64 @strcmp(i8* %253, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %283

256:                                              ; preds = %252
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 10
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i64 %261
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 2
  store %struct.TYPE_9__* %262, %struct.TYPE_9__** %265, align 8
  %266 = load i32, i32* %8, align 4
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  store i32 %266, i32* %269, align 8
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = add nsw i32 %272, %278
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  store i32 %279, i32* %282, align 4
  br label %283

283:                                              ; preds = %256, %252
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 6
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %8, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %283
  %293 = load i32, i32* %8, align 4
  %294 = add nsw i32 %293, 1
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i32 0, i32 5
  store i32 %294, i32* %296, align 4
  br label %297

297:                                              ; preds = %292, %283
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %8, align 4
  br label %210

301:                                              ; preds = %210
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, 2
  %306 = sext i32 %305 to i64
  %307 = mul i64 %306, 4
  %308 = trunc i64 %307 to i32
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 7
  store i32 %308, i32* %310, align 8
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 7
  %316 = load i32, i32* %315, align 8
  %317 = add nsw i32 %313, %316
  store i32 %317, i32* %7, align 4
  %318 = load i32, i32* %7, align 4
  %319 = load i32, i32* %6, align 4
  %320 = call i32 @ROUND_UP(i32 %318, i32 %319)
  store i32 %320, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %321

321:                                              ; preds = %406, %301
  %322 = load i32, i32* %8, align 4
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = icmp slt i32 %322, %325
  br i1 %326, label %327, label %409

327:                                              ; preds = %321
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 9
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %329, align 8
  %331 = load i32, i32* %9, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i64 %332
  %334 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 10
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %335, align 8
  %337 = load i32, i32* %8, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i64 %338
  %340 = bitcast %struct.TYPE_9__* %333 to i8*
  %341 = bitcast %struct.TYPE_9__* %339 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %340, i8* align 8 %341, i64 24, i1 false)
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %342, i32 0, i32 6
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %8, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %372

350:                                              ; preds = %327
  %351 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i32 0, i32 9
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %352, align 8
  %354 = load i32, i32* %9, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  store i32 0, i32* %357, align 8
  %358 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 9
  %360 = load %struct.TYPE_9__*, %struct.TYPE_9__** %359, align 8
  %361 = load i32, i32* %9, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 1
  store i32 0, i32* %364, align 4
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 9
  %367 = load %struct.TYPE_9__*, %struct.TYPE_9__** %366, align 8
  %368 = load i32, i32* %9, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 2
  store i32 -1068498816, i32* %371, align 8
  br label %372

372:                                              ; preds = %350, %327
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 9
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %374, align 8
  %376 = load i32, i32* %9, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %372
  %383 = load i32, i32* %7, align 4
  br label %385

384:                                              ; preds = %372
  br label %385

385:                                              ; preds = %384, %382
  %386 = phi i32 [ %383, %382 ], [ 0, %384 ]
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 9
  %389 = load %struct.TYPE_9__*, %struct.TYPE_9__** %388, align 8
  %390 = load i32, i32* %9, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 0
  store i32 %386, i32* %393, align 8
  %394 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 9
  %396 = load %struct.TYPE_9__*, %struct.TYPE_9__** %395, align 8
  %397 = load i32, i32* %9, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i64 %398
  %400 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* %7, align 4
  %403 = add nsw i32 %402, %401
  store i32 %403, i32* %7, align 4
  %404 = load i32, i32* %9, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %9, align 4
  br label %406

406:                                              ; preds = %385
  %407 = load i32, i32* %8, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %8, align 4
  br label %321

409:                                              ; preds = %321
  %410 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 8
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = icmp eq i32 %413, -1
  br i1 %414, label %415, label %416

415:                                              ; preds = %409
  store i32 0, i32* %2, align 4
  br label %417

416:                                              ; preds = %409
  store i32 1, i32* %2, align 4
  br label %417

417:                                              ; preds = %416, %415, %138, %57, %33
  %418 = load i32, i32* %2, align 4
  ret i32 %418
}

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @CalculateChecksum(i32, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @strtoul(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ROUND_UP(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
