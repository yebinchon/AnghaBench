; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlDosPathNameToNtPathName_U.c_InitDirComponents.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlDosPathNameToNtPathName_U.c_InitDirComponents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Expected curdir to be a drive letter. It's not\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Curdir is \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"CD is missing a slash as its third character\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"CD is \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\\\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @InitDirComponents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitDirComponents(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* null, i8** %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i8* null, i8** %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i8* null, i8** %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @GetCurrentDirectory(i32 8, i8* %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = icmp sge i32 %18, 2
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 58
  br label %28

28:                                               ; preds = %20, %1
  %29 = phi i1 [ false, %1 ], [ %27, %20 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @check_result(i32 %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %28
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 92
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @check_result(i32 %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %41
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %41
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcpy(i8* %63, i8* %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = icmp sgt i32 %71, 3
  br i1 %72, label %73, label %78

73:                                               ; preds = %60
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @strcat(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %73, %60
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @memcpy(i8* %81, i8* %84, i64 2)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 5
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8 0, i8* %89, align 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 5
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @sprintf(i32 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = call i8* @strrchr(i8* %99, i8 signext 92)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 6
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 6
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %254

107:                                              ; preds = %78
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 7
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 6
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  %119 = load i8*, i8** %118, align 8
  %120 = ptrtoint i8* %116 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = call i32 @memcpy(i8* %110, i8* %113, i64 %122)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 7
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 6
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = ptrtoint i8* %129 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = getelementptr inbounds i8, i8* %126, i64 %135
  store i8 0, i8* %136, align 1
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 7
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 7
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @strlen(i8* %144)
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %160

147:                                              ; preds = %107
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 7
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 58
  br i1 %154, label %155, label %160

155:                                              ; preds = %147
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 7
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @strcat(i8* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %160

160:                                              ; preds = %155, %147, %107
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 8
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 7
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @strcpy(i8* %163, i8* %166)
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 8
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 8
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @strlen(i8* %173)
  %175 = sub nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %170, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp ne i32 %179, 92
  br i1 %180, label %181, label %186

181:                                              ; preds = %160
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 8
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @strcat(i8* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %186

186:                                              ; preds = %181, %160
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 8
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  store i8* %189, i8** %191, align 8
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 6
  %194 = load i8*, i8** %193, align 8
  store i8 0, i8* %194, align 1
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = call i8* @strrchr(i8* %197, i8 signext 92)
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  store i8* %198, i8** %200, align 8
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 6
  %203 = load i8*, i8** %202, align 8
  store i8 92, i8* %203, align 1
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %253

208:                                              ; preds = %186
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %210, align 8
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 1
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 6
  %219 = load i8*, i8** %218, align 8
  %220 = icmp uge i8* %216, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %208
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  store i8* null, i8** %223, align 8
  br label %252

224:                                              ; preds = %208
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 6
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = ptrtoint i8* %227 to i64
  %232 = ptrtoint i8* %230 to i64
  %233 = sub i64 %231, %232
  store i64 %233, i64* %4, align 8
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 9
  %236 = load i8*, i8** %235, align 8
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load i64, i64* %4, align 8
  %241 = call i32 @memcpy(i8* %236, i8* %239, i64 %240)
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 9
  %244 = load i8*, i8** %243, align 8
  %245 = load i64, i64* %4, align 8
  %246 = getelementptr inbounds i8, i8* %244, i64 %245
  store i8 0, i8* %246, align 1
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 9
  %249 = load i8*, i8** %248, align 8
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 0
  store i8* %249, i8** %251, align 8
  br label %252

252:                                              ; preds = %224, %221
  br label %253

253:                                              ; preds = %252, %186
  br label %254

254:                                              ; preds = %253, %78
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 6
  %257 = load i8*, i8** %256, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %270

259:                                              ; preds = %254
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 6
  %262 = load i8*, i8** %261, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 1
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %259
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 6
  store i8* null, i8** %269, align 8
  br label %275

270:                                              ; preds = %259, %254
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 6
  %273 = load i8*, i8** %272, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %272, align 8
  br label %275

275:                                              ; preds = %270, %267
  ret void
}

declare dso_local i32 @GetCurrentDirectory(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @check_result(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
