; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task.c_test_SetApplicationName_GetApplicationName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task.c_test_SetApplicationName_GetApplicationName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SetApplicationName_GetApplicationName.non_application_name = private unnamed_addr constant [18 x i8] c"NoSuchApplication\00", align 16
@__const.test_SetApplicationName_GetApplicationName.notepad_exe = private unnamed_addr constant [12 x i8] c"notepad.exe\00", align 1
@__const.test_SetApplicationName_GetApplicationName.notepad = private unnamed_addr constant [8 x i8] c"notepad\00", align 1
@.str = private unnamed_addr constant [27 x i8] c"Failed to setup test_task\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to create task.  Skipping tests.\0A\00", align 1
@test_task = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"GetApplicationName failed: %08x\0A\00", align 1
@empty = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Got %s, expected empty string\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed setting name %s: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Got %s, expected %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetApplicationName_GetApplicationName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetApplicationName_GetApplicationName() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [18 x i8], align 16
  %6 = alloca [12 x i8], align 1
  %7 = alloca [8 x i8], align 1
  %8 = bitcast [18 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.test_SetApplicationName_GetApplicationName.non_application_name, i32 0, i32 0), i64 18, i1 false)
  %9 = bitcast [12 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.test_SetApplicationName_GetApplicationName.notepad_exe, i32 0, i32 0), i64 12, i1 false)
  %10 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_SetApplicationName_GetApplicationName.notepad, i32 0, i32 0), i64 8, i1 false)
  %11 = call i32 (...) @setup_task()
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %0
  %17 = call i32 @skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %243

18:                                               ; preds = %0
  %19 = load i32, i32* @test_task, align 4
  %20 = call i64 @ITask_GetApplicationName(i32 %19, i8** %3)
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %2, align 8
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %18
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** @empty, align 8
  %33 = call i64 @lstrcmpiW(i8* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @wine_dbgstr_w(i8* %37)
  %39 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @CoTaskMemFree(i8* %40)
  br label %42

42:                                               ; preds = %30, %18
  %43 = load i32, i32* @test_task, align 4
  %44 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 0
  %45 = call i64 @ITask_SetApplicationName(i32 %43, i8* %44)
  store i64 %45, i64* %2, align 8
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 0
  %51 = call i64 @wine_dbgstr_w(i8* %50)
  %52 = load i64, i64* %2, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load i32, i32* @test_task, align 4
  %55 = call i64 @ITask_GetApplicationName(i32 %54, i8** %3)
  store i64 %55, i64* %2, align 8
  %56 = load i64, i64* %2, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %2, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* %2, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %42
  %66 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 0
  %67 = call i8* @path_resolve_name(i8* %66)
  store i8* %67, i8** %4, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i64 @lstrcmpiW(i8* %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load i8*, i8** %3, align 8
  %75 = call i64 @wine_dbgstr_w(i8* %74)
  %76 = load i8*, i8** %4, align 8
  %77 = call i64 @wine_dbgstr_w(i8* %76)
  %78 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %75, i64 %77)
  %79 = load i8*, i8** %3, align 8
  %80 = call i32 @CoTaskMemFree(i8* %79)
  br label %81

81:                                               ; preds = %65, %42
  %82 = load i32, i32* @test_task, align 4
  %83 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %84 = call i64 @ITask_SetApplicationName(i32 %82, i8* %83)
  store i64 %84, i64* %2, align 8
  %85 = load i64, i64* %2, align 8
  %86 = load i64, i64* @S_OK, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %90 = call i64 @wine_dbgstr_w(i8* %89)
  %91 = load i64, i64* %2, align 8
  %92 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %90, i64 %91)
  %93 = load i32, i32* @test_task, align 4
  %94 = call i64 @ITask_GetApplicationName(i32 %93, i8** %3)
  store i64 %94, i64* %2, align 8
  %95 = load i64, i64* %2, align 8
  %96 = load i64, i64* @S_OK, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %2, align 8
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %99)
  %101 = load i64, i64* %2, align 8
  %102 = load i64, i64* @S_OK, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %81
  %105 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %106 = call i8* @path_resolve_name(i8* %105)
  store i8* %106, i8** %4, align 8
  %107 = load i8*, i8** %3, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = call i64 @lstrcmpiW(i8* %107, i8* %108)
  %110 = icmp ne i64 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = load i8*, i8** %3, align 8
  %114 = call i64 @wine_dbgstr_w(i8* %113)
  %115 = load i8*, i8** %4, align 8
  %116 = call i64 @wine_dbgstr_w(i8* %115)
  %117 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %114, i64 %116)
  %118 = load i8*, i8** %3, align 8
  %119 = call i32 @CoTaskMemFree(i8* %118)
  br label %120

120:                                              ; preds = %104, %81
  %121 = load i32, i32* @test_task, align 4
  %122 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %123 = call i64 @ITask_SetApplicationName(i32 %121, i8* %122)
  store i64 %123, i64* %2, align 8
  %124 = load i64, i64* %2, align 8
  %125 = load i64, i64* @S_OK, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %129 = call i64 @wine_dbgstr_w(i8* %128)
  %130 = load i64, i64* %2, align 8
  %131 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %129, i64 %130)
  %132 = load i32, i32* @test_task, align 4
  %133 = call i64 @ITask_GetApplicationName(i32 %132, i8** %3)
  store i64 %133, i64* %2, align 8
  %134 = load i64, i64* %2, align 8
  %135 = load i64, i64* @S_OK, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load i64, i64* %2, align 8
  %139 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %138)
  %140 = load i64, i64* %2, align 8
  %141 = load i64, i64* @S_OK, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %167

