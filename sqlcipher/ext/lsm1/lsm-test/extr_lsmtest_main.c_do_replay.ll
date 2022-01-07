; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_do_replay.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_main.c_do_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i8*, i32, i32**)*, i32 (i32*)*, i32 (i32*, i32, i8*, i32)*, i32 (i32*)* }

@.str = private unnamed_addr constant [29 x i8] c"Usage: replay WRITELOG FILE\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LSM_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"sync db\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"write db %d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_replay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_replay(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [80 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %8, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @testPrintError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %123

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32*, i32** @stdin, align 8
  store i32* %29, i32** %7, align 8
  br label %35

30:                                               ; preds = %22
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %34, i32** %7, align 8
  store i32* %34, i32** %8, align 8
  br label %35

35:                                               ; preds = %30, %28
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %9, align 8
  %39 = call %struct.TYPE_4__* (...) @tdb_lsm_env()
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %10, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_4__*, i8*, i32, i32**)*, i32 (%struct.TYPE_4__*, i8*, i32, i32**)** %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 %42(%struct.TYPE_4__* %43, i8* %44, i32 0, i32** %11)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @LSM_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %3, align 4
  br label %123

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %109, %51
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @feof(i32* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %110

56:                                               ; preds = %52
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @fgets(i8* %57, i32 79, i32* %58)
  %60 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 79
  store i8 0, i8* %60, align 1
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %62 = call i64 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %61, i32 7)
  %63 = icmp eq i64 0, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32 (i32*)*, i32 (i32*)** %66, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 %67(i32* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %110

73:                                               ; preds = %64
  br label %109

74:                                               ; preds = %56
  %75 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %76 = call i32 @sscanf(i8* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %14, i32* %15)
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %108

79:                                               ; preds = %74
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %102, %79
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %80
  %85 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %86 = load i32, i32* %17, align 4
  %87 = and i32 %86, 255
  %88 = call i32 @memset(i8* %85, i32 %87, i32 4096)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32 (i32*, i32, i8*, i32)*, i32 (i32*, i32, i8*, i32)** %90, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %93, %94
  %96 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %97 = call i32 %91(i32* %92, i32 %95, i8* %96, i32 4096)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  br label %107

101:                                              ; preds = %84
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, 4096
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %17, align 4
  br label %80

107:                                              ; preds = %100, %80
  br label %108

108:                                              ; preds = %107, %74
  br label %109

109:                                              ; preds = %108, %73
  br label %52

110:                                              ; preds = %72, %52
  %111 = load i32*, i32** %8, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @fclose(i32* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i32 (i32*)*, i32 (i32*)** %118, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = call i32 %119(i32* %120)
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %116, %49, %20
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @testPrintError(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @tdb_lsm_env(...) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
