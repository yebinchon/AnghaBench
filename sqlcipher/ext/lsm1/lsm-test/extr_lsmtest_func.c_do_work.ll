; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_func.c_do_work.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_func.c_do_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Option = type { i8* }
%struct.Option.0 = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"-nmerge\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-nkb\00", align 1
@__const.do_work.aOpt = private unnamed_addr constant [3 x %struct.Option] [%struct.Option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0) }, %struct.Option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0) }, %struct.Option zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@LSM_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"lsm_open(): rc=%d\0A\00", align 1
@LSM_CONFIG_BLOCK_SIZE = common dso_local global i32 0, align 4
@LSM_CONFIG_AUTOCHECKPOINT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"lsm_work(): rc=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"?-optimize? ?-n N? DATABASE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_work(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [3 x %struct.Option], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = bitcast [3 x %struct.Option]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([3 x %struct.Option]* @__const.do_work.aOpt to i8*), i64 24, i1 false)
  store i32 1, i32* %11, align 4
  store i32 1073741824, i32* %12, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %130

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %77, %19
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %80

31:                                               ; preds = %26
  %32 = getelementptr inbounds [3 x %struct.Option], [3 x %struct.Option]* %6, i64 0, i64 0
  %33 = bitcast %struct.Option* %32 to %struct.Option.0*
  %34 = load i8**, i8*** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @testArgSelect(%struct.Option.0* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %38, i32* %13)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %132

44:                                               ; preds = %31
  %45 = load i32, i32* %13, align 4
  switch i32 %45, label %76 [
    i32 0, label %46
    i32 1, label %61
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %130

54:                                               ; preds = %46
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @atoi(i8* %59)
  store i32 %60, i32* %11, align 4
  br label %76

61:                                               ; preds = %44
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %130

69:                                               ; preds = %61
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @atoi(i8* %74)
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %44, %69, %54
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %26

80:                                               ; preds = %26
  %81 = call i32 @lsm_new(i32 0, i32** %7)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @LSM_OK, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @testPrintError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  br label %119

88:                                               ; preds = %80
  %89 = load i32*, i32** %7, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @lsm_open(i32* %89, i8* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @LSM_OK, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @testPrintError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %118

98:                                               ; preds = %88
  store i32 -1, i32* %14, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* @LSM_CONFIG_BLOCK_SIZE, align 4
  %101 = call i32 @lsm_config(i32* %99, i32 %100, i32* %14)
  %102 = load i32, i32* %14, align 4
  %103 = mul nsw i32 %102, 2
  store i32 %103, i32* %14, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* @LSM_CONFIG_AUTOCHECKPOINT, align 4
  %106 = call i32 @lsm_config(i32* %104, i32 %105, i32* %14)
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @lsm_work(i32* %107, i32 %108, i32 %109, i32 0)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @LSM_OK, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %98
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @testPrintError(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %114, %98
  br label %118

118:                                              ; preds = %117, %95
  br label %119

119:                                              ; preds = %118, %85
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @LSM_OK, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @lsm_checkpoint(i32* %124, i32 0)
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %123, %119
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @lsm_close(i32* %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %132

130:                                              ; preds = %68, %53, %18
  %131 = call i32 @testPrintUsage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %126, %42
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @testArgSelect(%struct.Option.0*, i8*, i8*, i32*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @lsm_new(i32, i32**) #2

declare dso_local i32 @testPrintError(i8*, i32) #2

declare dso_local i32 @lsm_open(i32*, i8*) #2

declare dso_local i32 @lsm_config(i32*, i32, i32*) #2

declare dso_local i32 @lsm_work(i32*, i32, i32, i32) #2

declare dso_local i32 @lsm_checkpoint(i32*, i32) #2

declare dso_local i32 @lsm_close(i32*) #2

declare dso_local i32 @testPrintUsage(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
