; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_crypt.c_test_context.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wintrust/extr_crypt.c_test_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@test_context.unknown = internal global %struct.TYPE_6__ { i32 -964056390, i32 36472, i32 4560, %struct.TYPE_5__ { i32 140, i32 71, i32 0, i32 192, i32 79, i32 194, i32 149, i32 238 } }, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Expected failure\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Expected ERROR_INVALID_PARAMETER, got %d\0A\00", align 1
@dummy = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ERROR_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"CryptCATAdminAcquireContext failed %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Not running as administrator\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Expected a context handle, got NULL\0A\00", align 1
@catroot = common dso_local global i32* null, align 8
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"Expected the CatRoot directory to exist\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\\{DEADBEEF-DEAD-BEEF-DEAD-BEEFDEADBEEF}\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"Expected CatRoot\\{DEADBEEF-DEAD-BEEF-DEAD-BEEFDEADBEEF} directory to exist\0A\00", align 1
@catroot2 = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [77 x i8] c"Expected CatRoot2\\{DEADBEEF-DEAD-BEEF-DEAD-BEEFDEADBEEF} directory to exist\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Expected success, got FALSE with %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [89 x i8] c"Expected FALSE and ERROR_INVALID_PARAMETER with untouched handle, got %d and %u with %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_context() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = call i32 @SetLastError(i32 -559038737)
  %12 = call i32 @pCryptCATAdminAcquireContext(i8** null, %struct.TYPE_6__* null, i32 0)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @GetLastError()
  %19 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 (...) @GetLastError()
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = call i32 @SetLastError(i32 -559038737)
  %25 = call i32 @pCryptCATAdminReleaseContext(i8* null, i32 0)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 (...) @GetLastError()
  %32 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = call i32 @SetLastError(i32 -559038737)
  %38 = call i32 @pCryptCATAdminAcquireContext(i8** null, %struct.TYPE_6__* @dummy, i32 0)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 (...) @GetLastError()
  %45 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = call i32 @pCryptCATAdminAcquireContext(i8** %2, %struct.TYPE_6__* @dummy, i32 0)
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* %1, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %0
  %54 = call i32 (...) @GetLastError()
  %55 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %56 = icmp eq i32 %54, %55
  br label %57

57:                                               ; preds = %53, %0
  %58 = phi i1 [ true, %0 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 (...) @GetLastError()
  %61 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %1, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = call i32 (...) @GetLastError()
  %66 = load i32, i32* @ERROR_ACCESS_DENIED, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @win_skip(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %170

70:                                               ; preds = %64, %57
  %71 = load i8*, i8** %2, align 8
  %72 = icmp ne i8* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32*, i32** @catroot, align 8
  %76 = call i64 @GetFileAttributesA(i32* %75)
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %79 = icmp ne i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32*, i32** @catroot, align 8
  %83 = call i32 @lstrcpyA(i32* %10, i32* %82)
  %84 = call i32 @lstrcatA(i32* %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %85 = call i64 @GetFileAttributesA(i32* %10)
  store i64 %85, i64* %5, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %88 = icmp ne i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0))
  %91 = load i32*, i32** @catroot2, align 8
  %92 = call i64 @GetFileAttributesA(i32* %91)
  store i64 %92, i64* %5, align 8
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %70
  %97 = load i32*, i32** @catroot2, align 8
  %98 = call i32 @lstrcpyA(i32* %10, i32* %97)
  %99 = call i32 @lstrcatA(i32* %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %100 = call i64 @GetFileAttributesA(i32* %10)
  store i64 %100, i64* %5, align 8
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %103 = icmp ne i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0))
  br label %106

106:                                              ; preds = %96, %70
  %107 = load i8*, i8** %2, align 8
  %108 = call i32 @pCryptCATAdminReleaseContext(i8* %107, i32 0)
  store i32 %108, i32* %1, align 4
  %109 = load i32, i32* %1, align 4
  %110 = call i32 (...) @GetLastError()
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %110)
  %112 = call i32 @pCryptCATAdminAcquireContext(i8** %2, %struct.TYPE_6__* @test_context.unknown, i32 0)
  store i32 %112, i32* %1, align 4
  %113 = load i32, i32* %1, align 4
  %114 = call i32 (...) @GetLastError()
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** %2, align 8
  %117 = icmp ne i8* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %120 = load i8*, i8** %2, align 8
  %121 = call i32 @pCryptCATAdminReleaseContext(i8* %120, i32 0)
  store i32 %121, i32* %1, align 4
  %122 = load i32, i32* %1, align 4
  %123 = call i32 (...) @GetLastError()
  %124 = call i32 (i32, i8*, ...) @ok(i32 %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %123)
  store i8* inttoptr (i64 3735928559 to i8*), i8** %2, align 8
  %125 = call i32 @SetLastError(i32 -559038737)
  %126 = call i32 @pCryptCATAdminAcquireContext(i8** %2, %struct.TYPE_6__* @test_context.unknown, i32 1)
  store i32 %126, i32* %1, align 4
  %127 = load i32, i32* %1, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %106
  %130 = call i32 (...) @GetLastError()
  %131 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i8*, i8** %2, align 8
  %135 = icmp eq i8* %134, inttoptr (i64 3735928559 to i8*)
  br i1 %135, label %150, label %136

136:                                              ; preds = %133, %129, %106
  %137 = load i32, i32* %1, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i8*, i8** %2, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i8*, i8** %2, align 8
  %144 = icmp ne i8* %143, inttoptr (i64 3735928559 to i8*)
  br label %145

145:                                              ; preds = %142, %139, %136
  %146 = phi i1 [ false, %139 ], [ false, %136 ], [ %144, %142 ]
  %147 = zext i1 %146 to i32
  %148 = call i64 @broken(i32 %147)
  %149 = icmp ne i64 %148, 0
  br label %150

150:                                              ; preds = %145, %133
  %151 = phi i1 [ true, %133 ], [ %149, %145 ]
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %1, align 4
  %154 = call i32 (...) @GetLastError()
  %155 = load i8*, i8** %2, align 8
  %156 = call i32 (i32, i8*, ...) @ok(i32 %152, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.10, i64 0, i64 0), i32 %153, i32 %154, i8* %155)
  %157 = load i32, i32* %1, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %150
  %160 = load i8*, i8** %2, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = call i32 @SetLastError(i32 -559038737)
  %164 = load i8*, i8** %2, align 8
  %165 = call i32 @pCryptCATAdminReleaseContext(i8* %164, i32 0)
  store i32 %165, i32* %1, align 4
  %166 = load i32, i32* %1, align 4
  %167 = call i32 (...) @GetLastError()
  %168 = call i32 (i32, i8*, ...) @ok(i32 %166, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %162, %159, %150
  store i32 0, i32* %6, align 4
  br label %170

170:                                              ; preds = %169, %68
  %171 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %6, align 4
  switch i32 %172, label %174 [
    i32 0, label %173
    i32 1, label %173
  ]

173:                                              ; preds = %170, %170
  ret void

174:                                              ; preds = %170
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @pCryptCATAdminAcquireContext(i8**, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @pCryptCATAdminReleaseContext(i8*, i32) #2

declare dso_local i32 @win_skip(i8*) #2

declare dso_local i64 @GetFileAttributesA(i32*) #2

declare dso_local i32 @lstrcpyA(i32*, i32*) #2

declare dso_local i32 @lstrcatA(i32*, i8*) #2

declare dso_local i64 @broken(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
