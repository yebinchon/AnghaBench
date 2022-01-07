; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/appshim/extr_versionlie.c_run_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/appshim/extr_versionlie.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@CP_ACP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Skipping tests for layers (%s) not present in this os (0x%x)\0A\00", align 1
@g_WinVersion = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Expected hook to be a valid pointer for %s\0A\00", align 1
@FLAG_AlternateHookOrder = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Expected num_shims to be 3, was: %u for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"KERNEL32.DLL\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"GetVersion\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"GetVersionExA\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"GetVersionExW\00", align 1
@_WIN32_WINNT_WINXP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"Expected num_shims to be 4%s, was: %u for %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" or 3\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"NTDLL.DLL\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"RtlGetVersion\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [50 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = bitcast [50 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 200, i1 false)
  %13 = load i32, i32* @CP_ACP, align 4
  %14 = load i32, i32* %3, align 4
  %15 = getelementptr inbounds [50 x i32], [50 x i32]* %6, i64 0, i64 0
  %16 = call i32 @MultiByteToWideChar(i32 %13, i32 0, i32 %14, i32 -1, i32* %15, i32 50)
  %17 = getelementptr inbounds [50 x i32], [50 x i32]* %6, i64 0, i64 0
  %18 = call i32* @pGetHookAPIs(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %17, i32* %5)
  store i32* %18, i32** %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @g_WinVersion, align 4
  %32 = call i32 @skip(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  br label %164

33:                                               ; preds = %2
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FLAG_AlternateHookOrder, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %89

45:                                               ; preds = %33
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 3
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %88

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %88

57:                                               ; preds = %54
  store i32 0, i32* %9, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @expect_shim(i32* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %60, i32* %9)
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @verify_shim(i32* %63, %struct.TYPE_6__* %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @expect_shim(i32* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %70, i32* %9)
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @verify_shima(i32* %73, %struct.TYPE_6__* %74, i32 %75, i32 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @expect_shim(i32* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %80, i32* %9)
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @verify_shimw(i32* %83, %struct.TYPE_6__* %84, i32 %85, i32 %86, i32 0)
  br label %88

88:                                               ; preds = %57, %54, %45
  br label %164

89:                                               ; preds = %33
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 4
  br i1 %91, label %101, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @_WIN32_WINNT_WINXP, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 3
  br label %99

99:                                               ; preds = %96, %92
  %100 = phi i1 [ false, %92 ], [ %98, %96 ]
  br label %101

101:                                              ; preds = %99, %89
  %102 = phi i1 [ true, %89 ], [ %100, %99 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @_WIN32_WINNT_WINXP, align 4
  %107 = icmp slt i32 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %3, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i8* %109, i32 %110, i32 %111)
  %113 = load i32*, i32** %7, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %163

115:                                              ; preds = %101
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %163

118:                                              ; preds = %115
  store i32 0, i32* %11, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @expect_shim(i32* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %121, i32* %11)
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @verify_shima(i32* %124, %struct.TYPE_6__* %125, i32 %126, i32 %127)
  %129 = load i32*, i32** %7, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @expect_shim(i32* %130, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %131, i32* %11)
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @verify_shimw(i32* %134, %struct.TYPE_6__* %135, i32 %136, i32 %137, i32 0)
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @expect_shim(i32* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %141, i32* %11)
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @verify_shim(i32* %144, %struct.TYPE_6__* %145, i32 %146, i32 %147)
  %149 = load i32, i32* %5, align 4
  %150 = icmp eq i32 %149, 4
  br i1 %150, label %151, label %162

151:                                              ; preds = %118
  %152 = load i32*, i32** %7, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 3
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @expect_shim(i32* %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %154, i32* %11)
  %156 = load i32*, i32** %7, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @verify_shimw(i32* %157, %struct.TYPE_6__* %158, i32 %159, i32 %160, i32 1)
  br label %162

162:                                              ; preds = %151, %118
  br label %163

163:                                              ; preds = %162, %115, %101
  br label %164

164:                                              ; preds = %29, %163, %88
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32* @pGetHookAPIs(i8*, i32*, i32*) #2

declare dso_local i32 @skip(i8*, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @expect_shim(i32*, i8*, i8*, i32, i32*) #2

declare dso_local i32 @verify_shim(i32*, %struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @verify_shima(i32*, %struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @verify_shimw(i32*, %struct.TYPE_6__*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
