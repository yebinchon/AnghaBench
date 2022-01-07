; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_GetIconInfo.c_Test_GetIconInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_GetIconInfo.c_Test_GetIconInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32*, i32* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"should fail\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"should not fail\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"GetObject failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_GetIconInfo(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = call i64 @CreateIconIndirect(%struct.TYPE_6__* %6)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %20 = call i8* @CreateBitmap(i32 8, i32 16, i32 1, i32 1, i32* null)
  %21 = bitcast i8* %20 to i32*
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i32* %21, i32** %22, align 8
  %23 = call i64 @CreateIconIndirect(%struct.TYPE_6__* %6)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @GetIconInfo(i64 %28, %struct.TYPE_6__* %7)
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %32, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 4
  %44 = zext i1 %43 to i32
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 4
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %70

55:                                               ; preds = %2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %55, %40
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %77, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  %86 = zext i1 %85 to i32
  %87 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @DeleteObject(i32* %89)
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @GetIconInfo(i64 %91, %struct.TYPE_6__* %7)
  %93 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %95, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i64, i64* %3, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %70
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 4
  %107 = zext i1 %106 to i32
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 4
  %114 = zext i1 %113 to i32
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  br label %133

118:                                              ; preds = %70
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %118, %103
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  %137 = zext i1 %136 to i32
  %138 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %140, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %147, null
  %149 = zext i1 %148 to i32
  %150 = call i32 (i32, i8*, ...) @ok(i32 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @DeleteObject(i32* %152)
  %154 = load i64, i64* %5, align 8
  %155 = call i32 @DestroyIcon(i64 %154)
  %156 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %157 = call i8* @CreateBitmap(i32 2, i32 2, i32 1, i32 1, i32* null)
  %158 = bitcast i8* %157 to i32*
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32* %158, i32** %159, align 8
  %160 = call i64 @CreateIconIndirect(%struct.TYPE_6__* %6)
  store i64 %160, i64* %5, align 8
  %161 = load i64, i64* %5, align 8
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %165 = load i64, i64* %5, align 8
  %166 = call i32 @GetIconInfo(i64 %165, %struct.TYPE_6__* %7)
  %167 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %169, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 (i32, i8*, ...) @ok(i32 %173, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %175 = load i64, i64* %3, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %133
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 4
  %181 = zext i1 %180 to i32
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 (i32, i8*, ...) @ok(i32 %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 8
  %188 = zext i1 %187 to i32
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i32, i8*, ...) @ok(i32 %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %190)
  br label %207

192:                                              ; preds = %133
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 0
  %196 = zext i1 %195 to i32
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (i32, i8*, ...) @ok(i32 %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 0
  %203 = zext i1 %202 to i32
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %192, %177
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = icmp ne i32* %209, null
  %211 = zext i1 %210 to i32
  %212 = call i32 (i32, i8*, ...) @ok(i32 %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %214, %216
  %218 = zext i1 %217 to i32
  %219 = call i32 (i32, i8*, ...) @ok(i32 %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  %223 = zext i1 %222 to i32
  %224 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = icmp ne i32* %226, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 (i32, i8*, ...) @ok(i32 %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @GetObject(i32* %233, i32 40, %struct.TYPE_7__* %8)
  %235 = call i32 (i32, i8*, ...) @ok(i32 %234, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %237, 0
  %239 = zext i1 %238 to i32
  %240 = call i32 (i32, i8*, ...) @ok(i32 %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 8
  %244 = zext i1 %243 to i32
  %245 = call i32 (i32, i8*, ...) @ok(i32 %244, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 16
  %249 = zext i1 %248 to i32
  %250 = call i32 (i32, i8*, ...) @ok(i32 %249, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 2
  %254 = zext i1 %253 to i32
  %255 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 1
  %259 = zext i1 %258 to i32
  %260 = call i32 (i32, i8*, ...) @ok(i32 %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = icmp eq i32 %262, 1
  %264 = zext i1 %263 to i32
  %265 = call i32 (i32, i8*, ...) @ok(i32 %264, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  %267 = load i32*, i32** %266, align 8
  %268 = icmp eq i32* %267, null
  %269 = zext i1 %268 to i32
  %270 = call i32 (i32, i8*, ...) @ok(i32 %269, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @GetObject(i32* %272, i32 40, %struct.TYPE_7__* %8)
  %274 = call i32 (i32, i8*, ...) @ok(i32 %273, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %276, 0
  %278 = zext i1 %277 to i32
  %279 = call i32 (i32, i8*, ...) @ok(i32 %278, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = icmp eq i32 %281, 8
  %283 = zext i1 %282 to i32
  %284 = call i32 (i32, i8*, ...) @ok(i32 %283, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %286, 16
  %288 = zext i1 %287 to i32
  %289 = call i32 (i32, i8*, ...) @ok(i32 %288, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  %293 = load i32, i32* %292, align 8
  %294 = mul nsw i32 8, %293
  %295 = sdiv i32 %294, 8
  %296 = icmp eq i32 %291, %295
  %297 = zext i1 %296 to i32
  %298 = call i32 (i32, i8*, ...) @ok(i32 %297, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %300 = load i32, i32* %299, align 4
  %301 = icmp eq i32 %300, 1
  %302 = zext i1 %301 to i32
  %303 = call i32 (i32, i8*, ...) @ok(i32 %302, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %4, align 4
  %307 = icmp eq i32 %305, %306
  %308 = zext i1 %307 to i32
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  %310 = load i32, i32* %309, align 8
  %311 = call i32 (i32, i8*, ...) @ok(i32 %308, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %310)
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  %313 = load i32*, i32** %312, align 8
  %314 = icmp eq i32* %313, null
  %315 = zext i1 %314 to i32
  %316 = call i32 (i32, i8*, ...) @ok(i32 %315, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %318 = load i32*, i32** %317, align 8
  %319 = call i32 @DeleteObject(i32* %318)
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %321 = load i32*, i32** %320, align 8
  %322 = call i32 @DeleteObject(i32* %321)
  %323 = load i64, i64* %5, align 8
  %324 = call i32 @DestroyIcon(i64 %323)
  %325 = call i32 (i32, i8*, ...) @ok(i32 %324, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %327 = load i32*, i32** %326, align 8
  %328 = call i32 @DeleteObject(i32* %327)
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i32* null, i32** %329, align 8
  %330 = call i64 @CreateIconIndirect(%struct.TYPE_6__* %6)
  store i64 %330, i64* %5, align 8
  %331 = load i64, i64* %5, align 8
  %332 = icmp eq i64 %331, 0
  %333 = zext i1 %332 to i32
  %334 = call i32 (i32, i8*, ...) @ok(i32 %333, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %336 = load i32*, i32** %335, align 8
  %337 = call i32 @DeleteObject(i32* %336)
  %338 = call i32 @GetDC(i32 0)
  %339 = call i8* @CreateCompatibleBitmap(i32 %338, i32 16, i32 16)
  %340 = bitcast i8* %339 to i32*
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32* %340, i32** %341, align 8
  %342 = call i64 @CreateIconIndirect(%struct.TYPE_6__* %6)
  store i64 %342, i64* %5, align 8
  %343 = load i64, i64* %5, align 8
  %344 = icmp eq i64 %343, 0
  %345 = zext i1 %344 to i32
  %346 = call i32 (i32, i8*, ...) @ok(i32 %345, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %347 = call i32 @GetDC(i32 0)
  %348 = call i8* @CreateCompatibleBitmap(i32 %347, i32 8, i32 16)
  %349 = bitcast i8* %348 to i32*
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i32* %349, i32** %350, align 8
  %351 = call i64 @CreateIconIndirect(%struct.TYPE_6__* %6)
  store i64 %351, i64* %5, align 8
  %352 = load i64, i64* %5, align 8
  %353 = icmp ne i64 %352, 0
  %354 = zext i1 %353 to i32
  %355 = call i32 (i32, i8*, ...) @ok(i32 %354, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %356 = load i64, i64* %5, align 8
  %357 = call i32 @GetIconInfo(i64 %356, %struct.TYPE_6__* %7)
  %358 = call i32 (i32, i8*, ...) @ok(i32 %357, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %360 = load i32*, i32** %359, align 8
  %361 = call i32 @GetObject(i32* %360, i32 40, %struct.TYPE_7__* %8)
  %362 = call i32 (i32, i8*, ...) @ok(i32 %361, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = icmp eq i64 %364, 0
  %366 = zext i1 %365 to i32
  %367 = call i32 (i32, i8*, ...) @ok(i32 %366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = icmp eq i32 %369, 8
  %371 = zext i1 %370 to i32
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %373 = load i32, i32* %372, align 8
  %374 = call i32 (i32, i8*, ...) @ok(i32 %371, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %373)
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = icmp eq i32 %376, 16
  %378 = zext i1 %377 to i32
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = call i32 (i32, i8*, ...) @ok(i32 %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %380)
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = icmp eq i32 %383, 2
  %385 = zext i1 %384 to i32
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %387 = load i32, i32* %386, align 8
  %388 = call i32 (i32, i8*, ...) @ok(i32 %385, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %387)
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %390, 1
  %392 = zext i1 %391 to i32
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %394 = load i32, i32* %393, align 4
  %395 = call i32 (i32, i8*, ...) @ok(i32 %392, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %394)
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  %397 = load i32, i32* %396, align 8
  %398 = icmp eq i32 %397, 1
  %399 = zext i1 %398 to i32
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  %401 = load i32, i32* %400, align 8
  %402 = call i32 (i32, i8*, ...) @ok(i32 %399, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %401)
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  %404 = load i32*, i32** %403, align 8
  %405 = icmp eq i32* %404, null
  %406 = zext i1 %405 to i32
  %407 = call i32 (i32, i8*, ...) @ok(i32 %406, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %409 = load i32*, i32** %408, align 8
  %410 = call i32 @GetObject(i32* %409, i32 40, %struct.TYPE_7__* %8)
  %411 = call i32 (i32, i8*, ...) @ok(i32 %410, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = icmp eq i64 %413, 0
  %415 = zext i1 %414 to i32
  %416 = call i32 (i32, i8*, ...) @ok(i32 %415, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = icmp eq i32 %418, 8
  %420 = zext i1 %419 to i32
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %422 = load i32, i32* %421, align 8
  %423 = call i32 (i32, i8*, ...) @ok(i32 %420, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %422)
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %425 = load i32, i32* %424, align 4
  %426 = icmp eq i32 %425, 16
  %427 = zext i1 %426 to i32
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %429 = load i32, i32* %428, align 4
  %430 = call i32 (i32, i8*, ...) @ok(i32 %427, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %429)
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %432 = load i32, i32* %431, align 8
  %433 = load i32, i32* %4, align 4
  %434 = icmp eq i32 %432, %433
  %435 = zext i1 %434 to i32
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %437 = load i32, i32* %436, align 8
  %438 = call i32 (i32, i8*, ...) @ok(i32 %435, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %437)
  %439 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %440 = load i32, i32* %439, align 4
  %441 = icmp eq i32 %440, 1
  %442 = zext i1 %441 to i32
  %443 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %444 = load i32, i32* %443, align 4
  %445 = call i32 (i32, i8*, ...) @ok(i32 %442, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %444)
  %446 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* %4, align 4
  %449 = icmp eq i32 %447, %448
  %450 = zext i1 %449 to i32
  %451 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  %452 = load i32, i32* %451, align 8
  %453 = call i32 (i32, i8*, ...) @ok(i32 %450, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %452)
  %454 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 6
  %455 = load i32*, i32** %454, align 8
  %456 = icmp eq i32* %455, null
  %457 = zext i1 %456 to i32
  %458 = call i32 (i32, i8*, ...) @ok(i32 %457, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %460 = load i32*, i32** %459, align 8
  %461 = call i32 @DeleteObject(i32* %460)
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %463 = load i32*, i32** %462, align 8
  %464 = call i32 @DeleteObject(i32* %463)
  %465 = load i64, i64* %5, align 8
  %466 = call i32 @DestroyIcon(i64 %465)
  %467 = call i32 (i32, i8*, ...) @ok(i32 %466, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i64 @CreateIconIndirect(%struct.TYPE_6__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GetIconInfo(i64, %struct.TYPE_6__*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @DestroyIcon(i64) #1

declare dso_local i32 @GetObject(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i8* @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
