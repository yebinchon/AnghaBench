; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_test_acquire_context.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_crypt.c_test_acquire_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NTE_BAD_PROV_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@NON_DEF_PROV_TYPE = common dso_local global i32 0, align 4
@NTE_PROV_TYPE_NOT_DEF = common dso_local global i64 0, align 8
@szKeySet = common dso_local global i32* null, align 8
@szNonExistentProv = common dso_local global i8* null, align 8
@PROV_RSA_FULL = common dso_local global i32 0, align 4
@NTE_KEYSET_NOT_DEF = common dso_local global i64 0, align 8
@szRsaBaseProv = common dso_local global i8* null, align 8
@NTE_PROV_TYPE_NO_MATCH = common dso_local global i64 0, align 8
@ERROR_ENVVAR_NOT_FOUND = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_RING2_STACK_IN_USE = common dso_local global i64 0, align 8
@NTE_FAIL = common dso_local global i64 0, align 8
@ERROR_NOT_LOGGED_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%d/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_acquire_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_acquire_context() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i64 @pCryptAcquireContextA(i64* %2, i32* null, i8* null, i32 0, i32 0)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = call i64 (...) @GetLastError()
  %9 = load i64, i64* @NTE_BAD_PROV_TYPE, align 8
  %10 = icmp eq i64 %8, %9
  br label %11