143:                                              ; preds = %120
  %144 = getelementptr inbounds [12 x i8], [12 x i8]* %6, i64 0, i64 0
  %145 = call i8* @path_resolve_name(i8* %144)
  store i8* %145, i8** %4, align 8
  %146 = load i8*, i8** %3, align 8
  %147 = load i8*, i8** %4, align 8
  %148 = call i64 @lstrcmpiW(i8* %146, i8* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %143
  %151 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %152 = call i8* @path_resolve_name(i8* %151)
  store i8* %152, i8** %4, align 8
  %153 = load i8*, i8** %3, align 8
  %154 = load i8*, i8** %4, align 8
  %155 = call i64 @lstrcmpiW(i8* %153, i8* %154)
  %156 = icmp ne i64 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = load i8*, i8** %3, align 8
  %160 = call i64 @wine_dbgstr_w(i8* %159)
  %161 = load i8*, i8** %4, align 8
  %162 = call i64 @wine_dbgstr_w(i8* %161)
  %163 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %160, i64 %162)
  br label %164

164:                                              ; preds = %150, %143
  %165 = load i8*, i8** %3, align 8
  %166 = call i32 @CoTaskMemFree(i8* %165)
  br label %167

167:                                              ; preds = %164, %120
  %168 = load i32, i32* @test_task, align 4
  %169 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 0
  %170 = call i64 @ITask_SetApplicationName(i32 %168, i8* %169)
  store i64 %170, i64* %2, align 8
  %171 = load i64, i64* %2, align 8
  %172 = load i64, i64* @S_OK, align 8
  %173 = icmp eq i64 %171, %172
  %174 = zext i1 %173 to i32
  %175 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 0
  %176 = call i64 @wine_dbgstr_w(i8* %175)
  %177 = load i64, i64* %2, align 8
  %178 = call i32 (i32, i8*, ...) @ok(i32 %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %176, i64 %177)
  %179 = load i32, i32* @test_task, align 4
  %180 = call i64 @ITask_GetApplicationName(i32 %179, i8** %3)
  store i64 %180, i64* %2, align 8
  %181 = load i64, i64* %2, align 8
  %182 = load i64, i64* @S_OK, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = load i64, i64* %2, align 8
  %186 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %185)
  %187 = load i64, i64* %2, align 8
  %188 = load i64, i64* @S_OK, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %206

190:                                              ; preds = %167
  %191 = getelementptr inbounds [18 x i8], [18 x i8]* %5, i64 0, i64 0
  %192 = call i8* @path_resolve_name(i8* %191)
  store i8* %192, i8** %4, align 8
  %193 = load i8*, i8** %3, align 8
  %194 = load i8*, i8** %4, align 8
  %195 = call i64 @lstrcmpiW(i8* %193, i8* %194)
  %196 = icmp ne i64 %195, 0
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = load i8*, i8** %3, align 8
  %200 = call i64 @wine_dbgstr_w(i8* %199)
  %201 = load i8*, i8** %4, align 8
  %202 = call i64 @wine_dbgstr_w(i8* %201)
  %203 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %200, i64 %202)
  %204 = load i8*, i8** %3, align 8
  %205 = call i32 @CoTaskMemFree(i8* %204)
  br label %206

206:                                              ; preds = %190, %167
  %207 = load i32, i32* @test_task, align 4
  %208 = load i8*, i8** @empty, align 8
  %209 = call i64 @ITask_SetApplicationName(i32 %207, i8* %208)
  store i64 %209, i64* %2, align 8
  %210 = load i64, i64* %2, align 8
  %211 = load i64, i64* @S_OK, align 8
  %212 = icmp eq i64 %210, %211
  %213 = zext i1 %212 to i32
  %214 = load i8*, i8** @empty, align 8
  %215 = call i64 @wine_dbgstr_w(i8* %214)
  %216 = load i64, i64* %2, align 8
  %217 = call i32 (i32, i8*, ...) @ok(i32 %213, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %215, i64 %216)
  %218 = load i32, i32* @test_task, align 4
  %219 = call i64 @ITask_GetApplicationName(i32 %218, i8** %3)
  store i64 %219, i64* %2, align 8
  %220 = load i64, i64* %2, align 8
  %221 = load i64, i64* @S_OK, align 8
  %222 = icmp eq i64 %220, %221
  %223 = zext i1 %222 to i32
  %224 = load i64, i64* %2, align 8
  %225 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %224)
  %226 = load i64, i64* %2, align 8
  %227 = load i64, i64* @S_OK, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %241

229:                                              ; preds = %206
  %230 = load i8*, i8** %3, align 8
  %231 = load i8*, i8** @empty, align 8
  %232 = call i64 @lstrcmpiW(i8* %230, i8* %231)
  %233 = icmp ne i64 %232, 0
  %234 = xor i1 %233, true
  %235 = zext i1 %234 to i32
  %236 = load i8*, i8** %3, align 8
  %237 = call i64 @wine_dbgstr_w(i8* %236)
  %238 = call i32 (i32, i8*, ...) @ok(i32 %235, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %237)
  %239 = load i8*, i8** %3, align 8
  %240 = call i32 @CoTaskMemFree(i8* %239)
  br label %241

241:                                              ; preds = %229, %206
  %242 = call i32 (...) @cleanup_task()
  br label %243

243:                                              ; preds = %241, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_task(...) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i64 @ITask_GetApplicationName(i32, i8**) #2

declare dso_local i64 @lstrcmpiW(i8*, i8*) #2

declare dso_local i64 @wine_dbgstr_w(i8*) #2

declare dso_local i32 @CoTaskMemFree(i8*) #2

declare dso_local i64 @ITask_SetApplicationName(i32, i8*) #2

declare dso_local i8* @path_resolve_name(i8*) #2

declare dso_local i32 @cleanup_task(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
