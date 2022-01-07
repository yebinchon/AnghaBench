; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetFullPathNameA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetFullPathNameA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32, i8*, i8** }
%struct.dbcs_case = type { i8*, i8* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"deadbeef\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"[%d] Expected GetFullPathNameA to return 0, got %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"[%d] Expected the output buffer to be unchanged, got \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"[%d] Expected output file part pointer to be untouched, got %p\0A\00", align 1
@ERROR_INVALID_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"[%d] Expected GetLastError() to return 0xdeadbeef, got %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"Skipping DBCS(Japanese) GetFullPathNameA test in this codepage (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"c:\\a\\\95\\\97\A0.txt\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"\95\\\97\A0.txt\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"c:\\\83\8F\83C\83\93\\wine.c\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"wine.c\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"c:\\demo\\\97\A0\95\\\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\97\A0\95\\\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"[%d] GetFullPathName error %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"[%d] expected %s got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetFullPathNameA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetFullPathNameA() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x %struct.anon], align 16
  %8 = alloca [3 x %struct.dbcs_case], align 16
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  %13 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* %7, i64 0, i64 0
  %14 = bitcast %struct.anon* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false)
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %13, i64 1
  %16 = bitcast %struct.anon* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 32, i1 false)
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  %18 = load i32, i32* @MAX_PATH, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %15, i64 1
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  store i8* null, i8** %20, align 16
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1
  %22 = load i32, i32* @MAX_PATH, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 2
  store i8* %12, i8** %23, align 16
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 3
  store i8** null, i8*** %24, align 8
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %19, i64 1
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0
  store i8* null, i8** %26, align 16
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  %28 = load i32, i32* @MAX_PATH, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 2
  store i8* %12, i8** %29, align 16
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 3
  store i8** %3, i8*** %30, align 8
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %25, i64 1
  %32 = bitcast %struct.anon* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 32, i1 false)
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %31, i64 1
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %35, align 16
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 1
  %37 = load i32, i32* @MAX_PATH, align 4
  store i32 %37, i32* %36, align 8
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 2
  store i8* null, i8** %38, align 16
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 3
  store i8** null, i8*** %39, align 8
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %34, i64 1
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %41, align 16
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 1
  %43 = load i32, i32* @MAX_PATH, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 2
  store i8* %12, i8** %44, align 16
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 3
  store i8** null, i8*** %45, align 8
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %40, i64 1
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %47, align 16
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 1
  %49 = load i32, i32* @MAX_PATH, align 4
  store i32 %49, i32* %48, align 8
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 2
  store i8* %12, i8** %50, align 16
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 3
  store i8** %3, i8*** %51, align 8
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %111, %0
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %54, 8
  br i1 %55, label %56, label %114

56:                                               ; preds = %52
  %57 = call i32 @SetLastError(i32 -559038737)
  %58 = call i32 @strcpy(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* inttoptr (i64 3735928559 to i8*), i8** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* %7, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 16
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* %7, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* %7, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 16
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x %struct.anon], [8 x %struct.anon]* %7, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 3
  %78 = load i8**, i8*** %77, align 8
  %79 = call i32 @GetFullPathNameA(i8* %63, i32 %68, i8* %73, i8** %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  %87 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (i32, i8*, i32, ...) @ok(i32 %90, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %91, i8* %12)
  %93 = load i8*, i8** %3, align 8
  %94 = icmp eq i8* %93, inttoptr (i64 3735928559 to i8*)
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %5, align 4
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 (i32, i8*, i32, ...) @ok(i32 %95, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %96, i8* %97)
  %99 = call i32 (...) @GetLastError()
  %100 = icmp eq i32 %99, -559038737
  br i1 %100, label %105, label %101

101:                                              ; preds = %56
  %102 = call i32 (...) @GetLastError()
  %103 = load i32, i32* @ERROR_INVALID_NAME, align 4
  %104 = icmp eq i32 %102, %103
  br label %105

105:                                              ; preds = %101, %56
  %106 = phi i1 [ true, %56 ], [ %104, %101 ]
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (...) @GetLastError()
  %110 = call i32 (i32, i8*, i32, ...) @ok(i32 %107, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %52

114:                                              ; preds = %52
  %115 = call i32 (...) @GetACP()
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 932
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @skip(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  br label %171

121:                                              ; preds = %114
  %122 = bitcast [3 x %struct.dbcs_case]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %122, i8 0, i64 48, i1 false)
  %123 = bitcast i8* %122 to [3 x %struct.dbcs_case]*
  %124 = getelementptr inbounds [3 x %struct.dbcs_case], [3 x %struct.dbcs_case]* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.dbcs_case, %struct.dbcs_case* %124, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8** %125, align 16
  %126 = getelementptr inbounds %struct.dbcs_case, %struct.dbcs_case* %124, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8** %126, align 8
  %127 = getelementptr inbounds [3 x %struct.dbcs_case], [3 x %struct.dbcs_case]* %123, i32 0, i32 1
  %128 = getelementptr inbounds %struct.dbcs_case, %struct.dbcs_case* %127, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8** %128, align 16
  %129 = getelementptr inbounds %struct.dbcs_case, %struct.dbcs_case* %127, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8** %129, align 8
  %130 = getelementptr inbounds [3 x %struct.dbcs_case], [3 x %struct.dbcs_case]* %123, i32 0, i32 2
  %131 = getelementptr inbounds %struct.dbcs_case, %struct.dbcs_case* %130, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8** %131, align 16
  %132 = getelementptr inbounds %struct.dbcs_case, %struct.dbcs_case* %130, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8** %132, align 8
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %167, %121
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp ult i64 %135, 3
  br i1 %136, label %137, label %170

137:                                              ; preds = %133
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [3 x %struct.dbcs_case], [3 x %struct.dbcs_case]* %8, i64 0, i64 %139
  %141 = getelementptr inbounds %struct.dbcs_case, %struct.dbcs_case* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 16
  %143 = trunc i64 %10 to i32
  %144 = call i32 @GetFullPathNameA(i8* %142, i32 %143, i8* %12, i8** %3)
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %5, align 4
  %147 = call i32 (...) @GetLastError()
  %148 = call i32 (i32, i8*, i32, ...) @ok(i32 %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load i8*, i8** %3, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [3 x %struct.dbcs_case], [3 x %struct.dbcs_case]* %8, i64 0, i64 %151
  %153 = getelementptr inbounds %struct.dbcs_case, %struct.dbcs_case* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @lstrcmpA(i8* %149, i8* %154)
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [3 x %struct.dbcs_case], [3 x %struct.dbcs_case]* %8, i64 0, i64 %161
  %163 = getelementptr inbounds %struct.dbcs_case, %struct.dbcs_case* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = load i8*, i8** %3, align 8
  %166 = call i32 (i32, i8*, i32, ...) @ok(i32 %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %159, i8* %164, i8* %165)
  br label %167

167:                                              ; preds = %137
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %133

170:                                              ; preds = %133
  br label %171

171:                                              ; preds = %170, %118
  %172 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %172)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SetLastError(i32) #3

declare dso_local i32 @strcpy(i8*, i8*) #3

declare dso_local i32 @GetFullPathNameA(i8*, i32, i8*, i8**) #3

declare dso_local i32 @ok(i32, i8*, i32, ...) #3

declare dso_local i32 @strcmp(i8*, i8*) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i32 @GetACP(...) #3

declare dso_local i32 @skip(i8*, i32) #3

declare dso_local i32 @lstrcmpA(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
