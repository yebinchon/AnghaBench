; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_execute.c_exec_context_done.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_execute.c_exec_context_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i64, i8*, i64, i64, %struct.TYPE_6__*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32, i32, i64, i32*, i64, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i8* }

@_EXEC_DIRECTORY_TYPE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_context_done(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = call i32 @assert(%struct.TYPE_7__* %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 38
  %9 = load i8*, i8** %8, align 8
  %10 = call i8* @strv_free(i8* %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 38
  store i8* %10, i8** %12, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 37
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @strv_free(i8* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 37
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 36
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @strv_free(i8* %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 36
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 35
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @strv_free(i8* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 35
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 34
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @rlimit_free_all(i32 %33)
  store i64 0, i64* %4, align 8
  br label %35

35:                                               ; preds = %63, %1
  %36 = load i64, i64* %4, align 8
  %37 = icmp ult i64 %36, 3
  br i1 %37, label %38, label %66

38:                                               ; preds = %35
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 33
  %41 = load i8**, i8*** %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @mfree(i8* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 33
  %48 = load i8**, i8*** %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  store i8* %45, i8** %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 32
  %53 = load i8**, i8*** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @mfree(i8* %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 32
  %60 = load i8**, i8*** %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  store i8* %57, i8** %62, align 8
  br label %63

63:                                               ; preds = %38
  %64 = load i64, i64* %4, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %4, align 8
  br label %35

66:                                               ; preds = %35
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 31
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @mfree(i8* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 31
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 30
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @mfree(i8* %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 30
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 29
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @mfree(i8* %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 29
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 28
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @mfree(i8* %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 28
  store i8* %88, i8** %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 27
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @mfree(i8* %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 27
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 26
  %99 = load i8*, i8** %98, align 8
  %100 = call i8* @mfree(i8* %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 26
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 25
  %105 = load i8*, i8** %104, align 8
  %106 = call i8* @mfree(i8* %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 25
  store i8* %106, i8** %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 24
  %111 = load i8*, i8** %110, align 8
  %112 = call i8* @strv_free(i8* %111)
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 24
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 23
  %117 = load i8*, i8** %116, align 8
  %118 = call i8* @mfree(i8* %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 23
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 22
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @strv_free(i8* %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 22
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 21
  %129 = load i8*, i8** %128, align 8
  %130 = call i8* @strv_free(i8* %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 21
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 20
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @strv_free(i8* %135)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 20
  store i8* %136, i8** %138, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 19
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 18
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @bind_mount_free_many(i32* %141, i64 %144)
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 19
  store i32* null, i32** %147, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 18
  store i64 0, i64* %149, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 17
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 16
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @temporary_filesystem_free_many(i32* %152, i64 %155)
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 17
  store i32* null, i32** %158, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 16
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 15
  %163 = call i32 @cpu_set_reset(i32* %162)
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 14
  %166 = call i32 @numa_policy_reset(i32* %165)
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 13
  %169 = load i8*, i8** %168, align 8
  %170 = call i8* @mfree(i8* %169)
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 13
  store i8* %170, i8** %172, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 12
  %175 = load i8*, i8** %174, align 8
  %176 = call i8* @mfree(i8* %175)
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 12
  store i8* %176, i8** %178, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 11
  %181 = load i8*, i8** %180, align 8
  %182 = call i8* @mfree(i8* %181)
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 11
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 10
  %187 = load i8*, i8** %186, align 8
  %188 = call i8* @mfree(i8* %187)
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 10
  store i8* %188, i8** %190, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 9
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @hashmap_free(i32 %193)
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 9
  store i32 %194, i32* %196, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 8
  %199 = load i8*, i8** %198, align 8
  %200 = call i8* @set_free(i8* %199)
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 8
  store i8* %200, i8** %202, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 7
  %205 = load i8*, i8** %204, align 8
  %206 = call i8* @set_free(i8* %205)
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 7
  store i8* %206, i8** %208, align 8
  store i64 0, i64* %3, align 8
  br label %209

209:                                              ; preds = %228, %66
  %210 = load i64, i64* %3, align 8
  %211 = load i64, i64* @_EXEC_DIRECTORY_TYPE_MAX, align 8
  %212 = icmp ult i64 %210, %211
  br i1 %212, label %213, label %231

213:                                              ; preds = %209
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 6
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = load i64, i64* %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = call i8* @strv_free(i8* %220)
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 6
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = load i64, i64* %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  store i8* %221, i8** %227, align 8
  br label %228

228:                                              ; preds = %213
  %229 = load i64, i64* %3, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %3, align 8
  br label %209

231:                                              ; preds = %209
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  store i32 -1, i32* %233, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %235 = call i32 @exec_context_free_log_extra_fields(%struct.TYPE_7__* %234)
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 5
  store i64 0, i64* %237, align 8
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 4
  store i64 0, i64* %239, align 8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 3
  %242 = load i8*, i8** %241, align 8
  %243 = call i8* @mfree(i8* %242)
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 3
  store i8* %243, i8** %245, align 8
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 2
  store i64 0, i64* %247, align 8
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = call i8* @mfree(i8* %250)
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 1
  store i8* %251, i8** %253, align 8
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i8* @strv_free(i8*) #1

declare dso_local i32 @rlimit_free_all(i32) #1

declare dso_local i8* @mfree(i8*) #1

declare dso_local i32 @bind_mount_free_many(i32*, i64) #1

declare dso_local i32 @temporary_filesystem_free_many(i32*, i64) #1

declare dso_local i32 @cpu_set_reset(i32*) #1

declare dso_local i32 @numa_policy_reset(i32*) #1

declare dso_local i32 @hashmap_free(i32) #1

declare dso_local i8* @set_free(i8*) #1

declare dso_local i32 @exec_context_free_log_extra_fields(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