11:                                               ; preds = %7, %0
  %12 = phi i1 [ false, %0 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 (...) @GetLastError()
  %15 = call i32 (i32, i8*, i64, ...) @ok(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = call i64 @pCryptAcquireContextA(i64* %2, i32* null, i8* null, i32 1000, i32 0)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %11
  %20 = call i64 (...) @GetLastError()
  %21 = load i64, i64* @NTE_BAD_PROV_TYPE, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %11
  %24 = phi i1 [ false, %11 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 (...) @GetLastError()
  %27 = call i32 (i32, i8*, i64, ...) @ok(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @NON_DEF_PROV_TYPE, align 4
  %29 = call i64 @pCryptAcquireContextA(i64* %2, i32* null, i8* null, i32 %28, i32 0)
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* %1, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = call i64 (...) @GetLastError()
  %34 = load i64, i64* @NTE_PROV_TYPE_NOT_DEF, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %23
  %37 = phi i1 [ false, %23 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 (...) @GetLastError()
  %40 = call i32 (i32, i8*, i64, ...) @ok(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** @szKeySet, align 8
  %42 = load i8*, i8** @szNonExistentProv, align 8
  %43 = load i32, i32* @PROV_RSA_FULL, align 4
  %44 = call i64 @pCryptAcquireContextA(i64* %2, i32* %41, i8* %42, i32 %43, i32 0)
  store i64 %44, i64* %1, align 8
  %45 = load i64, i64* %1, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %36
  %48 = call i64 (...) @GetLastError()
  %49 = load i64, i64* @NTE_KEYSET_NOT_DEF, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %47, %36
  %52 = phi i1 [ false, %36 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i64 (...) @GetLastError()
  %55 = call i32 (i32, i8*, i64, ...) @ok(i32 %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load i32*, i32** @szKeySet, align 8
  %57 = load i8*, i8** @szRsaBaseProv, align 8
  %58 = load i32, i32* @NON_DEF_PROV_TYPE, align 4
  %59 = call i64 @pCryptAcquireContextA(i64* %2, i32* %56, i8* %57, i32 %58, i32 0)
  store i64 %59, i64* %1, align 8
  %60 = load i64, i64* %1, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %51
  %63 = call i64 (...) @GetLastError()
  %64 = load i64, i64* @NTE_PROV_TYPE_NO_MATCH, align 8
  %65 = icmp eq i64 %63, %64
  br label %66

66:                                               ; preds = %62, %51
  %67 = phi i1 [ false, %51 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  %69 = call i64 (...) @GetLastError()
  %70 = call i32 (i32, i8*, i64, ...) @ok(i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %69)
  store i64 0, i64* %2, align 8
  %71 = call i32 @SetLastError(i32 -559038737)
  %72 = load i32*, i32** @szKeySet, align 8
  %73 = load i8*, i8** @szRsaBaseProv, align 8
  %74 = load i32, i32* @PROV_RSA_FULL, align 4
  %75 = call i64 @pCryptAcquireContextA(i64* %2, i32* %72, i8* %73, i32 %74, i32 0)
  store i64 %75, i64* %1, align 8
  %76 = call i64 (...) @GetLastError()
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %1, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %66
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* @ERROR_ENVVAR_NOT_FOUND, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %99, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %3, align 8
  %85 = load i64, i64* @ERROR_SUCCESS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %99, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %3, align 8
  %89 = load i64, i64* @ERROR_RING2_STACK_IN_USE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %3, align 8
  %93 = load i64, i64* @NTE_FAIL, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %3, align 8
  %97 = load i64, i64* @ERROR_NOT_LOGGED_ON, align 8
  %98 = icmp eq i64 %96, %97
  br label %99

99:                                               ; preds = %95, %91, %87, %83, %79
  %100 = phi i1 [ true, %91 ], [ true, %87 ], [ true, %83 ], [ true, %79 ], [ %98, %95 ]
  br label %101

101:                                              ; preds = %99, %66
  %102 = phi i1 [ false, %66 ], [ %100, %99 ]
  %103 = zext i1 %102 to i32
  %104 = load i64, i64* %1, align 8
  %105 = load i64, i64* %3, align 8
  %106 = call i32 (i32, i8*, i64, ...) @ok(i32 %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %104, i64 %105)
  %107 = load i64, i64* %2, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i64, i64* %2, align 8
  %111 = call i32 @pCryptReleaseContext(i64 %110, i32 0)
  br label %112

112:                                              ; preds = %109, %101
  store i64 0, i64* %2, align 8
  %113 = call i32 @SetLastError(i32 -559038737)
  %114 = load i32*, i32** @szKeySet, align 8
  %115 = load i32, i32* @PROV_RSA_FULL, align 4
  %116 = call i64 @pCryptAcquireContextA(i64* %2, i32* %114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 0)
  store i64 %116, i64* %1, align 8
  %117 = call i64 (...) @GetLastError()
  store i64 %117, i64* %3, align 8
  %118 = load i64, i64* %1, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %112
  %121 = load i64, i64* %3, align 8
  %122 = load i64, i64* @ERROR_ENVVAR_NOT_FOUND, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %140, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %3, align 8
  %126 = load i64, i64* @ERROR_SUCCESS, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %140, label %128

128:                                              ; preds = %124
  %129 = load i64, i64* %3, align 8
  %130 = load i64, i64* @ERROR_RING2_STACK_IN_USE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load i64, i64* %3, align 8
  %134 = load i64, i64* @NTE_FAIL, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* %3, align 8
  %138 = load i64, i64* @ERROR_NOT_LOGGED_ON, align 8
  %139 = icmp eq i64 %137, %138
  br label %140

140:                                              ; preds = %136, %132, %128, %124, %120
  %141 = phi i1 [ true, %132 ], [ true, %128 ], [ true, %124 ], [ true, %120 ], [ %139, %136 ]
  br label %142

142:                                              ; preds = %140, %112
  %143 = phi i1 [ false, %112 ], [ %141, %140 ]
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %1, align 8
  %146 = call i64 (...) @GetLastError()
  %147 = call i32 (i32, i8*, i64, ...) @ok(i32 %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %145, i64 %146)
  %148 = load i64, i64* %2, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i64, i64* %2, align 8
  %152 = call i32 @pCryptReleaseContext(i64 %151, i32 0)
  br label %153

153:                                              ; preds = %150, %142
  ret void
}

declare dso_local i64 @pCryptAcquireContextA(i64*, i32*, i8*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pCryptReleaseContext(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
