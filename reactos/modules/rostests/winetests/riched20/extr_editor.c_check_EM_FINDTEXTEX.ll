; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_check_EM_FINDTEXTEX.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/riched20/extr_editor.c_check_EM_FINDTEXTEX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.find_s = type { i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EM_FINDTEXTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, start at %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"EM_FINDTEXTEX(%s,%d) '%s' in range(%d,%d), flags %08x, end at %d, expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, %struct.find_s*, i32, i64)* @check_EM_FINDTEXTEX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_EM_FINDTEXTEX(i32 %0, i8* %1, %struct.find_s* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.find_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.find_s* %2, %struct.find_s** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %135

17:                                               ; preds = %5
  %18 = call i32 @memset(%struct.TYPE_8__* %13, i32 0, i32 24)
  %19 = load %struct.find_s*, %struct.find_s** %8, align 8
  %20 = getelementptr inbounds %struct.find_s, %struct.find_s* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.find_s*, %struct.find_s** %8, align 8
  %25 = getelementptr inbounds %struct.find_s, %struct.find_s* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.find_s*, %struct.find_s** %8, align 8
  %30 = getelementptr inbounds %struct.find_s, %struct.find_s* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @atowstr(i64 %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @EM_FINDTEXTEX, align 4
  %36 = load %struct.find_s*, %struct.find_s** %8, align 8
  %37 = getelementptr inbounds %struct.find_s, %struct.find_s* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = ptrtoint %struct.TYPE_8__* %13 to i32
  %40 = call i32 @SendMessageA(i32 %34, i32 %35, i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.find_s*, %struct.find_s** %8, align 8
  %43 = getelementptr inbounds %struct.find_s, %struct.find_s* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %41, %44
  %46 = zext i1 %45 to i32
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.find_s*, %struct.find_s** %8, align 8
  %50 = getelementptr inbounds %struct.find_s, %struct.find_s* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.find_s*, %struct.find_s** %8, align 8
  %53 = getelementptr inbounds %struct.find_s, %struct.find_s* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.find_s*, %struct.find_s** %8, align 8
  %56 = getelementptr inbounds %struct.find_s, %struct.find_s* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.find_s*, %struct.find_s** %8, align 8
  %59 = getelementptr inbounds %struct.find_s, %struct.find_s* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (i32, i8*, i8*, i32, i64, i32, i32, i32, i32, ...) @ok(i32 %46, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %47, i32 %48, i64 %51, i32 %54, i32 %57, i32 %60, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.find_s*, %struct.find_s** %8, align 8
  %67 = getelementptr inbounds %struct.find_s, %struct.find_s* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %65, %68
  %70 = zext i1 %69 to i32
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.find_s*, %struct.find_s** %8, align 8
  %74 = getelementptr inbounds %struct.find_s, %struct.find_s* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.find_s*, %struct.find_s** %8, align 8
  %77 = getelementptr inbounds %struct.find_s, %struct.find_s* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.find_s*, %struct.find_s** %8, align 8
  %80 = getelementptr inbounds %struct.find_s, %struct.find_s* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.find_s*, %struct.find_s** %8, align 8
  %83 = getelementptr inbounds %struct.find_s, %struct.find_s* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, i8*, i8*, i32, i64, i32, i32, i32, i32, ...) @ok(i32 %70, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %72, i64 %75, i32 %78, i32 %81, i32 %84, i32 %87)
  %89 = load %struct.find_s*, %struct.find_s** %8, align 8
  %90 = getelementptr inbounds %struct.find_s, %struct.find_s* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %17
  br label %103

94:                                               ; preds = %17
  %95 = load %struct.find_s*, %struct.find_s** %8, align 8
  %96 = getelementptr inbounds %struct.find_s, %struct.find_s* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.find_s*, %struct.find_s** %8, align 8
  %99 = getelementptr inbounds %struct.find_s, %struct.find_s* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @strlen(i64 %100)
  %102 = add nsw i32 %97, %101
  br label %103

103:                                              ; preds = %94, %93
  %104 = phi i32 [ -1, %93 ], [ %102, %94 ]
  store i32 %104, i32* %12, align 4
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.find_s*, %struct.find_s** %8, align 8
  %114 = getelementptr inbounds %struct.find_s, %struct.find_s* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.find_s*, %struct.find_s** %8, align 8
  %117 = getelementptr inbounds %struct.find_s, %struct.find_s* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.find_s*, %struct.find_s** %8, align 8
  %120 = getelementptr inbounds %struct.find_s, %struct.find_s* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.find_s*, %struct.find_s** %8, align 8
  %123 = getelementptr inbounds %struct.find_s, %struct.find_s* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 (i32, i8*, i8*, i32, i64, i32, i32, i32, i32, ...) @ok(i32 %110, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i8* %111, i32 %112, i64 %115, i32 %118, i32 %121, i32 %124, i32 %127, i32 %128)
  %130 = call i32 (...) @GetProcessHeap()
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 @HeapFree(i32 %130, i32 0, i8* %133)
  br label %247

135:                                              ; preds = %5
  %136 = call i32 @memset(%struct.TYPE_8__* %14, i32 0, i32 24)
  %137 = load %struct.find_s*, %struct.find_s** %8, align 8
  %138 = getelementptr inbounds %struct.find_s, %struct.find_s* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.find_s*, %struct.find_s** %8, align 8
  %143 = getelementptr inbounds %struct.find_s, %struct.find_s* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.find_s*, %struct.find_s** %8, align 8
  %148 = getelementptr inbounds %struct.find_s, %struct.find_s* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i64 %149, i64* %150, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @EM_FINDTEXTEX, align 4
  %153 = load %struct.find_s*, %struct.find_s** %8, align 8
  %154 = getelementptr inbounds %struct.find_s, %struct.find_s* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = ptrtoint %struct.TYPE_8__* %14 to i32
  %157 = call i32 @SendMessageA(i32 %151, i32 %152, i32 %155, i32 %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.find_s*, %struct.find_s** %8, align 8
  %160 = getelementptr inbounds %struct.find_s, %struct.find_s* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %158, %161
  %163 = zext i1 %162 to i32
  %164 = load i8*, i8** %7, align 8
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.find_s*, %struct.find_s** %8, align 8
  %167 = getelementptr inbounds %struct.find_s, %struct.find_s* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.find_s*, %struct.find_s** %8, align 8
  %170 = getelementptr inbounds %struct.find_s, %struct.find_s* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.find_s*, %struct.find_s** %8, align 8
  %173 = getelementptr inbounds %struct.find_s, %struct.find_s* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.find_s*, %struct.find_s** %8, align 8
  %176 = getelementptr inbounds %struct.find_s, %struct.find_s* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %11, align 4
  %179 = call i32 (i32, i8*, i8*, i32, i64, i32, i32, i32, i32, ...) @ok(i32 %163, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %164, i32 %165, i64 %168, i32 %171, i32 %174, i32 %177, i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.find_s*, %struct.find_s** %8, align 8
  %184 = getelementptr inbounds %struct.find_s, %struct.find_s* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %182, %185
  %187 = zext i1 %186 to i32
  %188 = load i8*, i8** %7, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.find_s*, %struct.find_s** %8, align 8
  %191 = getelementptr inbounds %struct.find_s, %struct.find_s* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.find_s*, %struct.find_s** %8, align 8
  %194 = getelementptr inbounds %struct.find_s, %struct.find_s* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.find_s*, %struct.find_s** %8, align 8
  %197 = getelementptr inbounds %struct.find_s, %struct.find_s* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.find_s*, %struct.find_s** %8, align 8
  %200 = getelementptr inbounds %struct.find_s, %struct.find_s* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i32, i8*, i8*, i32, i64, i32, i32, i32, i32, ...) @ok(i32 %187, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %188, i32 %189, i64 %192, i32 %195, i32 %198, i32 %201, i32 %204)
  %206 = load %struct.find_s*, %struct.find_s** %8, align 8
  %207 = getelementptr inbounds %struct.find_s, %struct.find_s* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, -1
  br i1 %209, label %210, label %211

210:                                              ; preds = %135
  br label %220

211:                                              ; preds = %135
  %212 = load %struct.find_s*, %struct.find_s** %8, align 8
  %213 = getelementptr inbounds %struct.find_s, %struct.find_s* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.find_s*, %struct.find_s** %8, align 8
  %216 = getelementptr inbounds %struct.find_s, %struct.find_s* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @strlen(i64 %217)
  %219 = add nsw i32 %214, %218
  br label %220

220:                                              ; preds = %211, %210
  %221 = phi i32 [ -1, %210 ], [ %219, %211 ]
  store i32 %221, i32* %12, align 4
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %12, align 4
  %226 = icmp eq i32 %224, %225
  %227 = zext i1 %226 to i32
  %228 = load i8*, i8** %7, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load %struct.find_s*, %struct.find_s** %8, align 8
  %231 = getelementptr inbounds %struct.find_s, %struct.find_s* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.find_s*, %struct.find_s** %8, align 8
  %234 = getelementptr inbounds %struct.find_s, %struct.find_s* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.find_s*, %struct.find_s** %8, align 8
  %237 = getelementptr inbounds %struct.find_s, %struct.find_s* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.find_s*, %struct.find_s** %8, align 8
  %240 = getelementptr inbounds %struct.find_s, %struct.find_s* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %12, align 4
  %246 = call i32 (i32, i8*, i8*, i32, i64, i32, i32, i32, i32, ...) @ok(i32 %227, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i8* %228, i32 %229, i64 %232, i32 %235, i32 %238, i32 %241, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %220, %103
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @atowstr(i64) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*, i32, i64, i32, i32, i32, i32, ...) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
