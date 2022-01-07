; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest5.c_do_test_mt1.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest5.c_do_test_mt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@__const.do_test_mt1.aTest = private unnamed_addr constant [4 x %struct.TYPE_7__] [%struct.TYPE_7__ { i32 10, i32 4, i32 0, i32 0, i32 10000, i32 0, i32 0, i8* null, i32 0, %struct.TYPE_6__ zeroinitializer, i32 0, %struct.TYPE_5__ zeroinitializer }, %struct.TYPE_7__ { i32 10, i32 4, i32 4, i32 2, i32 100000, i32 0, i32 0, i8* null, i32 0, %struct.TYPE_6__ zeroinitializer, i32 0, %struct.TYPE_5__ zeroinitializer }, %struct.TYPE_7__ { i32 10, i32 4, i32 0, i32 0, i32 10000, i32 0, i32 0, i8* null, i32 0, %struct.TYPE_6__ zeroinitializer, i32 0, %struct.TYPE_5__ zeroinitializer }, %struct.TYPE_7__ { i32 10, i32 4, i32 4, i32 2, i32 100000, i32 0, i32 0, i8* null, i32 0, %struct.TYPE_6__ zeroinitializer, i32 0, %struct.TYPE_5__ zeroinitializer }], align 16
@.str = private unnamed_addr constant [46 x i8] c"mt1.%s.db=%d,%d.ms=%d.rdwr=%d.fast=%d.slow=%d\00", align 1
@mt1Main = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"  Info: thread %d (%d): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*)* @do_test_mt1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test_mt1(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x %struct.TYPE_7__], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = bitcast [4 x %struct.TYPE_7__]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([4 x %struct.TYPE_7__]* @__const.do_test_mt1.aTest to i8*), i64 256, i1 false)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %154, %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %7, i64 0, i64 0
  %24 = call i32 @ArraySize(%struct.TYPE_7__* %23)
  %25 = icmp slt i32 %22, %24
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i1 [ false, %17 ], [ %25, %21 ]
  br i1 %27, label %28, label %157

28:                                               ; preds = %26
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x %struct.TYPE_7__], [4 x %struct.TYPE_7__]* %7, i64 0, i64 %30
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %9, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 9
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @testCaseBegin(i32* %32, i8* %33, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %38, i32 %42, i32 %45, i32 %48, i32 %51, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %153

58:                                               ; preds = %28
  %59 = load i8*, i8** %4, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32* @testOpen(i8* %62, i32 1, i32* %63)
  store i32* %64, i32** %11, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %71, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32* @testThreadInit(i32 %76)
  store i32* %77, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %95, %58
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %83, %84
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i1 [ false, %78 ], [ %85, %82 ]
  br i1 %87, label %88, label %98

88:                                               ; preds = %86
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @mt1Main, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %93 = bitcast %struct.TYPE_7__* %92 to i8*
  %94 = call i32 @testThreadLaunch(i32* %89, i32 %90, i32 %91, i8* %93)
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %78

98:                                               ; preds = %86
  %99 = load i32*, i32** %12, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @testThreadWait(i32* %99, i32 %102)
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %119, %98
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp slt i32 %109, %110
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i1 [ false, %104 ], [ %111, %108 ]
  br i1 %113, label %114, label %122

114:                                              ; preds = %112
  %115 = load i32*, i32** %12, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @testThreadGetResult(i32* %115, i32 %116, i8** null)
  %118 = load i32*, i32** %6, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %104

122:                                              ; preds = %112
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @testCaseFinish(i32 %124)
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %146, %122
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp slt i32 %131, %132
  br label %134

134:                                              ; preds = %130, %126
  %135 = phi i1 [ false, %126 ], [ %133, %130 ]
  br i1 %135, label %136, label %149

136:                                              ; preds = %134
  store i8* null, i8** %15, align 8
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @testThreadGetResult(i32* %137, i32 %138, i8** %15)
  %140 = load i32*, i32** %6, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i8*, i8** %15, align 8
  %145 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 %143, i8* %144)
  br label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %126

149:                                              ; preds = %134
  %150 = load i32*, i32** %12, align 8
  %151 = call i32 @testThreadShutdown(i32* %150)
  %152 = call i32 @testClose(i32** %11)
  br label %153

153:                                              ; preds = %149, %28
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %17

157:                                              ; preds = %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ArraySize(%struct.TYPE_7__*) #2

declare dso_local i32 @testCaseBegin(i32*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32* @testOpen(i8*, i32, i32*) #2

declare dso_local i32* @testThreadInit(i32) #2

declare dso_local i32 @testThreadLaunch(i32*, i32, i32, i8*) #2

declare dso_local i32 @testThreadWait(i32*, i32) #2

declare dso_local i32 @testThreadGetResult(i32*, i32, i8**) #2

declare dso_local i32 @testCaseFinish(i32) #2

declare dso_local i32 @printf(i8*, i32, i32, i8*) #2

declare dso_local i32 @testThreadShutdown(i32*) #2

declare dso_local i32 @testClose(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
